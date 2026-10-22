# Local avatars and local story publishing; retain stock editor validation/rendering.
import gg
import base64 as _q7_content_base64
import hashlib as _q7_content_hash
import traceback as _q7_content_traceback
import cutils.chelpers as _q7_content_helpers
import entity.avatar_members.CommonMember as _q7_content_common
import entity.avatar_members.ActivityMembers.StoryEditorMember as _q7_content_story
import storyline.com.utils as _q7_content_story_utils
import storyline.com.const as _q7_content_sl
import cocos.panels.city as _q7_content_city
import cocos.panels.editor_storylist as _q7_content_storylist


def _q7_story_constants():
    # Updated StoryEditorMember expects this list; the retained local const predates it.
    constants = _q7_content_story.const.StoryEditorConst
    if not hasattr(constants, 'BLACKLIST'):
        constants.BLACKLIST = ()


_q7_story_constants()


def _q7_upload_head(self, picked_img_path, callback=None):
    try:
        data = _q7_content_helpers.get_screen_file(picked_img_path)
        if not data or len(data) > 2 * 1024 * 1024:
            raise ValueError('image size')
        imgid = 'q7_' + _q7_content_hash.sha256(data).hexdigest()
        _q7_content_helpers.save_head_imgage_data(data, imgid + '.png')
        self.callServerMethod('setHeadImage', {'t': 2, 'hc': 0, 'imgid': imgid,
                              'q7Image': _q7_content_base64.b64encode(data)})
        if callback:
            callback()
    except Exception:
        gg.ui.panels.common_message.notify_message('Cannot read local avatar image (maximum 2 MB).')
    finally:
        gg.ui.unlock('uploadHeadImage')


def _q7_delete_head(self, callback):
    if callback:
        callback()


def _q7_check_head(self):
    if self.imgid.startswith('q7_'):
        self.imgid_statecheck = True
        self.callServerMethod('setImgState', {'ii': self.imgid, 's': 0})
        return
    return self._q7_content_original_check()


def _q7_story_upload(self, sid, sti, story_info):
    self._q7_content_story_summary = {
        'title64': _q7_content_base64.b64encode(_q7_story_text(
            story_info.get(_q7_content_sl.PropsName.STORY_TITLE, '')).encode('utf-8')).decode('ascii'),
        'image': story_info.get(_q7_content_sl.PropsName.STORY_COVER, 0),
        'desc64': _q7_content_base64.b64encode(_q7_story_text(
            story_info.get(_q7_content_sl.PropsName.STORY_DESC, '')).encode('utf-8')).decode('ascii')}
    try:
        return self._q7_content_original_upload(sid, sti, story_info)
    finally:
        self._q7_content_story_summary = None


def _q7_story_text(value):
    if isinstance(value, bytes):
        try:
            return value.decode('utf-8')
        except UnicodeDecodeError:
            return value.decode('gb18030')
    return value


def _q7_story_summary_fix(encoded):
    import bson
    row = bson.BSON(_q7_content_base64.b64decode(encoded)).decode()
    story = gg.avatar.decompress_story(row['body'])
    summary = row['summary']
    title = _q7_story_text(story.get(_q7_content_sl.PropsName.STORY_TITLE, ''))
    summary[_q7_content_sl.PropsName.STORY_TITLE] = title
    summary[_q7_content_sl.PropsName.STORY_COVER] = story.get(_q7_content_sl.PropsName.STORY_COVER, 0)
    summary[_q7_content_sl.PropsName.STORY_DESC] = _q7_story_text(
        story.get(_q7_content_sl.PropsName.STORY_DESC, ''))
    summary['title'] = title
    key = u'%d+%s' % (summary['sid'], title)
    gg.avatar._q7_content_published_ids.add(summary['sid'])
    data = gg.avatar.StoryEditorData
    tables = [data.hot_story, data.latest_story]
    if row['own']:
        tables.append(data.my_story)
    for table in tables:
        for old_key, old_summary in list(table.items()):
            if old_summary.get('sid') == summary['sid']:
                table.pop(old_key)
        table[key] = dict(summary)


def _q7_story_edit(self, sid, sti):
    key = u'%d+%s' % (sid, _q7_story_text(sti))
    memo = self.StoryEditorData.memo_cache.get(key)
    if sti and sid in self._q7_content_published_ids:
        has_content = bool(memo) and (any(memo.get(prop) for prop in (
            _q7_content_sl.PropsName.STORY_TITLE, _q7_content_sl.PropsName.STORY_COVER,
            _q7_content_sl.PropsName.STORY_DESC)) or any(memo.get('dad', [])))
        if not has_content:
            # A native post-upload teardown can autosave the reset, empty seven-day template.
            gg.ui.lock('findStoryData')
            return self.callServerMethod('findStoryData', {'sid': sid, 'sti': sti, 'ie': True})
    return self._q7_content_original_edit(sid, sti)


def _q7_story_refresh():
    panel = gg.ui.panels.editor_storylist
    data = gg.avatar.StoryEditorData
    gg.avatar._q7_content_published_ids.update(
        row['sid'] for row in data.my_story.values() if 'sid' in row)
    # Native on_init caches references; stock sync methods replace these dictionaries.
    if hasattr(panel, 'tab_text'):
        panel.tab_text = [(row[0], row[1], table) for row, table in zip(panel.tab_text,
                          (data.hot_story, data.latest_story, data.my_story))]
    if panel.valid:
        panel.refresh_panel()


def _q7_content_call(self, method, parameters, *args, **kwargs):
    if method in ('uploadStoryData', 'findStoryData', 'saveStoryMemo', 'delStoryData') and 'sti' in parameters:
        parameters = dict(parameters)
        parameters['q7Sti64'] = _q7_content_base64.b64encode(
            _q7_story_text(parameters['sti']).encode('utf-8')).decode('ascii')
    if method == 'uploadStoryData':
        parameters = dict(parameters)
        parameters['q7Summary'] = getattr(self, '_q7_content_story_summary', None) or {}
    return self._q7_content_original_call(method, parameters, *args, **kwargs)


def _q7_content_bind(cls, name, replacement, marker, original=None):
    if marker not in cls.__dict__:
        fn = original if original is not None else getattr(cls, name)
        fn = getattr(fn, 'im_func', getattr(fn, '__func__', fn))
        setattr(cls, marker, fn)
        setattr(cls, name, replacement)


def _q7_storylist_controls(self):
    # Visibility does not restore touch input or callbacks on a cached native widget.
    for path, callback in (('main.btn_writing', self.enter_editor),
                           ('main.btn_delete', self.delete_story),
                           ('main.btn_cancel', self.cancel_story)):
        node = self[path]
        node.setEnabled(True)
        node.setTouchEnabled(True)
        node.addTouchEventListener(callback)


def _q7_storylist_load(self):
    result = self._q7_content_original_storylist_load()
    _q7_storylist_controls(self)
    gg.avatar.callServerMethod('evalEcho', {'m': 'q7_story_editor_controls_v3'})
    return result


def _q7_storylist_show(self, *args, **kwargs):
    result = self._q7_content_original_storylist_show(*args, **kwargs)
    # Stock only hides these nodes: a cached panel never restores them after leveling.
    self['main.tab.tab_3'].setVisible(gg.avatar.level >= 30)
    self['main.btn_writing'].setVisible(True)
    _q7_storylist_controls(self)
    return result


def _q7_storylist_create(self, sender, event):
    if event != _q7_content_storylist.cc.ccui.TOUCH_EVENT_ENDED:
        return
    if gg.avatar.level < 30:
        gg.ui.panels.common_message.notify_message(
            u'\u4e03\u65e5\u5c0f\u5267\u573a\u521b\u4f5c\u9700\u8981\u6307\u6325\u4f7f\u7b49\u7ea730\u7ea7\uff08\u5f53\u524d%d\u7ea7\uff09' % gg.avatar.level)
        return
    gg.avatar.callServerMethod('evalEcho', {'m': 'q7_story_editor_create_begin_v3'})
    try:
        # Stock enter_editor's body is this dispatch. Its click guard is applied outside.
        return gg.avatar.editStoryData(gg.avatar.userid, '')
    except Exception:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_story_editor_create_failed_v3\n'
                                   + _q7_content_traceback.format_exc()[-2000:]})
        gg.ui.panels.common_message.notify_message(
            u'\u65e0\u6cd5\u6253\u5f00\u5267\u60c5\u7f16\u8f91\u5668\uff0c\u8bf7\u5728\u672c\u5730\u7ba1\u7406\u590d\u5236\u65e5\u5fd7')


_q7_storylist_guarded_create = _q7_content_storylist.ui_utils.checkMultiClick(_q7_storylist_create)


def _q7_storylist_touch(self, sender, event):
    if event in (_q7_content_storylist.cc.ccui.TOUCH_EVENT_BEGAN,
                 _q7_content_storylist.cc.ccui.TOUCH_EVENT_ENDED):
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_story_editor_touch_v3:%s:%s:%s' % (
            event, self.valid, getattr(getattr(gg, 'city', None), 'touch_id', -1))})
    # The native guard must see BEGIN/MOVE/END/CANCEL, not only the accepted END.
    return _q7_storylist_guarded_create(self, sender, event)


def _q7_city_entry(self):
    result = self._q7_content_original_entry()
    avatar = getattr(gg, 'avatar', None)
    if avatar is None or avatar.weeknumData.weeknum < 1:
        return result
    # The newer terminal's level-26 visibility gate hides already unlocked second-cycle modes.
    # Keep original per-mode day/level/hero locks inside city_mainentry.
    self.btn_zhongduan.setVisible(True)
    rows = (('bottom_right.btn_goodnight', 'bottom_right.btn_goodnight_shalou',
             'bottom_right.btn_rushui', 'bottom_right.btn_huisu'),
            ('bottom_right.card',), ('bottom_right.back_home', 'bottom_right.back_city'))
    for row, names in enumerate(rows, 1):
        for name in names:
            node = self[name]
            node.setPositionPercent(_q7_content_city.cc.cc.Vec2(
                _q7_content_city.Panel.POSITION_PERCENT_X[row][1], node.getPositionPercent().y))
    return result


# This utility belongs to storyline/editor only; do not modify com.utils or chat filters.
_q7_content_story_utils.check_ban_words = lambda text: True
_q7_content_bind(_q7_content_city.Panel, 'update_right_bottom_icon', _q7_city_entry,
                 '_q7_content_original_entry')
def _q7_storylist_bind(cls):
    _q7_content_bind(cls, 'notify_show', _q7_storylist_show,
                     '_q7_content_original_storylist_show')
    _q7_content_bind(cls, 'enter_editor', _q7_storylist_touch,
                     '_q7_content_original_storylist_create')
    _q7_content_bind(cls, 'on_load', _q7_storylist_load,
                     '_q7_content_original_storylist_load')


_q7_storylist_bind(_q7_content_storylist.Panel)
_q7_content_storylist_panel = gg.ui.panels.editor_storylist
_q7_storylist_bind(type(_q7_content_storylist_panel))
# on_init stores bound handlers; repair the existing instance as well as its class.
_q7_content_storylist_panel.event_handlers['show'] = _q7_content_storylist_panel.notify_show
if _q7_content_storylist_panel.valid:
    _q7_storylist_controls(_q7_content_storylist_panel)
if getattr(gg, 'avatar', None) is not None:
    _q7_content_cls = type(gg.avatar)
    gg.avatar._q7_content_published_ids = set()
    _q7_content_bind(_q7_content_cls, 'editStoryData', _q7_story_edit,
                     '_q7_content_original_edit', _q7_content_story.Member.editStoryData)
    _q7_content_bind(_q7_content_cls, 'uploadHeadImage', _q7_upload_head,
                     '_q7_content_original_head', _q7_content_common.Member.uploadHeadImage)
    _q7_content_bind(_q7_content_cls, 'delCurHeadImg', _q7_delete_head,
                     '_q7_content_original_delete', _q7_content_common.Member.delCurHeadImg)
    _q7_content_bind(_q7_content_cls, 'checkFpImgState', _q7_check_head,
                     '_q7_content_original_check', _q7_content_common.Member.checkFpImgState)
    _q7_content_bind(_q7_content_cls, 'uploadStoryData', _q7_story_upload,
                     '_q7_content_original_upload', _q7_content_story.Member.uploadStoryData)
    _q7_content_bind(_q7_content_cls, 'callServerMethod', _q7_content_call,
                     '_q7_content_original_call')
    gg.avatar.callServerMethod('evalEcho', {'m': 'q7_local_content_v5'})
    gg.avatar.callServerMethod('q7StoryList', {})
