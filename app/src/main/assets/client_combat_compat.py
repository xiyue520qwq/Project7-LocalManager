# The local transport exposes close(), while stock logout calls disconnect().
import gg

_q7_local_gate = getattr(gg.logic, 'gate_client', None)
if (_q7_local_gate is not None and type(_q7_local_gate).__name__ == 'LocalClient'
        and not hasattr(_q7_local_gate, 'disconnect') and hasattr(_q7_local_gate, 'close')):
    _q7_local_close = type(_q7_local_gate).close
    type(_q7_local_gate).disconnect = getattr(_q7_local_close, 'im_func', _q7_local_close)

gg.avatar.callServerMethod('evalEcho', {'m': 'q7_combat_cancel_compat_v1'})

# ---- q7 rpc probe: 把客户端实际调用的服务端方法名回报给本地网关（每个名字只报一次） ----
try:
    _q7p_cls = type(gg.avatar)
    if not getattr(_q7p_cls, '_q7p_probe_v1', False):
        _q7p_cls._q7p_probe_v1 = True
        _q7p_orig_call = _q7p_cls.callServerMethod
        _q7p_seen = set()

        def _q7p_call(self, method, *args, **kwargs):
            try:
                _q7p_name = str(method)
                if _q7p_name != 'evalEcho' and _q7p_name not in _q7p_seen:
                    _q7p_seen.add(_q7p_name)
                    _q7p_orig_call(self, 'evalEcho', {'m': 'q7rpc:' + _q7p_name})
            except Exception:
                pass
            return _q7p_orig_call(self, method, *args, **kwargs)

        _q7p_cls.callServerMethod = _q7p_call
        _q7p_orig_call(gg.avatar, 'evalEcho', {'m': 'q7rpc_probe_ready'})
except Exception:
    pass

# ---- 神器加点滑条兜底：缺 attr_name 时不再抛 AttributeError ----
try:
    import cocos.comps.hero_artifact_common.slider as _q7a_slider
    for _q7a_name in dir(_q7a_slider):
        try:
            _q7a_obj = getattr(_q7a_slider, _q7a_name)
        except Exception:
            continue
        if isinstance(_q7a_obj, type) and not hasattr(_q7a_obj, 'attr_name'):
            try:
                _q7a_obj.attr_name = ''
            except Exception:
                pass
except Exception:
    pass

# ---- 神器加点窗口兜底：attr_changed 不再抛 KeyError/AttributeError，避免面板崩掉 ----
try:
    import cocos.panels.hero_artifact_allot_window as _q7a_win
    for _q7a_cls_name in dir(_q7a_win):
        try:
            _q7a_cls = getattr(_q7a_win, _q7a_cls_name)
        except Exception:
            continue
        if not isinstance(_q7a_cls, type):
            continue
        for _q7a_m in ('attr_changed', 'on_attr_changed', 'click_plus', 'on_click_plus'):
            if not hasattr(_q7a_cls, _q7a_m):
                continue
            try:
                _q7a_fn = getattr(_q7a_cls, _q7a_m)
                if getattr(_q7a_fn, '_q7a_safe', False):
                    continue

                def _q7a_make(fn):
                    def _q7a_wrap(self, *a, **kw):
                        try:
                            return fn(self, *a, **kw)
                        except Exception:
                            return None
                    _q7a_wrap._q7a_safe = True
                    return _q7a_wrap

                setattr(_q7a_cls, _q7a_m, _q7a_make(_q7a_fn))
            except Exception:
                pass
except Exception:
    pass
