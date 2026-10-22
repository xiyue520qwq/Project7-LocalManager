package com.project7.localmanager;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.TimePickerDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;
import com.project7.localmanager.LocalCommerceCatalog;
import com.project7.localmanager.LocalLevelAdmin;
import com.project7.localmanager.LocalResourceCatalog;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.UUID;
import java.util.function.Function;
import java.util.function.IntConsumer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class MainActivity extends Activity {
    private static final int ACCOUNTS = 1;
    private static final int ACTIVITIES = 4;
    private static final int HOME = 0;
    private static final int LOGS = 3;
    private static final int MAIL = 2;
    private static final String NOTICE_ACK = "first_read_confirmed";
    private static final String NOTICE_PREFS = "update_notice";
    private static final String PROCESS_SESSION = UUID.randomUUID().toString();
    private static final String[] RESOURCE_KINDS = {"money", "yuanbao", "crystal", "summonCoin", "giftCoin", "friendCoin", "souvenir", "hero", "item", "treasure", "skin"};
    private TextView accountCount;
    private LinearLayout accountDock;
    private LinearLayout accountRows;
    private EditText accountSearch;
    private LocalAccountStore accounts;
    private EditText activityDuration;
    private LinearLayout activityHub;
    private String activityKey;
    private boolean activityResumed;
    private Button activitySelection;
    private Calendar activityStart;
    private Button activityStartButton;
    private String appVersion;
    private TextView attachmentSummary;
    private Button chooseResource;
    private boolean choosingRecipients;
    private EditText countInput;
    private TextView details;
    private TextView dockSelection;
    private boolean fashionOpen;
    private LinearLayout fashionPanel;
    private Button finishRecipients;
    private CheckBox followLogs;
    private TextView gatewayBadge;
    private TextView homeAccounts;
    private TextView homeSelection;
    private AlertDialog levelDialog;
    private Spinner levelMode;
    private LinearLayout levelPanel;
    private TextView levelTargets;
    private EditText levelValue;
    private ScrollView logScroll;
    private TextView logText;
    private EditText mailContent;
    private EditText mailTitle;
    private LinearLayout navigationBar;
    private FrameLayout pageHost;
    private EditText passwordInput;
    private boolean pendingGatewayStart;
    private ArrayList<String> pendingLevelTargets;
    private EditText prefixInput;
    private LocalProfileStore profiles;
    private TextView recipients;
    private Runnable refreshActivity;
    private LinearLayout registration;
    private Button registrationToggle;
    private AutoCompleteTextView resourceId;
    private Spinner resourceQuality;
    private EditText resourceQuantity;
    private Spinner resourceType;
    private boolean restoreManualNotice;
    private String restoredLevelValue;
    private long restoredNoticeReadMillis;
    private int restoredNoticeScroll;
    private String restoredResourceId;
    private Button selectAllButton;
    private Button startGateway;
    private TextView status;
    private Button stopGateway;
    private LocalTutorialStore tutorials;
    private LocalUpdateNoticeDialog updateNoticeDialog;
    private boolean updateNoticeRequired = true;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Set<String> selectedAccounts = new LinkedHashSet();
    private final List<String> activityKeys = new ArrayList();
    private final List<String> activityLabels = new ArrayList();
    private final List<String> activitySearchTexts = new ArrayList();
    private final List<String> levelAccounts = new ArrayList();
    private final List<CheckBox> accountChecks = new ArrayList();
    private final List<String> accountNames = new ArrayList();
    private final List<View> pages = new ArrayList();
    private final List<TextView> navigation = new ArrayList();
    private int activePage = -1;
    private long logRevision = -1;
    private final List<String> resourceLabels = new ArrayList();
    private final List<byte[]> mailAttachments = new ArrayList();
    private final List<String> attachmentLabels = new ArrayList();
    private final Runnable refresh = new Runnable() { // from class: com.project7.localmanager.MainActivity.1
        @Override // java.lang.Runnable
        public void run() {
            boolean isRunning = GatewayService.isRunning();
            MainActivity.this.startGateway.setEnabled(!isRunning);
            MainActivity.this.stopGateway.setEnabled(isRunning);
            String str = isRunning ? "本地网关运行中" : "本地网关已停止";
            if (!str.contentEquals(MainActivity.this.status.getText())) {
                MainActivity.this.status.setText(str);
                MainActivity.this.status.setTextColor(LocalUiStyle.INK);
                MainActivity.this.gatewayBadge.setText(isRunning ? "在线" : "待启动");
                MainActivity.this.gatewayBadge.setTextColor(isRunning ? LocalUiStyle.ACCENT : LocalUiStyle.MUTED);
                MainActivity.this.gatewayBadge.setBackground(LocalUiStyle.surface(isRunning ? LocalUiStyle.SOFT_ACCENT : LocalUiStyle.BACKGROUND, MainActivity.HOME, isRunning ? LocalUiStyle.SOFT_ACCENT : LocalUiStyle.BACKGROUND, 8, MainActivity.this.gatewayBadge));
            }
            String statusText = GatewayService.statusText();
            if (!statusText.contentEquals(MainActivity.this.details.getText())) {
                MainActivity.this.details.setText(statusText);
            }
            MainActivity.this.refreshLogs();
            MainActivity.this.handler.postDelayed(this, 2000L);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    interface AccountTask {
        String run() throws Exception;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        ArrayList<String> stringArrayList;
        super.onCreate(bundle);
        this.appVersion = LocalAppVersion.label(this);
        int i = HOME;
        boolean z = (bundle == null || !PROCESS_SESSION.equals(bundle.getString("noticeSession"))) ? HOME : ACCOUNTS;
        this.updateNoticeRequired = (z && !bundle.getBoolean("updateNoticeRequired", true) && noticeAcknowledged()) ? HOME : ACCOUNTS;
        if (z) {
            this.restoredNoticeReadMillis = bundle.getLong("noticeReadMillis", 0L);
            this.restoredNoticeScroll = bundle.getInt("noticeScroll", HOME);
            this.restoreManualNotice = (!bundle.getBoolean("noticeOpen") || this.updateNoticeRequired) ? HOME : ACCOUNTS;
        }
        this.pendingGatewayStart = (bundle == null || !bundle.getBoolean("pendingGatewayStart")) ? HOME : ACCOUNTS;
        getWindow().setStatusBarColor(LocalUiStyle.BACKGROUND);
        getWindow().setNavigationBarColor(-1);
        getWindow().getDecorView().setSystemUiVisibility(8208);
        LocalDiagnosticLog.initialize(getFilesDir());
        LocalDiagnosticLog.record("I", "打开本地管理 " + this.appVersion + "；Android " + Build.VERSION.RELEASE);
        if (bundle != null && (stringArrayList = bundle.getStringArrayList("selectedAccounts")) != null) {
            this.selectedAccounts.addAll(stringArrayList);
        }
        try {
            this.accounts = new LocalAccountStore(this);
            this.profiles = new LocalProfileStore(this);
            this.tutorials = new LocalTutorialStore(this);
        } catch (IOException e) {
            Toast.makeText(this, "无法打开账号数据库：" + e.getMessage(), ACCOUNTS).show();
        }
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(ACCOUNTS);
        linearLayout.setFocusableInTouchMode(true);
        linearLayout.setBackgroundColor(LocalUiStyle.BACKGROUND);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(m92dp(22), m92dp(14), m92dp(22), m92dp(12));
        TextView bodyText = bodyText("Project7  /  本地管理");
        bodyText.setTextSize(16.0f);
        bodyText.setTypeface(null, ACCOUNTS);
        bodyText.setTextColor(LocalUiStyle.INK);
        linearLayout2.addView(bodyText, new LinearLayout.LayoutParams(HOME, -2, 1.0f));
        TextView bodyText2 = bodyText(this.appVersion);
        bodyText2.setTextSize(11.0f);
        bodyText2.setPadding(m92dp(10), m92dp(5), m92dp(10), m92dp(5));
        bodyText2.setBackground(LocalUiStyle.surface(-1, HOME, LocalUiStyle.BORDER, 8, bodyText2));
        linearLayout2.addView(bodyText2, matchWrap());
        bodyText2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(linearLayout2, matchWrap());
        LinearLayout linearLayout3 = new LinearLayout(this);
        this.navigationBar = linearLayout3;
        linearLayout3.setOrientation(HOME);
        this.navigationBar.setPadding(m92dp(8), m92dp(8), m92dp(8), m92dp(8));
        this.navigationBar.setBackgroundColor(-1);
        this.navigationBar.setElevation(m92dp(6));
        FrameLayout frameLayout = new FrameLayout(this);
        this.pageHost = frameLayout;
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, HOME, 1.0f));
        LinearLayout linearLayout4 = new LinearLayout(this);
        this.accountDock = linearLayout4;
        linearLayout4.setOrientation(ACCOUNTS);
        this.accountDock.setPadding(m92dp(22), m92dp(8), m92dp(22), m92dp(ACTIVITIES));
        this.accountDock.setBackgroundColor(-1);
        TextView bodyText3 = bodyText("未选择账号");
        this.dockSelection = bodyText3;
        this.accountDock.addView(bodyText3, matchWrap());
        Button button = new Button(this);
        button.setText("经验与等级");
        LocalUiStyle.action(button, "ui:primary", 18);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$0$MainActivity(view);
            }
        });
        this.accountDock.addView(button, matchWrap());
        LocalUiStyle.tree(this.accountDock);
        linearLayout.addView(this.accountDock, matchWrap());
        linearLayout.addView(this.navigationBar, matchWrap());
        LinearLayout createPage = createPage("工作台", "首页", ACCOUNTS);
        LinearLayout linearLayout5 = new LinearLayout(this);
        linearLayout5.setOrientation(ACCOUNTS);
        linearLayout5.setPadding(m92dp(20), m92dp(20), m92dp(20), m92dp(14));
        linearLayout5.setBackground(LocalUiStyle.surface(-1, HOME, LocalUiStyle.BORDER, 20, linearLayout5));
        LinearLayout linearLayout6 = new LinearLayout(this);
        linearLayout6.setGravity(16);
        TextView bodyText4 = bodyText("LOCAL GATEWAY");
        bodyText4.setTextSize(11.0f);
        bodyText4.setTypeface(null, ACCOUNTS);
        linearLayout6.addView(bodyText4, new LinearLayout.LayoutParams(HOME, -2, 1.0f));
        TextView bodyText5 = bodyText("待启动");
        this.gatewayBadge = bodyText5;
        bodyText5.setTextSize(12.0f);
        this.gatewayBadge.setPadding(m92dp(10), m92dp(5), m92dp(10), m92dp(5));
        linearLayout6.addView(this.gatewayBadge, new LinearLayout.LayoutParams(-2, -2));
        linearLayout5.addView(linearLayout6, matchWrap());
        TextView textView = new TextView(this);
        this.status = textView;
        textView.setTextSize(23.0f);
        this.status.setTypeface(null, ACCOUNTS);
        this.status.setAccessibilityLiveRegion(ACCOUNTS);
        this.status.setPadding(HOME, m92dp(16), HOME, m92dp(12));
        linearLayout5.addView(this.status, matchWrap());
        TextView textView2 = new TextView(this);
        this.details = textView2;
        textView2.setTextSize(13.0f);
        this.details.setTextColor(LocalUiStyle.MUTED);
        this.details.setLineSpacing(m92dp(LOGS), 1.15f);
        this.details.setTextIsSelectable(true);
        linearLayout5.addView(this.details, matchWrap());
        LinearLayout horizontalActions = horizontalActions();
        Button button2 = new Button(this);
        button2.setText("启动本地网关");
        LocalUiStyle.action(button2, "ui:primary", 6);
        this.startGateway = button2;
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$1$MainActivity(view);
            }
        });
        horizontalActions.addView(button2, weightedButton());
        Button button3 = new Button(this);
        LocalUiStyle.iconButton(button3, "停止本地网关", 7);
        this.stopGateway = button3;
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$2$MainActivity(view);
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(m92dp(52), m92dp(52));
        layoutParams.setMarginStart(m92dp(8));
        horizontalActions.addView(button3, layoutParams);
        linearLayout5.addView(horizontalActions, matchWrap());
        createPage.addView(linearLayout5, matchWrap());
        LinearLayout horizontalActions2 = horizontalActions();
        this.homeAccounts = metric(horizontalActions2, "本地账号", LocalUiStyle.INK);
        this.homeSelection = metric(horizontalActions2, "已选账号", Color.rgb(108, 86, 161));
        createPage.addView(horizontalActions2, matchWrap());
        createPage.addView(sectionTitle("常用管理"), matchWrap());
        shortcut(createPage, "账号管理", "账号、批量注册与等级", MAIL, ACCOUNTS, LocalUiStyle.ACCENT);
        shortcut(createPage, "系统邮件", "收件账号与资源附件", LOGS, MAIL, Color.rgb(108, 86, 161));
        shortcut(createPage, "活动中心", "时装复刻与分类目录", 5, ACTIVITIES, Color.rgb(167, 109, 33));
        shortcut(createPage, "网关日志", "运行记录与诊断", ACTIVITIES, LOGS, Color.rgb(54, 108, 160));
        createPage.addView(sectionTitle("公告"), matchWrap());
        Button button4 = new Button(this);
        button4.setText("更新公告");
        LocalUiStyle.action(button4, null, 21);
        button4.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$3$MainActivity(view);
            }
        });
        createPage.addView(button4, matchWrap());
        createPage.addView(bodyText(this.appVersion + " · 本地化声明与最新更新"), matchWrap());
        LinearLayout createPage2 = createPage("账号管理", "账号", MAIL);
        Button button5 = new Button(this);
        this.finishRecipients = button5;
        button5.setText("完成选择，返回邮件");
        LocalUiStyle.action(this.finishRecipients, "ui:primary", 10);
        this.finishRecipients.setVisibility(8);
        this.finishRecipients.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$4$MainActivity(view);
            }
        });
        createPage2.addView(this.finishRecipients, matchWrap());
        final Button button6 = new Button(this);
        this.registrationToggle = button6;
        button6.setText("批量注册");
        LocalUiStyle.action(button6, null, 8);
        createPage2.addView(button6, matchWrap());
        LinearLayout linearLayout7 = new LinearLayout(this);
        this.registration = linearLayout7;
        linearLayout7.setOrientation(ACCOUNTS);
        this.registration.setVisibility(8);
        createPage2.addView(this.registration, matchWrap());
        button6.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$5$MainActivity(button6, view);
            }
        });
        LinearLayout linearLayout8 = this.registration;
        this.prefixInput = new EditText(this);
        linearLayout8.addView(bodyText("账号或账号前缀"), matchWrap());
        this.prefixInput.setHint("账号或账号前缀，例如 test");
        this.prefixInput.setSingleLine(true);
        linearLayout8.addView(this.prefixInput, matchWrap());
        LinearLayout horizontalActions3 = horizontalActions();
        horizontalActions3.addView(bodyText("注册数量"), new LinearLayout.LayoutParams(HOME, -2, 1.0f));
        horizontalActions3.addView(bodyText("统一密码"), new LinearLayout.LayoutParams(HOME, -2, 1.0f));
        linearLayout8.addView(horizontalActions3, matchWrap());
        LinearLayout horizontalActions4 = horizontalActions();
        horizontalActions4.setPadding(HOME, HOME, HOME, HOME);
        EditText editText = new EditText(this);
        this.countInput = editText;
        editText.setHint("数量");
        this.countInput.setText("10");
        this.countInput.setSingleLine(true);
        this.countInput.setInputType(MAIL);
        horizontalActions4.addView(this.countInput, weightedInput());
        EditText editText2 = new EditText(this);
        this.passwordInput = editText2;
        editText2.setHint("统一密码");
        this.passwordInput.setText("123456");
        this.passwordInput.setSingleLine(true);
        this.passwordInput.setInputType(129);
        horizontalActions4.addView(this.passwordInput, weightedInputWithMargin());
        linearLayout8.addView(horizontalActions4, matchWrap());
        Button button7 = new Button(this);
        button7.setText("批量注册");
        LocalUiStyle.action(button7, "ui:primary", 8);
        button7.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$6$MainActivity(view);
            }
        });
        linearLayout8.addView(button7, matchWrap());
        TextView bodyText6 = bodyText("账号列表");
        this.accountCount = bodyText6;
        bodyText6.setTextColor(LocalUiStyle.INK);
        this.accountCount.setTypeface(null, ACCOUNTS);
        this.accountCount.setPadding(HOME, m92dp(18), HOME, m92dp(ACTIVITIES));
        createPage2.addView(this.accountCount, matchWrap());
        EditText editText3 = new EditText(this);
        this.accountSearch = editText3;
        editText3.setHint("搜索账号");
        this.accountSearch.setSingleLine(true);
        this.accountSearch.setContentDescription("搜索账号");
        createPage2.addView(this.accountSearch, matchWrap());
        this.accountSearch.addTextChangedListener(new TextWatcher() { // from class: com.project7.localmanager.MainActivity.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                MainActivity.this.renderAccounts();
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }
        });
        LinearLayout linearLayout9 = new LinearLayout(this);
        this.accountRows = linearLayout9;
        linearLayout9.setOrientation(ACCOUNTS);
        createPage2.addView(this.accountRows, matchWrap());
        LinearLayout horizontalActions5 = horizontalActions();
        Button button8 = new Button(this);
        this.selectAllButton = button8;
        button8.setText("全选");
        button8.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda23
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$7$MainActivity(view);
            }
        });
        horizontalActions5.addView(button8, weightedButton());
        Button button9 = new Button(this);
        button9.setText("删除所选");
        LocalUiStyle.action(button9, "ui:destructive", HOME);
        button9.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$8$MainActivity(view);
            }
        });
        horizontalActions5.addView(button9, weightedButtonWithMargin());
        Button button10 = new Button(this);
        LocalUiStyle.iconButton(button10, "刷新账号", 9);
        button10.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda25
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$9$MainActivity(view);
            }
        });
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(m92dp(52), m92dp(52));
        layoutParams2.setMarginStart(m92dp(8));
        horizontalActions5.addView(button10, layoutParams2);
        createPage2.addView(horizontalActions5, matchWrap());
        TextView bodyText7 = bodyText("删除账号会同时清理该账号的角色快照和教程进度。hakopania 为完整测试模板，不可删除。");
        bodyText7.setPadding(HOME, m92dp(8), HOME, HOME);
        bodyText7.setTextSize(12.0f);
        createPage2.addView(bodyText7, matchWrap());
        LinearLayout linearLayout10 = new LinearLayout(this);
        this.levelPanel = linearLayout10;
        linearLayout10.setOrientation(ACCOUNTS);
        this.levelPanel.setPadding(m92dp(20), m92dp(8), m92dp(20), m92dp(12));
        LinearLayout linearLayout11 = this.levelPanel;
        linearLayout11.addView(bodyText("操作前请退出游戏并停止网关。"), matchWrap());
        TextView bodyText8 = bodyText("");
        this.levelTargets = bodyText8;
        linearLayout11.addView(bodyText8, matchWrap());
        Spinner spinner = new Spinner(this);
        this.levelMode = spinner;
        spinner.setAdapter((SpinnerAdapter) LocalUiStyle.options(this, Arrays.asList("增加经验", "设定等级", "发放所有神器使")));
        linearLayout11.addView(this.levelMode, matchWrap());
        this.levelValue = new EditText(this);
        final TextView bodyText9 = bodyText("经验值 / 目标等级");
        linearLayout11.addView(bodyText9, matchWrap());
        this.levelValue.setSingleLine(true);
        this.levelValue.setInputType(MAIL);
        this.levelValue.setText("1000");
        linearLayout11.addView(this.levelValue, matchWrap());
        this.levelMode.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.project7.localmanager.MainActivity.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                String str;
                int i3 = MainActivity.HOME;
                boolean z2 = i2 == MainActivity.MAIL ? MainActivity.ACCOUNTS : MainActivity.HOME;
                bodyText9.setVisibility(z2 ? 8 : MainActivity.HOME);
                EditText editText4 = MainActivity.this.levelValue;
                if (z2) {
                    i3 = 8;
                }
                editText4.setVisibility(i3);
                MainActivity.this.levelValue.setEnabled(z2 ^ MainActivity.ACCOUNTS);
                MainActivity.this.levelValue.setHint(i2 == MainActivity.ACCOUNTS ? "目标等级（1-110）" : "增加经验（1-1000000000）");
                EditText editText5 = MainActivity.this.levelValue;
                if (MainActivity.this.restoredLevelValue == null) {
                    str = i2 == MainActivity.ACCOUNTS ? "30" : "1000";
                } else {
                    str = MainActivity.this.restoredLevelValue;
                }
                editText5.setText(str);
                MainActivity.this.restoredLevelValue = null;
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        final Button button11 = new Button(this);
        button11.setText("确认调整");
        LocalUiStyle.action(button11, "ui:primary", 18);
        button11.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$10$MainActivity(button11, view);
            }
        });
        linearLayout11.addView(button11, matchWrap());
        LocalUiStyle.tree(this.levelPanel);
        LinearLayout createPage3 = createPage("系统邮件", "邮件", LOGS);
        TextView bodyText10 = bodyText("");
        this.recipients = bodyText10;
        createPage3.addView(bodyText10, matchWrap());
        Button button12 = new Button(this);
        button12.setText("选择收件账号");
        LocalUiStyle.action(button12, null, MAIL);
        button12.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$11$MainActivity(view);
            }
        });
        createPage3.addView(button12, matchWrap());
        this.mailTitle = new EditText(this);
        createPage3.addView(bodyText("邮件标题"), matchWrap());
        this.mailTitle.setHint("邮件标题");
        this.mailTitle.setText("资源补给");
        this.mailTitle.setSingleLine(true);
        createPage3.addView(this.mailTitle, matchWrap());
        this.mailContent = new EditText(this);
        createPage3.addView(bodyText("邮件正文"), matchWrap());
        this.mailContent.setHint("邮件内容");
        this.mailContent.setText("本地测试资源，请查收。");
        this.mailContent.setMinLines(LOGS);
        this.mailContent.setMaxLines(6);
        this.mailContent.setGravity(48);
        createPage3.addView(this.mailContent, matchWrap());
        this.resourceType = new Spinner(this);
        createPage3.addView(sectionTitle("附件"), matchWrap());
        createPage3.addView(bodyText("资源类型"), matchWrap());
        this.resourceType.setAdapter((SpinnerAdapter) LocalUiStyle.options(this, Arrays.asList("金币", "钻石", "晶钻", "欧泊", "铃铛", "友情点", "纪念券", "神器使", "道具 / 角色碎片", "影装", "时装")));
        createPage3.addView(this.resourceType, matchWrap());
        AutoCompleteTextView autoCompleteTextView = new AutoCompleteTextView(this);
        this.resourceId = autoCompleteTextView;
        autoCompleteTextView.setHint("资源 ID 或名称");
        this.resourceId.setSingleLine(true);
        this.resourceId.setThreshold(ACCOUNTS);
        createPage3.addView(this.resourceId, matchWrap());
        Button button13 = new Button(this);
        this.chooseResource = button13;
        button13.setText("选择资源");
        LocalUiStyle.action(this.chooseResource, null, 11);
        this.chooseResource.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$12$MainActivity(view);
            }
        });
        createPage3.addView(this.chooseResource, matchWrap());
        this.resourceQuantity = new EditText(this);
        createPage3.addView(bodyText("附件数量"), matchWrap());
        this.resourceQuantity.setHint("数量");
        this.resourceQuantity.setText("1");
        this.resourceQuantity.setSingleLine(true);
        this.resourceQuantity.setInputType(MAIL);
        createPage3.addView(this.resourceQuantity, matchWrap());
        Spinner spinner2 = new Spinner(this);
        this.resourceQuality = spinner2;
        spinner2.setAdapter((SpinnerAdapter) LocalUiStyle.options(this, Arrays.asList("绿色", "蓝色", "紫色", "金色", "橙色")));
        createPage3.addView(this.resourceQuality, matchWrap());
        this.resourceType.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.project7.localmanager.MainActivity.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                MainActivity.this.refreshResourceChoices();
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        LinearLayout horizontalActions6 = horizontalActions();
        Button button14 = new Button(this);
        button14.setText("添加附件");
        LocalUiStyle.action(button14, null, 8);
        button14.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$13$MainActivity(view);
            }
        });
        horizontalActions6.addView(button14, weightedButton());
        Button button15 = new Button(this);
        button15.setText("撤销附件");
        LocalUiStyle.action(button15, null, 12);
        button15.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$14$MainActivity(view);
            }
        });
        horizontalActions6.addView(button15, weightedButtonWithMargin());
        createPage3.addView(horizontalActions6, matchWrap());
        TextView bodyText11 = bodyText("");
        this.attachmentSummary = bodyText11;
        createPage3.addView(bodyText11, matchWrap());
        updateAttachments();
        final Button button16 = new Button(this);
        button16.setText("发送至所选账号");
        LocalUiStyle.action(button16, "ui:primary", 10);
        button16.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$15$MainActivity(button16, view);
            }
        });
        createPage3.addView(button16, matchWrap());
        LinearLayout createPage4 = createPage("网关日志", "日志", ACTIVITIES);
        LinearLayout horizontalActions7 = horizontalActions();
        Button button17 = new Button(this);
        button17.setText("复制日志");
        LocalUiStyle.action(button17, null, 13);
        button17.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$16$MainActivity(view);
            }
        });
        horizontalActions7.addView(button17, weightedButton());
        Button button18 = new Button(this);
        button18.setText("清空");
        LocalUiStyle.action(button18, "ui:destructive", 14);
        button18.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$onCreate$18$MainActivity(view);
            }
        });
        horizontalActions7.addView(button18, weightedButtonWithMargin());
        createPage4.addView(horizontalActions7, matchWrap());
        CheckBox checkBox = new CheckBox(this);
        this.followLogs = checkBox;
        checkBox.setText("跟随最新日志");
        this.followLogs.setChecked(true);
        this.followLogs.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda37
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                MainActivity.this.lambda$onCreate$20$MainActivity(compoundButton, z2);
            }
        });
        createPage4.addView(this.followLogs, matchWrap());
        TextView bodyText12 = bodyText("");
        this.logText = bodyText12;
        bodyText12.setTextSize(12.0f);
        this.logText.setTypeface(Typeface.MONOSPACE);
        this.logText.setTextIsSelectable(true);
        this.logText.setPadding(m92dp(8), m92dp(12), m92dp(8), m92dp(12));
        this.logText.setBackgroundColor(Color.parseColor("#F4F6F8"));
        ScrollView scrollView = new ScrollView(this);
        this.logScroll = scrollView;
        scrollView.setFillViewport(true);
        this.logScroll.addView(this.logText);
        createPage4.addView(this.logScroll, new LinearLayout.LayoutParams(-1, HOME, 1.0f));
        createActivityPage();
        LocalUiStyle.tree(this.pageHost);
        this.logText.setBackground(LocalUiStyle.surface(-1, -1, LocalUiStyle.BORDER, 12, this.logText));
        this.logText.setTextColor(LocalUiStyle.INK);
        setContentView(linearLayout);
        restoreDraft(bundle);
        if (bundle != null) {
            i = bundle.getInt("page", HOME);
        }
        switchPage(i);
        refreshAccounts();
        if (bundle != null && bundle.getBoolean("levelDialog")) {
            this.pendingLevelTargets = bundle.getStringArrayList("levelAccounts");
        }
    }

    public /* synthetic */ void lambda$onCreate$0$MainActivity(View view) {
        showLevelEditor(new ArrayList(this.selectedAccounts));
    }

    public /* synthetic */ void lambda$onCreate$1$MainActivity(View view) {
        if (!this.updateNoticeRequired) {
            GatewayService.start(this);
        } else {
            showUpdateNotice();
        }
    }

    public /* synthetic */ void lambda$onCreate$2$MainActivity(View view) {
        GatewayService.stop(this);
    }

    public /* synthetic */ void lambda$onCreate$3$MainActivity(View view) {
        showUpdateNotice();
    }

    public /* synthetic */ void lambda$onCreate$4$MainActivity(View view) {
        this.choosingRecipients = false;
        switchPage(MAIL);
    }

    public /* synthetic */ void lambda$onCreate$5$MainActivity(Button button, View view) {
        int visibility = this.registration.getVisibility();
        int i = HOME;
        boolean z = visibility == 0 ? true : HOME;
        LinearLayout linearLayout = this.registration;
        if (z) {
            i = 8;
        }
        linearLayout.setVisibility(i);
        button.setText(z ? "批量注册" : "收起注册");
        button.setContentDescription(z ? "展开批量注册" : "收起批量注册");
        if (!z) {
            LocalUiStyle.enter(this.registration);
        }
    }

    public /* synthetic */ void lambda$onCreate$6$MainActivity(View view) {
        createAccounts();
    }

    public /* synthetic */ void lambda$onCreate$7$MainActivity(View view) {
        selectAllAccounts();
    }

    public /* synthetic */ void lambda$onCreate$8$MainActivity(View view) {
        confirmDeleteAccounts();
    }

    public /* synthetic */ void lambda$onCreate$9$MainActivity(View view) {
        refreshAccounts();
    }

    public /* synthetic */ void lambda$onCreate$10$MainActivity(Button button, View view) {
        confirmAdjustLevel(button);
    }

    public /* synthetic */ void lambda$onCreate$11$MainActivity(View view) {
        this.choosingRecipients = true;
        switchPage(ACCOUNTS);
    }

    public /* synthetic */ void lambda$onCreate$12$MainActivity(View view) {
        showResourcePicker();
    }

    public /* synthetic */ void lambda$onCreate$13$MainActivity(View view) {
        addMailAttachment();
    }

    public /* synthetic */ void lambda$onCreate$14$MainActivity(View view) {
        if (!this.mailAttachments.isEmpty()) {
            this.mailAttachments.remove(r2.size() - 1);
            this.attachmentLabels.remove(r2.size() - 1);
        }
        updateAttachments();
    }

    public /* synthetic */ void lambda$onCreate$15$MainActivity(Button button, View view) {
        confirmSendMail(button);
    }

    public /* synthetic */ void lambda$onCreate$16$MainActivity(View view) {
        copyLogs();
    }

    public /* synthetic */ void lambda$onCreate$18$MainActivity(View view) {
        new AlertDialog.Builder(this).setTitle("清空日志").setMessage("清除当前设备保存的诊断日志？账号与进度不会被删除。").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("清空", new DialogInterface.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.lambda$onCreate$17$MainActivity(dialogInterface, i);
            }
        }).show();
    }

    public /* synthetic */ void lambda$onCreate$17$MainActivity(DialogInterface dialogInterface, int i) {
        LocalDiagnosticLog.clear();
        refreshLogs();
    }

    public /* synthetic */ void lambda$onCreate$19$MainActivity() {
        this.logScroll.fullScroll(130);
    }

    public /* synthetic */ void lambda$onCreate$20$MainActivity(CompoundButton compoundButton, boolean z) {
        ScrollView scrollView;
        if (!z || (scrollView = this.logScroll) == null) {
            return;
        }
        scrollView.post(new MainActivity$$ExternalSyntheticLambda42(this));
    }

    private boolean noticeAcknowledged() {
        return getSharedPreferences(NOTICE_PREFS, HOME).getBoolean(NOTICE_ACK, false);
    }

    private void showUpdateNotice() {
        String str;
        if (isFinishing()) {
            return;
        }
        LocalUpdateNoticeDialog localUpdateNoticeDialog = this.updateNoticeDialog;
        if (localUpdateNoticeDialog != null && localUpdateNoticeDialog.isShowing()) {
            return;
        }
        try {
            str = new String(AssetData.readAll(this, "update_notice.md"), StandardCharsets.UTF_8);
        } catch (IOException e) {
            str = "更新内容读取失败，请重新安装本地管理。";
        }
        LocalUpdateNoticeDialog localUpdateNoticeDialog2 = new LocalUpdateNoticeDialog(this, this.appVersion, readNotice(), str, noticeAcknowledged(), this.restoredNoticeReadMillis, this.restoredNoticeScroll, new Runnable() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.lambda$showUpdateNotice$21$MainActivity();
            }
        });
        this.updateNoticeDialog = localUpdateNoticeDialog2;
        localUpdateNoticeDialog2.show();
        this.updateNoticeDialog.setHostResumed(this.activityResumed);
        this.restoreManualNotice = false;
    }

    public /* synthetic */ void lambda$showUpdateNotice$21$MainActivity() {
        getSharedPreferences(NOTICE_PREFS, HOME).edit().putBoolean(NOTICE_ACK, true).apply();
        this.updateNoticeRequired = false;
        this.restoredNoticeReadMillis = 0L;
        this.restoredNoticeScroll = HOME;
        this.restoreManualNotice = false;
        LocalUpdateNoticeDialog localUpdateNoticeDialog = this.updateNoticeDialog;
        this.updateNoticeDialog = null;
        localUpdateNoticeDialog.dismiss();
        continueAfterNotice();
    }

    private void continueAfterNotice() {
        if (this.updateNoticeRequired) {
            return;
        }
        requestNotificationPermission();
        if (this.pendingGatewayStart) {
            this.pendingGatewayStart = false;
            GatewayService.start(this);
        }
        ArrayList<String> arrayList = this.pendingLevelTargets;
        if (arrayList != null) {
            this.pendingLevelTargets = null;
            showLevelEditor(arrayList);
        }
    }

    private void showLevelEditor(List<String> list) {
        if (list.isEmpty()) {
            showMessage("请先选择账号，或点击账号右侧的等级图标");
            return;
        }
        AlertDialog alertDialog = this.levelDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            this.levelAccounts.clear();
            this.levelAccounts.addAll(list);
            this.levelTargets.setText("调整账号（" + this.levelAccounts.size() + "）：" + TextUtils.join("、", this.levelAccounts));
            if (this.levelPanel.getParent() != null) {
                ((ViewGroup) this.levelPanel.getParent()).removeView(this.levelPanel);
            }
            ScrollView scrollView = new ScrollView(this);
            scrollView.addView(this.levelPanel);
            AlertDialog create = new AlertDialog.Builder(this).setTitle("经验与等级").setView(scrollView).setNegativeButton("关闭", (DialogInterface.OnClickListener) null).create();
            this.levelDialog = create;
            create.show();
        }
    }

    private void createActivityPage() {
        LinearLayout createPage = createPage("活动中心", "活动", 5);
        LinearLayout linearLayout = new LinearLayout(this);
        this.activityHub = linearLayout;
        linearLayout.setOrientation(ACCOUNTS);
        createPage.addView(this.activityHub, matchWrap());
        Button button = new Button(this);
        button.setText("时装复刻");
        LocalUiStyle.action(button, null, 19);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$createActivityPage$22$MainActivity(view);
            }
        });
        this.activityHub.addView(button, matchWrap());
        this.activityHub.addView(bodyText("可管理 · 复刻批次与开放时间"), matchWrap());
        this.activityHub.addView(sectionTitle("往期活动分类"), matchWrap());
        this.activityHub.addView(bodyText("原始配置目录 · 其他活动尚未接入开放管理"), matchWrap());
        addHistoricalSections(this.activityHub);
        LinearLayout linearLayout2 = new LinearLayout(this);
        this.fashionPanel = linearLayout2;
        linearLayout2.setOrientation(ACCOUNTS);
        createPage.addView(this.fashionPanel, matchWrap());
        LinearLayout linearLayout3 = this.fashionPanel;
        Button button2 = new Button(this);
        button2.setText("活动分类");
        LocalUiStyle.action(button2, null, 17);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$createActivityPage$23$MainActivity(view);
            }
        });
        linearLayout3.addView(button2, matchWrap());
        linearLayout3.addView(sectionTitle("时装复刻"), matchWrap());
        setFashionOpen(false);
        LocalActivityStore localActivityStore = new LocalActivityStore(getFilesDir());
        try {
            final LocalCommerceCatalog localCommerceCatalog = new LocalCommerceCatalog(getAssets().open("commerce.tsv"));
            final LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Map.Entry<Integer, LocalCommerceCatalog.SkinProduct> entry : localCommerceCatalog.skinProducts.entrySet()) {
                LocalCommerceCatalog.SkinProduct value = entry.getValue();
                if (value.purchasable() && value.start != 0) {
                    ((List) linkedHashMap.computeIfAbsent(value.activityKey(), new Function() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda55
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return MainActivity.lambda$createActivityPage$24((String) obj);
                        }
                    })).add(entry.getKey());
                    linkedHashMap2.put(value.activityKey(), value);
                }
            }
            final List<String> list = this.activityKeys;
            final List<String> list2 = this.activityLabels;
            list.addAll(linkedHashMap.keySet());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT);
            for (String str : list) {
                list2.add("时装复刻 " + simpleDateFormat.format(new Date(((LocalCommerceCatalog.SkinProduct) linkedHashMap2.get(str)).start * 1000)) + " · " + ((List) linkedHashMap.get(str)).size() + " 件");
                localActivityStore = localActivityStore;
            }
            final LocalActivityStore localActivityStore2 = localActivityStore;
            for (int i = HOME; i < list.size(); i += ACCOUNTS) {
                StringBuilder sb = new StringBuilder(list2.get(i));
                try {
                    LocalResourceCatalog resources = this.profiles.resources();
                    for (Integer num : (List) linkedHashMap.get(list.get(i))) {
                        sb.append(" ");
                        sb.append(num);
                        LocalResourceCatalog.Skin skin = resources.skins.get(num);
                        if (skin != null) {
                            sb.append(" ");
                            sb.append(skin.name);
                            LocalResourceCatalog.Hero hero = resources.heroes.get(Integer.valueOf(skin.hero));
                            if (hero != null) {
                                sb.append(" ");
                                sb.append(hero.name);
                            }
                        }
                    }
                } catch (IOException e) {
                }
                this.activitySearchTexts.add(sb.toString());
            }
            this.activityKey = list.isEmpty() ? null : list.get(HOME);
            final Button button3 = new Button(this);
            this.activitySelection = button3;
            linearLayout3.addView(bodyText("时装复刻批次"), matchWrap());
            LocalUiStyle.action(button3, null, 11);
            button3.setText(list2.isEmpty() ? "暂无复刻批次" : list2.get(HOME));
            button3.setEnabled(list.isEmpty() ^ ACCOUNTS);
            button3.setContentDescription("搜索复刻批次");
            button3.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MainActivity.this.lambda$createActivityPage$25$MainActivity(view);
                }
            });
            linearLayout3.addView(button3, matchWrap());
            final TextView bodyText = bodyText("");
            bodyText.setTextIsSelectable(true);
            linearLayout3.addView(bodyText, matchWrap());
            final Calendar calendar = Calendar.getInstance();
            this.activityStart = calendar;
            final SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.ROOT);
            final Button button4 = new Button(this);
            button4.setText(simpleDateFormat2.format(calendar.getTime()));
            this.activityStartButton = button4;
            LocalUiStyle.action(button4, null, 5);
            button4.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda34
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MainActivity.this.lambda$createActivityPage$28$MainActivity(calendar, button4, simpleDateFormat2, view);
                }
            });
            linearLayout3.addView(bodyText("开始时间（设备时间）"), matchWrap());
            linearLayout3.addView(button4, matchWrap());
            final EditText editText = new EditText(this);
            editText.setHint("持续小时数");
            editText.setText("168");
            this.activityDuration = editText;
            editText.setInputType(MAIL);
            editText.setSingleLine(true);
            linearLayout3.addView(bodyText("持续时间（小时）"), matchWrap());
            linearLayout3.addView(editText, matchWrap());
            final Runnable runnable = new Runnable() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda46
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.lambda$createActivityPage$29$MainActivity(button3, list2, list, localActivityStore2, simpleDateFormat2, bodyText, linkedHashMap);
                }
            };
            this.refreshActivity = runnable;
            LinearLayout horizontalActions = horizontalActions();
            Button button5 = new Button(this);
            button5.setText("开放 / 更新");
            LocalUiStyle.action(button5, "ui:primary", HOME);
            button5.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda30
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MainActivity.this.lambda$createActivityPage$30$MainActivity(editText, calendar, localActivityStore2, localCommerceCatalog, runnable, view);
                }
            });
            horizontalActions.addView(button5, weightedButton());
            Button button6 = new Button(this);
            button6.setText("关闭活动");
            LocalUiStyle.action(button6, "ui:destructive", HOME);
            button6.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda31
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MainActivity.this.lambda$createActivityPage$32$MainActivity(localActivityStore2, localCommerceCatalog, runnable, view);
                }
            });
            horizontalActions.addView(button6, weightedButtonWithMargin());
            linearLayout3.addView(horizontalActions, matchWrap());
            runnable.run();
        } catch (IOException e2) {
            linearLayout3.addView(bodyText("活动目录读取失败"));
        }
    }

    public /* synthetic */ void lambda$createActivityPage$22$MainActivity(View view) {
        setFashionOpen(true);
    }

    public /* synthetic */ void lambda$createActivityPage$23$MainActivity(View view) {
        setFashionOpen(false);
    }

    static /* synthetic */ List lambda$createActivityPage$24(String str) {
        return new ArrayList();
    }

    public /* synthetic */ void lambda$createActivityPage$25$MainActivity(View view) {
        showActivityPicker();
    }

    public /* synthetic */ void lambda$createActivityPage$28$MainActivity(final Calendar calendar, final Button button, final SimpleDateFormat simpleDateFormat, View view) {
        new DatePickerDialog(this, new DatePickerDialog.OnDateSetListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda0
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                MainActivity.this.lambda$createActivityPage$27$MainActivity(calendar, button, simpleDateFormat, datePicker, i, i2, i3);
            }
        }, calendar.get(ACCOUNTS), calendar.get(MAIL), calendar.get(5)).show();
    }

    public /* synthetic */ void lambda$createActivityPage$27$MainActivity(final Calendar calendar, final Button button, final SimpleDateFormat simpleDateFormat, DatePicker datePicker, int i, int i2, int i3) {
        calendar.set(i, i2, i3);
        new TimePickerDialog(this, new TimePickerDialog.OnTimeSetListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda1
            @Override // android.app.TimePickerDialog.OnTimeSetListener
            public final void onTimeSet(TimePicker timePicker, int i4, int i5) {
                MainActivity.lambda$createActivityPage$26(calendar, button, simpleDateFormat, timePicker, i4, i5);
            }
        }, calendar.get(11), calendar.get(12), true).show();
    }

    static /* synthetic */ void lambda$createActivityPage$26(Calendar calendar, Button button, SimpleDateFormat simpleDateFormat, TimePicker timePicker, int i, int i2) {
        calendar.set(11, i);
        calendar.set(12, i2);
        calendar.set(13, HOME);
        calendar.set(14, HOME);
        button.setText(simpleDateFormat.format(calendar.getTime()));
    }

    public /* synthetic */ void lambda$createActivityPage$29$MainActivity(Button button, List list, List list2, LocalActivityStore localActivityStore, SimpleDateFormat simpleDateFormat, TextView textView, Map map) {
        String str = this.activityKey;
        if (str == null) {
            return;
        }
        button.setText((CharSequence) list.get(list2.indexOf(str)));
        try {
            long[] jArr = localActivityStore.snapshot().get(str);
            String str2 = "未开放";
            if (jArr != null && jArr[ACCOUNTS] > jArr[HOME]) {
                long currentTimeMillis = System.currentTimeMillis() / 1000;
                StringBuilder sb = new StringBuilder();
                sb.append(currentTimeMillis < jArr[HOME] ? "已预约" : currentTimeMillis < jArr[ACCOUNTS] ? "开放中" : "已结束");
                sb.append("\n");
                sb.append(simpleDateFormat.format(new Date(jArr[HOME] * 1000)));
                sb.append(" 至 ");
                sb.append(simpleDateFormat.format(new Date(jArr[ACCOUNTS] * 1000)));
                str2 = sb.toString();
            }
            textView.setText(str2 + "\n时装 ID：" + TextUtils.join("、", (Iterable) map.get(str)));
        } catch (IOException e) {
            textView.setText("活动配置读取失败");
        }
    }

    public /* synthetic */ void lambda$createActivityPage$30$MainActivity(EditText editText, Calendar calendar, LocalActivityStore localActivityStore, LocalCommerceCatalog localCommerceCatalog, Runnable runnable, View view) {
        try {
            long parseLong = Long.parseLong(editText.getText().toString().trim());
            if (parseLong < 1 || parseLong > 87600 || this.activityKey == null) {
                throw new IllegalArgumentException();
            }
            long timeInMillis = calendar.getTimeInMillis() / 1000;
            localActivityStore.set(this.activityKey, timeInMillis, Math.addExact(timeInMillis, parseLong * 3600), localCommerceCatalog);
            runnable.run();
            showMessage("已对所有账号生效，重新登录游戏刷新入口");
        } catch (IOException | ArithmeticException | IllegalArgumentException e) {
            showMessage("保存失败，请检查时间和持续小时数");
        }
    }

    public /* synthetic */ void lambda$createActivityPage$32$MainActivity(final LocalActivityStore localActivityStore, final LocalCommerceCatalog localCommerceCatalog, final Runnable runnable, View view) {
        final String str = this.activityKey;
        if (str == null) {
            return;
        }
        new AlertDialog.Builder(this).setTitle("关闭此活动？").setMessage("所有账号将停止购买该期时装，已购买的时装保留。").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("关闭", new DialogInterface.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.lambda$createActivityPage$31$MainActivity(localActivityStore, str, localCommerceCatalog, runnable, dialogInterface, i);
            }
        }).show();
    }

    public /* synthetic */ void lambda$createActivityPage$31$MainActivity(LocalActivityStore localActivityStore, String str, LocalCommerceCatalog localCommerceCatalog, Runnable runnable, DialogInterface dialogInterface, int i) {
        try {
            localActivityStore.set(str, 0L, 0L, localCommerceCatalog);
            runnable.run();
        } catch (IOException e) {
            showMessage("关闭失败，原配置保留");
        }
    }

    private void setFashionOpen(boolean z) {
        LinearLayout linearLayout;
        this.fashionOpen = z;
        LinearLayout linearLayout2 = this.activityHub;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(z ? 8 : HOME);
        }
        LinearLayout linearLayout3 = this.fashionPanel;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(z ? HOME : 8);
        }
        if (this.pages.size() > ACTIVITIES) {
            this.pages.get(ACTIVITIES).scrollTo(HOME, HOME);
        }
        if (!z || (linearLayout = this.fashionPanel) == null) {
            return;
        }
        LocalUiStyle.enter(linearLayout);
    }

    private void showActivityPicker() {
        showSearchList("选择复刻批次", "搜索日期、时装 / 神器使名称或 ID", this.activityLabels, this.activitySearchTexts, new IntConsumer() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda56
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                MainActivity.this.lambda$showActivityPicker$33$MainActivity(i);
            }
        });
    }

    public /* synthetic */ void lambda$showActivityPicker$33$MainActivity(int i) {
        this.activityKey = this.activityKeys.get(i);
        this.refreshActivity.run();
    }

    private void showSearchList(String str, String str2, final List<String> list, final List<String> list2, final IntConsumer intConsumer) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(ACCOUNTS);
        linearLayout.setPadding(m92dp(18), m92dp(8), m92dp(18), m92dp(8));
        final EditText editText = new EditText(this);
        editText.setSingleLine(true);
        editText.setHint(str2);
        editText.setContentDescription(str2);
        linearLayout.addView(editText, matchWrap());
        final TextView bodyText = bodyText("");
        linearLayout.addView(bodyText, matchWrap());
        FrameLayout frameLayout = new FrameLayout(this);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, m92dp(Math.min(320, Math.max(140, getResources().getConfiguration().screenHeightDp - 280)))));
        ListView listView = new ListView(this);
        listView.setDividerHeight(m92dp(ACCOUNTS));
        listView.setDivider(new ColorDrawable(LocalUiStyle.BORDER));
        frameLayout.addView(listView, new FrameLayout.LayoutParams(-1, -1));
        TextView bodyText2 = bodyText("没有匹配的结果");
        bodyText2.setGravity(17);
        frameLayout.addView(bodyText2, new FrameLayout.LayoutParams(-1, -1));
        listView.setEmptyView(bodyText2);
        final ArrayAdapter<String> arrayAdapter = new ArrayAdapter<String>(this, R.layout.simple_list_item_1, new ArrayList()) { // from class: com.project7.localmanager.MainActivity.5
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                TextView textView = (TextView) super.getView(i, view, viewGroup);
                textView.setTextColor(LocalUiStyle.INK);
                textView.setTextSize(14.0f);
                textView.setSingleLine(false);
                textView.setMinHeight(MainActivity.this.m92dp(56));
                textView.setPadding(MainActivity.this.m92dp(8), MainActivity.this.m92dp(14), MainActivity.this.m92dp(8), MainActivity.this.m92dp(14));
                return textView;
            }
        };
        listView.setAdapter((ListAdapter) arrayAdapter);
        final ArrayList arrayList = new ArrayList();
        final Runnable runnable = new Runnable() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.lambda$showSearchList$34(arrayList, list2, editText, list, arrayAdapter, bodyText);
            }
        };
        editText.addTextChangedListener(new TextWatcher() { // from class: com.project7.localmanager.MainActivity.6
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                runnable.run();
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }
        });
        final AlertDialog create = new AlertDialog.Builder(this).setTitle(str).setView(linearLayout).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create();
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda36
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                MainActivity.lambda$showSearchList$35(arrayList, create, intConsumer, adapterView, view, i, j);
            }
        });
        LocalUiStyle.tree(linearLayout);
        runnable.run();
        create.show();
        create.getWindow().setSoftInputMode(16);
    }

    static /* synthetic */ void lambda$showSearchList$34(List list, List list2, EditText editText, List list3, ArrayAdapter arrayAdapter, TextView textView) {
        list.clear();
        list.addAll(LocalUiSearch.matching(list2, editText.getText().toString()));
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((String) list3.get(((Integer) it.next()).intValue()));
        }
        arrayAdapter.clear();
        arrayAdapter.addAll(arrayList);
        arrayAdapter.notifyDataSetChanged();
        textView.setText(list.size() + " / " + list3.size() + " 项");
    }

    static /* synthetic */ void lambda$showSearchList$35(List list, AlertDialog alertDialog, IntConsumer intConsumer, AdapterView adapterView, View view, int i, long j) {
        int intValue = ((Integer) list.get(i)).intValue();
        alertDialog.dismiss();
        intConsumer.accept(intValue);
    }

    private void addHistoricalSections(LinearLayout linearLayout) {
        try {
            JSONArray jSONArray = new JSONArray(new String(AssetData.readAll(this, "historical_activities.json"), StandardCharsets.UTF_8));
            TreeMap treeMap = new TreeMap();
            for (int i = HOME; i < jSONArray.length(); i += ACCOUNTS) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                int i2 = jSONObject.getInt("type");
                JSONArray optJSONArray = jSONObject.optJSONArray("range");
                String format = (optJSONArray == null || optJSONArray.length() < LOGS) ? "" : String.format(Locale.ROOT, "%04d-%02d-%02d", Integer.valueOf(optJSONArray.getInt(HOME)), Integer.valueOf(optJSONArray.getInt(ACCOUNTS)), Integer.valueOf(optJSONArray.getInt(MAIL)));
                ((List) treeMap.computeIfAbsent(Integer.valueOf(i2), new Function() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda54
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return MainActivity.lambda$addHistoricalSections$36((Integer) obj);
                    }
                })).add("活动 " + jSONObject.getInt("id") + " · 模板 " + jSONObject.getInt("template") + "\n" + format + " · 玩法待接入");
            }
            TextView bodyText = bodyText(treeMap.size() + " 个原生类型 · " + jSONArray.length() + " 条配置");
            bodyText.setPadding(HOME, m92dp(12), HOME, m92dp(12));
            linearLayout.addView(bodyText, matchWrap());
            for (final Map.Entry entry : treeMap.entrySet()) {
                final String str = "活动类型 " + entry.getKey();
                Button button = new Button(this);
                button.setText(str + " · " + ((List) entry.getValue()).size() + " 条");
                LocalUiStyle.action(button, null, 20);
                button.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda33
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainActivity.this.lambda$addHistoricalSections$38$MainActivity(str, entry, view);
                    }
                });
                linearLayout.addView(button, matchWrap());
            }
        } catch (IOException | JSONException e) {
            linearLayout.addView(bodyText("目录读取失败"), matchWrap());
        }
    }

    static /* synthetic */ List lambda$addHistoricalSections$36(Integer num) {
        return new ArrayList();
    }

    public /* synthetic */ void lambda$addHistoricalSections$38$MainActivity(String str, final Map.Entry entry, View view) {
        showSearchList(str, "搜索活动 ID、模板或日期", (List) entry.getValue(), (List) entry.getValue(), new IntConsumer() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda57
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                MainActivity.this.lambda$addHistoricalSections$37$MainActivity(entry, i);
            }
        });
    }

    public /* synthetic */ void lambda$addHistoricalSections$37$MainActivity(Map.Entry entry, int i) {
        new AlertDialog.Builder(this).setTitle("活动配置").setMessage(((String) ((List) entry.getValue()).get(i)) + "\n\n该类型尚不支持开放游玩。").setPositiveButton("关闭", (DialogInterface.OnClickListener) null).show();
    }

    private LinearLayout createPage(String str, String str2, int i) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(ACCOUNTS);
        linearLayout.setPadding(m92dp(22), m92dp(14), m92dp(22), m92dp(28));
        TextView sectionTitle = sectionTitle(str);
        sectionTitle.setPadding(HOME, HOME, HOME, m92dp(22));
        sectionTitle.setTextSize(26.0f);
        if (Build.VERSION.SDK_INT >= 28) {
            sectionTitle.setAccessibilityHeading(true);
        }
        linearLayout.addView(sectionTitle, matchWrap());
        ScrollView scrollView = new ScrollView(this);
        scrollView.setClipToPadding(false);
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.setSmoothScrollingEnabled(true);
        scrollView.setFillViewport(true);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(m92dp(Math.min(720, getResources().getConfiguration().screenWidthDp)), -2);
        layoutParams.gravity = 49;
        int size = this.pages.size();
        if (size == LOGS) {
            FrameLayout frameLayout2 = new FrameLayout(this);
            layoutParams.height = -1;
            frameLayout2.addView(linearLayout, layoutParams);
            frameLayout = frameLayout2;
        } else {
            scrollView.addView(linearLayout, layoutParams);
            frameLayout = scrollView;
        }
        this.pageHost.addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        this.pages.add(frameLayout);
        TextView textView = new TextView(this);
        textView.setText(str2);
        textView.setTextSize(11.0f);
        textView.setGravity(17);
        textView.setLetterSpacing(0.0f);
        textView.setFocusable(true);
        textView.setPadding(HOME, m92dp(7), HOME, m92dp(7));
        textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, LocalIcons.drawable(this, i), (Drawable) null, (Drawable) null);
        textView.setCompoundDrawablePadding(m92dp(ACTIVITIES));
        Drawable drawable = textView.getCompoundDrawables()[ACCOUNTS];
        drawable.mutate();
        drawable.setBounds(HOME, HOME, m92dp(21), m92dp(21));
        textView.setCompoundDrawables(null, drawable, null, null);
        textView.setContentDescription(str);
        textView.setTooltipText(str);
        textView.setOnClickListener(new MainActivity$$ExternalSyntheticLambda26(this, size));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(HOME, m92dp(Math.max(64, (int) ((getResources().getConfiguration().fontScale * 16.0f) + 48.0f))), 1.0f);
        layoutParams2.setMarginStart(m92dp(MAIL));
        layoutParams2.setMarginEnd(m92dp(MAIL));
        this.navigationBar.addView(textView, layoutParams2);
        this.navigation.add(textView);
        return linearLayout;
    }

    public /* synthetic */ void lambda$createPage$39$MainActivity(int i, View view) {
        switchPage(i);
    }

    private void switchPage(int i) {
        int min = Math.min(i, this.pages.size() - ACCOUNTS);
        int i2 = HOME;
        int max = Math.max(HOME, min);
        boolean z = max != this.activePage ? ACCOUNTS : HOME;
        if (z && getCurrentFocus() != null) {
            ((InputMethodManager) getSystemService(InputMethodManager.class)).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), HOME);
            getCurrentFocus().clearFocus();
        }
        this.activePage = max;
        this.accountDock.setVisibility(max == ACCOUNTS ? HOME : 8);
        int i3 = HOME;
        while (i3 < this.pages.size()) {
            this.pages.get(i3).animate().cancel();
            this.pages.get(i3).setAlpha(1.0f);
            this.pages.get(i3).setTranslationY(0.0f);
            this.pages.get(i3).setVisibility(i3 == this.activePage ? HOME : 8);
            LocalUiStyle.navigation(this.navigation.get(i3), i3 == this.activePage ? ACCOUNTS : HOME);
            i3 += ACCOUNTS;
        }
        if (z) {
            LocalUiStyle.enter(this.pages.get(this.activePage));
        }
        Button button = this.finishRecipients;
        if (button != null) {
            if (!this.choosingRecipients) {
                i2 = 8;
            }
            button.setVisibility(i2);
        }
        updateRecipients();
        refreshLogs();
    }

    private TextView metric(LinearLayout linearLayout, String str, int i) {
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(ACCOUNTS);
        linearLayout2.setPadding(m92dp(ACTIVITIES), m92dp(10), m92dp(ACTIVITIES), m92dp(6));
        TextView bodyText = bodyText("0");
        bodyText.setTextSize(28.0f);
        bodyText.setTextColor(i);
        bodyText.setTypeface(null, ACCOUNTS);
        linearLayout2.addView(bodyText, matchWrap());
        linearLayout2.addView(bodyText(str), matchWrap());
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(HOME, -2, 1.0f));
        return bodyText;
    }

    private void shortcut(LinearLayout linearLayout, String str, String str2, int i, int i2, int i3) {
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setGravity(16);
        linearLayout2.setMinimumHeight(m92dp(80));
        linearLayout2.setPadding(m92dp(16), m92dp(14), m92dp(16), m92dp(14));
        linearLayout2.setBackground(LocalUiStyle.ripple(linearLayout2, -1, HOME, -1, 8));
        TextView textView = new TextView(this);
        textView.setGravity(17);
        Drawable drawable = LocalIcons.drawable(this, i);
        drawable.setTint(i3);
        drawable.setBounds(HOME, HOME, m92dp(24), m92dp(24));
        textView.setCompoundDrawables(null, drawable, null, null);
        linearLayout2.addView(textView, new LinearLayout.LayoutParams(m92dp(32), -2));
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(ACCOUNTS);
        linearLayout3.setPadding(m92dp(14), HOME, m92dp(8), HOME);
        TextView bodyText = bodyText(str);
        bodyText.setTextColor(LocalUiStyle.INK);
        bodyText.setTextSize(15.0f);
        bodyText.setTypeface(null, ACCOUNTS);
        linearLayout3.addView(bodyText, matchWrap());
        TextView bodyText2 = bodyText(str2);
        bodyText2.setTextSize(12.0f);
        bodyText2.setPadding(HOME, m92dp(ACTIVITIES), HOME, HOME);
        linearLayout3.addView(bodyText2, matchWrap());
        linearLayout2.addView(linearLayout3, new LinearLayout.LayoutParams(HOME, -2, 1.0f));
        TextView bodyText3 = bodyText("");
        Drawable drawable2 = LocalIcons.drawable(this, 16);
        drawable2.setTint(LocalUiStyle.MUTED);
        drawable2.setBounds(HOME, HOME, m92dp(16), m92dp(16));
        bodyText3.setCompoundDrawables(drawable2, null, null, null);
        linearLayout2.addView(bodyText3, new LinearLayout.LayoutParams(m92dp(14), -2));
        linearLayout2.setFocusable(true);
        linearLayout2.setContentDescription(str + "，" + str2);
        linearLayout2.setOnClickListener(new MainActivity$$ExternalSyntheticLambda26(this, i2));
        LinearLayout.LayoutParams matchWrap = matchWrap();
        matchWrap.bottomMargin = m92dp(8);
        linearLayout.addView(linearLayout2, matchWrap);
    }

    private String readNotice() {
        try {
            return new String(AssetData.readAll(this, "local_notice.txt"), StandardCharsets.UTF_8);
        } catch (IOException e) {
            return "公告读取失败，请重新安装本地管理。";
        }
    }

    private void updateRecipients() {
        TextView textView = this.recipients;
        if (textView != null) {
            textView.setText(this.selectedAccounts.isEmpty() ? "收件账号：未选择" : "收件账号（" + this.selectedAccounts.size() + "）：" + TextUtils.join("、", this.selectedAccounts));
        }
        TextView textView2 = this.dockSelection;
        if (textView2 != null) {
            textView2.setText("已选 " + this.selectedAccounts.size() + " 个账号");
        }
        TextView textView3 = this.homeSelection;
        if (textView3 != null) {
            textView3.setText(String.valueOf(this.selectedAccounts.size()));
        }
        TextView textView4 = this.accountCount;
        if (textView4 != null) {
            textView4.setText("账号列表 · " + this.accountNames.size() + " 个 / 已选 " + this.selectedAccounts.size() + " 个");
        }
        if (this.selectAllButton != null && this.accountRows != null) {
            boolean z = false;
            int i = HOME;
            int i2 = i;
            for (CheckBox checkBox : this.accountChecks) {
                i += ACCOUNTS;
                if (checkBox.isChecked()) {
                    i2 += ACCOUNTS;
                }
            }
            if (i > 0 && i == i2) {
                z = true;
            }
            this.selectAllButton.setText(z ? "取消全选" : "全选");
        }
    }

    private void updateAttachments() {
        String str;
        TextView textView = this.attachmentSummary;
        if (this.attachmentLabels.isEmpty()) {
            str = "暂无附件";
        } else {
            str = "已添加 " + this.attachmentLabels.size() + " / 20\n" + TextUtils.join("\n", this.attachmentLabels);
        }
        textView.setText(str);
        this.attachmentSummary.setPadding(m92dp(14), m92dp(12), m92dp(14), m92dp(12));
        this.attachmentSummary.setBackground(LocalUiStyle.surface(Color.rgb(238, 235, 246), HOME, Color.rgb(238, 235, 246), 8, this.attachmentSummary));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshLogs() {
        if (this.activePage != LOGS || this.logText == null || this.logRevision == LocalDiagnosticLog.revision()) {
            return;
        }
        this.logRevision = LocalDiagnosticLog.revision();
        String snapshot = LocalDiagnosticLog.snapshot();
        if (snapshot.length() > 16000) {
            int indexOf = snapshot.indexOf(10, snapshot.length() - 16000);
            StringBuilder sb = new StringBuilder();
            sb.append("较早记录已折叠，复制日志可获取完整记录。\n\n");
            sb.append(snapshot.substring(indexOf < 0 ? snapshot.length() - 16000 : indexOf + ACCOUNTS));
            snapshot = sb.toString();
        }
        TextView textView = this.logText;
        if (snapshot.isEmpty()) {
            snapshot = "暂无日志";
        }
        textView.setText(snapshot);
        if (this.followLogs.isChecked()) {
            this.logScroll.post(new MainActivity$$ExternalSyntheticLambda42(this));
        }
    }

    private void copyLogs() {
        String str = "Project7 本地网关诊断 " + this.appVersion + "\nAndroid " + Build.VERSION.RELEASE + " / SDK " + Build.VERSION.SDK_INT + "\n" + GatewayService.statusText() + "\n\n";
        ((ClipboardManager) getSystemService(ClipboardManager.class)).setPrimaryClip(ClipData.newPlainText("Project7 网关日志", LocalDiagnosticLog.redact(str) + LocalDiagnosticLog.snapshot()));
        showMessage("日志已复制");
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        AlertDialog alertDialog;
        bundle.putString("noticeSession", PROCESS_SESSION);
        bundle.putBoolean("updateNoticeRequired", this.updateNoticeRequired);
        LocalUpdateNoticeDialog localUpdateNoticeDialog = this.updateNoticeDialog;
        boolean z = true;
        bundle.putBoolean("noticeOpen", (localUpdateNoticeDialog == null || !localUpdateNoticeDialog.isShowing()) ? HOME : ACCOUNTS);
        LocalUpdateNoticeDialog localUpdateNoticeDialog2 = this.updateNoticeDialog;
        bundle.putLong("noticeReadMillis", localUpdateNoticeDialog2 != null ? localUpdateNoticeDialog2.readMillis() : this.restoredNoticeReadMillis);
        LocalUpdateNoticeDialog localUpdateNoticeDialog3 = this.updateNoticeDialog;
        bundle.putInt("noticeScroll", localUpdateNoticeDialog3 != null ? localUpdateNoticeDialog3.scrollY() : this.restoredNoticeScroll);
        bundle.putBoolean("pendingGatewayStart", this.pendingGatewayStart);
        bundle.putInt("page", this.activePage);
        bundle.putStringArrayList("selectedAccounts", new ArrayList<>(this.selectedAccounts));
        bundle.putBoolean("choosingRecipients", this.choosingRecipients);
        bundle.putBoolean("registration", this.registration.getVisibility() == 0 ? ACCOUNTS : HOME);
        bundle.putString("prefix", this.prefixInput.getText().toString());
        bundle.putString("count", this.countInput.getText().toString());
        bundle.putString("search", this.accountSearch.getText().toString());
        bundle.putString("mailTitle", this.mailTitle.getText().toString());
        bundle.putString("mailContent", this.mailContent.getText().toString());
        bundle.putInt("resourceType", this.resourceType.getSelectedItemPosition());
        bundle.putInt("resourceQuality", this.resourceQuality.getSelectedItemPosition());
        bundle.putString("resourceId", this.resourceId.getText().toString());
        bundle.putString("quantity", this.resourceQuantity.getText().toString());
        bundle.putInt("levelMode", this.levelMode.getSelectedItemPosition());
        bundle.putString("levelValue", this.levelValue.getText().toString());
        if (this.pendingLevelTargets == null && ((alertDialog = this.levelDialog) == null || !alertDialog.isShowing())) {
            z = HOME;
        }
        bundle.putBoolean("levelDialog", z);
        ArrayList<String> arrayList = this.pendingLevelTargets;
        if (arrayList == null) {
            arrayList = new ArrayList<>(this.levelAccounts);
        }
        bundle.putStringArrayList("levelAccounts", arrayList);
        bundle.putBoolean("followLogs", this.followLogs.isChecked());
        if (this.activitySelection != null) {
            bundle.putString("activityKey", this.activityKey);
            bundle.putBoolean("fashionOpen", this.fashionOpen);
            bundle.putLong("activityStart", this.activityStart.getTimeInMillis());
            bundle.putString("activityDuration", this.activityDuration.getText().toString());
        }
        bundle.putStringArrayList("attachmentLabels", new ArrayList<>(this.attachmentLabels));
        for (int i = HOME; i < this.mailAttachments.size(); i += ACCOUNTS) {
            bundle.putByteArray("attachment" + i, this.mailAttachments.get(i));
        }
        for (int i2 = HOME; i2 < this.pages.size(); i2 += ACCOUNTS) {
            bundle.putInt("scroll" + i2, this.pages.get(i2).getScrollY());
        }
        super.onSaveInstanceState(bundle);
    }

    private void restoreDraft(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.choosingRecipients = bundle.getBoolean("choosingRecipients");
        this.registration.setVisibility(bundle.getBoolean("registration") ? HOME : 8);
        this.registrationToggle.setText(bundle.getBoolean("registration") ? "收起注册" : "批量注册");
        this.prefixInput.setText(bundle.getString("prefix", ""));
        this.countInput.setText(bundle.getString("count", "10"));
        this.accountSearch.setText(bundle.getString("search", ""));
        this.mailTitle.setText(bundle.getString("mailTitle", "资源补给"));
        this.mailContent.setText(bundle.getString("mailContent", "本地测试资源，请查收。"));
        this.restoredResourceId = bundle.getString("resourceId", "");
        this.resourceType.setSelection(bundle.getInt("resourceType", HOME));
        this.resourceQuality.setSelection(bundle.getInt("resourceQuality", HOME));
        this.resourceQuantity.setText(bundle.getString("quantity", "1"));
        this.restoredLevelValue = bundle.getString("levelValue", "1000");
        this.levelMode.setSelection(bundle.getInt("levelMode", HOME));
        this.followLogs.setChecked(bundle.getBoolean("followLogs", true));
        if (this.activitySelection != null && bundle.containsKey("activityStart")) {
            String string = bundle.getString("activityKey");
            if (this.activityKeys.contains(string)) {
                this.activityKey = string;
            }
            setFashionOpen(bundle.getBoolean("fashionOpen"));
            Runnable runnable = this.refreshActivity;
            if (runnable != null) {
                runnable.run();
            }
            this.activityStart.setTimeInMillis(bundle.getLong("activityStart"));
            this.activityStartButton.setText(new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.ROOT).format(this.activityStart.getTime()));
            this.activityDuration.setText(bundle.getString("activityDuration", "168"));
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("attachmentLabels");
        if (stringArrayList != null) {
            for (int i = HOME; i < stringArrayList.size(); i += ACCOUNTS) {
                byte[] byteArray = bundle.getByteArray("attachment" + i);
                if (byteArray != null) {
                    this.attachmentLabels.add(stringArrayList.get(i));
                    this.mailAttachments.add(byteArray);
                }
            }
        }
        updateAttachments();
        for (int i2 = HOME; i2 < this.pages.size(); i2 += ACCOUNTS) {
            final View view = this.pages.get(i2);
            final int i3 = bundle.getInt("scroll" + i2, HOME);
            view.post(new Runnable() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda41
                @Override // java.lang.Runnable
                public final void run() {
                    view.scrollTo(MainActivity.HOME, i3);
                }
            });
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.updateNoticeRequired) {
            showUpdateNotice();
            return;
        }
        int i = this.activePage;
        if (i == ACTIVITIES && this.fashionOpen) {
            setFashionOpen(false);
            return;
        }
        if (i != ACCOUNTS || !this.choosingRecipients) {
            if (i == 0) {
                super.onBackPressed();
                return;
            } else {
                switchPage(HOME);
                return;
            }
        }
        this.choosingRecipients = false;
        switchPage(MAIL);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.pendingGatewayStart |= getIntent().getBooleanExtra("start_gateway", false);
        getIntent().removeExtra("start_gateway");
        if (this.updateNoticeRequired || this.restoreManualNotice) {
            showUpdateNotice();
        } else {
            continueAfterNotice();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.activityResumed = true;
        LocalUpdateNoticeDialog localUpdateNoticeDialog = this.updateNoticeDialog;
        if (localUpdateNoticeDialog != null) {
            localUpdateNoticeDialog.setHostResumed(true);
        }
        this.handler.post(this.refresh);
        refreshAccounts();
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.activityResumed = false;
        LocalUpdateNoticeDialog localUpdateNoticeDialog = this.updateNoticeDialog;
        if (localUpdateNoticeDialog != null) {
            localUpdateNoticeDialog.setHostResumed(false);
        }
        this.handler.removeCallbacks(this.refresh);
        new Thread(new Runnable() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                LocalDiagnosticLog.flush();
            }
        }, "project7-log-flush").start();
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onStop() {
        if (!isChangingConfigurations()) {
            this.updateNoticeRequired = true;
        }
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        LocalUpdateNoticeDialog localUpdateNoticeDialog = this.updateNoticeDialog;
        if (localUpdateNoticeDialog != null) {
            localUpdateNoticeDialog.dismiss();
            this.updateNoticeDialog = null;
        }
        AlertDialog alertDialog = this.levelDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        super.onDestroy();
    }

    private void createAccounts() {
        if (this.accounts == null) {
            return;
        }
        String trim = this.prefixInput.getText().toString().trim();
        final String obj = this.passwordInput.getText().toString();
        try {
            int parseInt = Integer.parseInt(this.countInput.getText().toString().trim());
            if (parseInt < ACCOUNTS || parseInt > 100) {
                showMessage("一次可创建 1-100 个账号");
                return;
            }
            final ArrayList arrayList = new ArrayList();
            if (parseInt == ACCOUNTS) {
                arrayList.add(trim);
            } else {
                for (int i = ACCOUNTS; i <= parseInt; i += ACCOUNTS) {
                    arrayList.add(trim + String.format("%03d", Integer.valueOf(i)));
                }
            }
            runAccountTask(new AccountTask() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda40
                @Override // com.project7.localmanager.MainActivity.AccountTask
                public final String run() {
                    return MainActivity.this.lambda$createAccounts$43$MainActivity(arrayList, obj);
                }
            });
        } catch (NumberFormatException e) {
            showMessage("数量必须是数字");
        }
    }

    public /* synthetic */ String lambda$createAccounts$43$MainActivity(List list, String str) throws Exception {
        int registerBatch = this.accounts.registerBatch(list, str);
        return "已创建 " + registerBatch + " 个账号；已存在 " + (list.size() - registerBatch) + " 个";
    }

    private void confirmDeleteAccounts() {
        if (this.selectedAccounts.isEmpty()) {
            showMessage("请先选择要删除的账号");
            return;
        }
        new AlertDialog.Builder(this).setTitle("删除账号").setMessage("将删除 " + this.selectedAccounts.size() + " 个账号及其全部本地进度。").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("删除", new DialogInterface.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.lambda$confirmDeleteAccounts$44$MainActivity(dialogInterface, i);
            }
        }).show();
    }

    public /* synthetic */ void lambda$confirmDeleteAccounts$44$MainActivity(DialogInterface dialogInterface, int i) {
        deleteSelectedAccounts();
    }

    private void deleteSelectedAccounts() {
        final ArrayList arrayList = new ArrayList(this.selectedAccounts);
        runAccountTask(new AccountTask() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda39
            @Override // com.project7.localmanager.MainActivity.AccountTask
            public final String run() {
                return MainActivity.this.lambda$deleteSelectedAccounts$45$MainActivity(arrayList);
            }
        });
    }

    public /* synthetic */ String lambda$deleteSelectedAccounts$45$MainActivity(List list) throws Exception {
        List<String> deleteAccounts = this.accounts.deleteAccounts(list);
        ArrayList arrayList = new ArrayList();
        for (String str : deleteAccounts) {
            boolean delete = this.profiles.delete(str);
            boolean delete2 = this.tutorials.delete(str);
            if (!delete || !delete2) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new IOException("账号已删除，但以下进度文件清理失败：" + arrayList);
        }
        this.selectedAccounts.clear();
        return "已删除 " + deleteAccounts.size() + " 个账号";
    }

    private void refreshAccounts() {
        LocalAccountStore localAccountStore = this.accounts;
        if (localAccountStore == null || this.accountRows == null) {
            return;
        }
        try {
            List<String> listAccounts = localAccountStore.listAccounts();
            this.selectedAccounts.retainAll(listAccounts);
            this.accountNames.clear();
            this.accountNames.addAll(listAccounts);
            this.homeAccounts.setText(String.valueOf(listAccounts.size()));
            renderAccounts();
        } catch (IOException e) {
            showMessage("读取账号失败：" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderAccounts() {
        if (this.accountRows == null) {
            return;
        }
        String lowerCase = this.accountSearch.getText().toString().trim().toLowerCase(Locale.ROOT);
        this.accountRows.removeAllViews();
        this.accountChecks.clear();
        for (final String str : this.accountNames) {
            if (str.toLowerCase(Locale.ROOT).contains(lowerCase)) {
                final LinearLayout linearLayout = new LinearLayout(this);
                linearLayout.setGravity(16);
                linearLayout.setMinimumHeight(m92dp(64));
                final CheckBox checkBox = new CheckBox(this);
                checkBox.setText("hakopania".equalsIgnoreCase(str) ? str + "（完整模板）" : str);
                checkBox.setTextSize(15.0f);
                checkBox.setTextColor(LocalUiStyle.INK);
                LocalUiStyle.tree(checkBox);
                checkBox.setGravity(8388627);
                checkBox.setMinHeight(m92dp(48));
                checkBox.setBackground(LocalUiStyle.ripple(checkBox, HOME, HOME, HOME, 8));
                checkBox.setPadding(m92dp(8), m92dp(8), m92dp(12), m92dp(8));
                checkBox.setEnabled(true);
                checkBox.setChecked(this.selectedAccounts.contains(str));
                styleAccount(checkBox, linearLayout);
                checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda38
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        MainActivity.this.lambda$renderAccounts$46$MainActivity(str, checkBox, linearLayout, compoundButton, z);
                    }
                });
                linearLayout.addView(checkBox, new LinearLayout.LayoutParams(HOME, -2, 1.0f));
                View view = new View(this);
                view.setBackgroundColor(LocalUiStyle.BORDER);
                view.setImportantForAccessibility(MAIL);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(m92dp(ACCOUNTS), m92dp(24));
                layoutParams.setMarginEnd(m92dp(8));
                linearLayout.addView(view, layoutParams);
                Button button = new Button(this);
                LocalUiStyle.accountLevelButton(button, "调整 " + str + " 的经验与等级");
                button.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda32
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        MainActivity.this.lambda$renderAccounts$47$MainActivity(str, view2);
                    }
                });
                linearLayout.addView(button, new LinearLayout.LayoutParams(m92dp(48), m92dp(48)));
                this.accountChecks.add(checkBox);
                LinearLayout.LayoutParams matchWrap = matchWrap();
                matchWrap.bottomMargin = m92dp(8);
                this.accountRows.addView(linearLayout, matchWrap);
            }
        }
        if (this.accountRows.getChildCount() == 0) {
            TextView bodyText = bodyText(lowerCase.isEmpty() ? "暂无本地账号" : "没有匹配的账号");
            bodyText.setPadding(m92dp(12), m92dp(22), m92dp(12), m92dp(22));
            this.accountRows.addView(bodyText, matchWrap());
        }
        updateRecipients();
    }

    public /* synthetic */ void lambda$renderAccounts$46$MainActivity(String str, CheckBox checkBox, LinearLayout linearLayout, CompoundButton compoundButton, boolean z) {
        if (z) {
            this.selectedAccounts.add(str);
        } else {
            this.selectedAccounts.remove(str);
        }
        styleAccount(checkBox, linearLayout);
        updateRecipients();
    }

    public /* synthetic */ void lambda$renderAccounts$47$MainActivity(String str, View view) {
        showLevelEditor(Collections.singletonList(str));
    }

    private void styleAccount(CheckBox checkBox, LinearLayout linearLayout) {
        linearLayout.setBackground(LocalUiStyle.surface(checkBox.isChecked() ? LocalUiStyle.SOFT_ACCENT : -1, HOME, checkBox.isChecked() ? LocalUiStyle.ACCENT : LocalUiStyle.BORDER, 8, linearLayout));
        linearLayout.setPadding(m92dp(8), m92dp(8), m92dp(8), m92dp(8));
    }

    private void selectAllAccounts() {
        Iterator<CheckBox> it = this.accountChecks.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!it.next().isChecked()) {
                z = true;
            }
        }
        for (CheckBox checkBox : this.accountChecks) {
            if (checkBox.isEnabled()) {
                checkBox.setChecked(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshResourceChoices() {
        if (this.profiles == null || this.resourceId == null) {
            return;
        }
        String str = RESOURCE_KINDS[this.resourceType.getSelectedItemPosition()];
        boolean currency = LocalResourceEngine.currency(str);
        this.resourceId.setVisibility(currency ? 8 : HOME);
        this.chooseResource.setVisibility(currency ? 8 : HOME);
        this.resourceQuality.setVisibility("treasure".equals(str) ? HOME : 8);
        AutoCompleteTextView autoCompleteTextView = this.resourceId;
        String str2 = this.restoredResourceId;
        if (str2 == null) {
            str2 = "";
        }
        autoCompleteTextView.setText(str2);
        this.restoredResourceId = null;
        ArrayList arrayList = new ArrayList();
        try {
            LocalResourceCatalog resources = this.profiles.resources();
            if ("hero".equals(str)) {
                for (LocalResourceCatalog.Hero hero : resources.heroes.values()) {
                    arrayList.add(hero.f14id + " : " + hero.name);
                }
            } else if ("skin".equals(str)) {
                for (LocalResourceCatalog.Skin skin : resources.skins.values()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(skin.f19id);
                    sb.append(" : ");
                    sb.append(skin.name);
                    sb.append(" / ");
                    sb.append(resources.heroes.containsKey(Integer.valueOf(skin.hero)) ? resources.heroes.get(Integer.valueOf(skin.hero)).name : Integer.valueOf(skin.hero));
                    arrayList.add(sb.toString());
                }
            } else {
                for (LocalResourceCatalog.Item item : resources.items.values()) {
                    if ("treasure".equals(str)) {
                        if (resources.treasures.containsKey(item.f15id + ":1")) {
                            arrayList.add(item.f15id + " : " + item.name);
                        }
                    } else {
                        if (item.type == 5) {
                        }
                        arrayList.add(item.f15id + " : " + item.name);
                    }
                }
            }
            this.resourceId.setAdapter(new ArrayAdapter(this, R.layout.simple_dropdown_item_1line, arrayList));
            this.resourceLabels.clear();
            this.resourceLabels.addAll(arrayList);
        } catch (IOException e) {
            showMessage("资源目录读取失败：" + e.getMessage());
        }
    }

    private void showResourcePicker() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(ACCOUNTS);
        linearLayout.setPadding(m92dp(16), m92dp(8), m92dp(16), m92dp(8));
        EditText editText = new EditText(this);
        editText.setSingleLine(true);
        editText.setHint("搜索名称或 ID");
        linearLayout.addView(editText, matchWrap());
        ListView listView = new ListView(this);
        final ArrayAdapter arrayAdapter = new ArrayAdapter(this, R.layout.simple_list_item_1, new ArrayList(this.resourceLabels));
        listView.setAdapter((ListAdapter) arrayAdapter);
        linearLayout.addView(listView, new LinearLayout.LayoutParams(-1, m92dp(280)));
        final AlertDialog create = new AlertDialog.Builder(this).setTitle(this.resourceType.getSelectedItem().toString()).setView(linearLayout).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create();
        editText.addTextChangedListener(new TextWatcher() { // from class: com.project7.localmanager.MainActivity.7
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                String lowerCase = charSequence.toString().trim().toLowerCase(Locale.ROOT);
                ArrayList arrayList = new ArrayList();
                for (String str : MainActivity.this.resourceLabels) {
                    if (str.toLowerCase(Locale.ROOT).contains(lowerCase)) {
                        arrayList.add(str);
                    }
                }
                arrayAdapter.clear();
                arrayAdapter.addAll(arrayList);
                arrayAdapter.notifyDataSetChanged();
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }
        });
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda35
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                MainActivity.this.lambda$showResourcePicker$48$MainActivity(arrayAdapter, create, adapterView, view, i, j);
            }
        });
        LocalUiStyle.tree(linearLayout);
        create.show();
    }

    public /* synthetic */ void lambda$showResourcePicker$48$MainActivity(ArrayAdapter arrayAdapter, AlertDialog alertDialog, AdapterView adapterView, View view, int i, long j) {
        this.resourceId.setText((CharSequence) arrayAdapter.getItem(i));
        this.resourceId.dismissDropDown();
        alertDialog.dismiss();
    }

    private void addMailAttachment() {
        int parseInt;
        String str;
        String str2;
        try {
            if (this.mailAttachments.size() >= 20) {
                throw new IllegalArgumentException("每封邮件最多 20 个附件");
            }
            String str3 = RESOURCE_KINDS[this.resourceType.getSelectedItemPosition()];
            String trim = this.resourceId.getText().toString().trim();
            int indexOf = trim.indexOf(58);
            if (LocalResourceEngine.currency(str3)) {
                parseInt = HOME;
            } else {
                if (indexOf >= 0) {
                    trim = trim.substring(HOME, indexOf);
                }
                parseInt = Integer.parseInt(trim.trim());
            }
            int parseInt2 = Integer.parseInt(this.resourceQuantity.getText().toString().trim());
            int selectedItemPosition = this.resourceQuality.getSelectedItemPosition() + ACCOUNTS;
            LocalResourceCatalog resources = this.profiles.resources();
            LocalResourceEngine.validate(resources, str3, parseInt, parseInt2, selectedItemPosition);
            if ("hero".equals(str3)) {
                str = resources.heroes.get(Integer.valueOf(parseInt)).name;
            } else if (LocalResourceEngine.currency(str3)) {
                str = this.resourceType.getSelectedItem().toString();
            } else {
                str = "skin".equals(str3) ? resources.skins.get(Integer.valueOf(parseInt)).name : resources.items.get(Integer.valueOf(parseInt)).name;
            }
            this.mailAttachments.add(BsonLite.document("kind", str3, "id", Integer.valueOf(parseInt), "quantity", Integer.valueOf(parseInt2), "quality", Integer.valueOf(selectedItemPosition)));
            List<String> list = this.attachmentLabels;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            if ("treasure".equals(str3)) {
                str2 = " · " + this.resourceQuality.getSelectedItem();
            } else {
                str2 = "";
            }
            sb.append(str2);
            sb.append(" × ");
            sb.append(parseInt2);
            list.add(sb.toString());
            updateAttachments();
        } catch (Exception e) {
            showMessage("附件无效：" + e.getMessage());
        }
    }

    private void confirmSendMail(final Button button) {
        if (this.selectedAccounts.isEmpty() || this.mailAttachments.isEmpty()) {
            showMessage("请选择账号并添加附件");
            return;
        }
        final ArrayList arrayList = new ArrayList(this.selectedAccounts);
        final ArrayList arrayList2 = new ArrayList(this.mailAttachments);
        final String trim = this.mailTitle.getText().toString().trim();
        final String obj = this.mailContent.getText().toString();
        new AlertDialog.Builder(this).setTitle("发送系统邮件").setMessage("收件账号：" + TextUtils.join("、", arrayList) + "\n附件：" + arrayList2.size()).setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("发送", new DialogInterface.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.lambda$confirmSendMail$51$MainActivity(button, arrayList, trim, obj, arrayList2, dialogInterface, i);
            }
        }).show();
    }

    public /* synthetic */ void lambda$confirmSendMail$51$MainActivity(final Button button, final List list, final String str, final String str2, final List list2, DialogInterface dialogInterface, int i) {
        button.setEnabled(false);
        new Thread(new Runnable() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.lambda$confirmSendMail$50$MainActivity(list, str, str2, list2, button);
            }
        }, "project7-mail-admin").start();
    }

    public /* synthetic */ void lambda$confirmSendMail$50$MainActivity(List list, String str, String str2, List list2, final Button button) {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            try {
            } catch (Exception e) {
                arrayList2.add(str3 + "：" + e.getMessage());
            }
            if (!this.accounts.listAccounts().contains(str3)) {
                throw new IOException("账号已删除");
            }
            this.profiles.sendSystemMail(str3, this.tutorials.load(str3), str, str2, list2);
            arrayList.add(str3);
        }
        this.handler.post(new Runnable() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.lambda$confirmSendMail$49$MainActivity(button, arrayList, arrayList2);
            }
        });
    }

    public /* synthetic */ void lambda$confirmSendMail$49$MainActivity(Button button, List list, List list2) {
        String str;
        button.setEnabled(true);
        this.selectedAccounts.removeAll(list);
        refreshAccounts();
        if (list2.isEmpty()) {
            this.mailAttachments.clear();
            this.attachmentLabels.clear();
            updateAttachments();
        }
        AlertDialog.Builder title = new AlertDialog.Builder(this).setTitle("邮件发送结果");
        StringBuilder sb = new StringBuilder();
        sb.append("成功：");
        sb.append(list);
        if (list2.isEmpty()) {
            str = "";
        } else {
            str = "\n失败：" + list2;
        }
        sb.append(str);
        title.setMessage(sb.toString()).setPositiveButton("确定", (DialogInterface.OnClickListener) null).show();
    }

    private void confirmAdjustLevel(final Button button) {
        final int parseInt;
        StringBuilder sb;
        String str;
        String sb2;
        if (this.profiles == null || this.levelAccounts.isEmpty()) {
            showMessage("请先选择账号");
            return;
        }
        if (GatewayService.isRunning()) {
            showMessage("请先退出游戏并停止本地网关，再调整账号");
            return;
        }
        final boolean z = this.levelMode.getSelectedItemPosition() == MAIL ? ACCOUNTS : HOME;
        final boolean z2 = this.levelMode.getSelectedItemPosition() == ACCOUNTS ? ACCOUNTS : HOME;
        if (z) {
            parseInt = HOME;
        } else {
            try {
                parseInt = Integer.parseInt(this.levelValue.getText().toString().trim());
            } catch (IllegalArgumentException e) {
                showMessage(e instanceof NumberFormatException ? "请输入有效整数" : e.getMessage());
                return;
            }
        }
        if (!z) {
            LocalLevelAdmin.validate(z2, parseInt);
        }
        final ArrayList arrayList = new ArrayList(this.levelAccounts);
        if (z) {
            sb2 = "发放所有神器使";
        } else {
            if (z2) {
                sb = new StringBuilder();
                sb.append("设定为");
                sb.append(parseInt);
                str = "级（本级经验清零）";
            } else {
                sb = new StringBuilder();
                sb.append("增加");
                sb.append(parseInt);
                str = "经验";
            }
            sb.append(str);
            sb2 = sb.toString();
        }
        final String str2 = sb2;
        button.setEnabled(false);
        final boolean[] zArr = {false};
        AlertDialog.Builder title = new AlertDialog.Builder(this).setTitle("确认账号调整");
        StringBuilder sb3 = new StringBuilder();
        sb3.append("账号：");
        sb3.append(TextUtils.join("、", arrayList));
        sb3.append("\n操作：");
        sb3.append(str2);
        sb3.append(z ? "\n请确认已退出游戏。补齐本地目录中所有神器使，保留已有角色养成；重复操作不发放重复材料。不推进剧情，重新登录生效。" : "\n请确认已退出游戏。仅修改指挥使等级和经验，不推进剧情、不发放升级奖励；重新登录生效。");
        AlertDialog create = title.setMessage(sb3.toString()).setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("确认", new DialogInterface.OnClickListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.lambda$confirmAdjustLevel$54$MainActivity(zArr, arrayList, z, z2, parseInt, str2, button, dialogInterface, i);
            }
        }).create();
        create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                MainActivity.lambda$confirmAdjustLevel$55(zArr, button, dialogInterface);
            }
        });
        create.show();
    }

    public /* synthetic */ void lambda$confirmAdjustLevel$54$MainActivity(boolean[] zArr, final List list, final boolean z, final boolean z2, final int i, final String str, final Button button, DialogInterface dialogInterface, int i2) {
        zArr[HOME] = true;
        new Thread(new Runnable() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.lambda$confirmAdjustLevel$53$MainActivity(list, z, z2, i, str, button);
            }
        }, "project7-level-admin").start();
    }

    public /* synthetic */ void lambda$confirmAdjustLevel$53$MainActivity(List list, boolean z, boolean z2, int i, String str, final Button button) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (z) {
                try {
                    LocalLevelAdmin.HeroGrant grantAllHeroes = this.profiles.grantAllHeroes(str2);
                    arrayList.add(str2 + "：新增" + grantAllHeroes.added + "位，已拥有目录中全部" + grantAllHeroes.total + "位神器使");
                } catch (Exception e) {
                    arrayList.add(str2 + "：失败，" + e.getMessage());
                }
            } else {
                byte[] adjustCommanderLevel = this.profiles.adjustCommanderLevel(str2, z2, i);
                arrayList.add(str2 + "：" + LocalResourceEngine.value(adjustCommanderLevel, "level") + "级，本级经验" + LocalResourceEngine.value(adjustCommanderLevel, "exp"));
            }
        }
        final String join = TextUtils.join("\n", arrayList);
        LocalDiagnosticLog.record("I", "账号调整（" + str + "）\n" + join);
        this.handler.post(new Runnable() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.lambda$confirmAdjustLevel$52$MainActivity(button, join);
            }
        });
    }

    public /* synthetic */ void lambda$confirmAdjustLevel$52$MainActivity(Button button, String str) {
        button.setEnabled(true);
        new AlertDialog.Builder(this).setTitle("调整结果").setMessage(str).setPositiveButton("确定", (DialogInterface.OnClickListener) null).show();
    }

    static /* synthetic */ void lambda$confirmAdjustLevel$55(boolean[] zArr, Button button, DialogInterface dialogInterface) {
        if (zArr[HOME]) {
            return;
        }
        button.setEnabled(true);
    }

    private void runAccountTask(final AccountTask accountTask) {
        new Thread(new Runnable() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.lambda$runAccountTask$58$MainActivity(accountTask);
            }
        }, "project7-account-admin").start();
    }

    public /* synthetic */ void lambda$runAccountTask$58$MainActivity(AccountTask accountTask) {
        try {
            final String run = accountTask.run();
            this.handler.post(new Runnable() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda49
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.lambda$runAccountTask$56$MainActivity(run);
                }
            });
        } catch (Exception e) {
            this.handler.post(new Runnable() { // from class: com.project7.localmanager.MainActivity$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.lambda$runAccountTask$57$MainActivity(e);
                }
            });
        }
    }

    public /* synthetic */ void lambda$runAccountTask$56$MainActivity(String str) {
        showMessage(str);
        refreshAccounts();
    }

    public /* synthetic */ void lambda$runAccountTask$57$MainActivity(Exception exc) {
        showMessage("账号操作失败：" + exc.getMessage());
    }

    private void showMessage(String str) {
        LocalDiagnosticLog.record("I", str);
        Toast.makeText(this, str, ACCOUNTS).show();
    }

    private TextView sectionTitle(String str) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(17.0f);
        textView.setTypeface(null, ACCOUNTS);
        textView.setTextColor(LocalUiStyle.INK);
        textView.setPadding(HOME, m92dp(24), HOME, m92dp(12));
        return textView;
    }

    private TextView bodyText(String str) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(13.0f);
        textView.setLetterSpacing(0.0f);
        textView.setTextColor(LocalUiStyle.MUTED);
        textView.setLineSpacing(0.0f, 1.2f);
        return textView;
    }

    private LinearLayout horizontalActions() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(HOME);
        linearLayout.setGravity(16);
        linearLayout.setPadding(HOME, m92dp(14), HOME, HOME);
        return linearLayout;
    }

    private void requestNotificationPermission() {
        if (Build.VERSION.SDK_INT >= 33 && checkSelfPermission("android.permission.POST_NOTIFICATIONS") != 0) {
            requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 100);
        }
    }

    private LinearLayout.LayoutParams matchWrap() {
        return new LinearLayout.LayoutParams(-1, -2);
    }

    private LinearLayout.LayoutParams weightedButton() {
        return new LinearLayout.LayoutParams(HOME, -2, 1.0f);
    }

    private LinearLayout.LayoutParams weightedButtonWithMargin() {
        LinearLayout.LayoutParams weightedButton = weightedButton();
        weightedButton.setMarginStart(m92dp(8));
        return weightedButton;
    }

    private LinearLayout.LayoutParams weightedInput() {
        return new LinearLayout.LayoutParams(HOME, -2, 1.0f);
    }

    private LinearLayout.LayoutParams weightedInputWithMargin() {
        LinearLayout.LayoutParams weightedInput = weightedInput();
        weightedInput.setMarginStart(m92dp(8));
        return weightedInput;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dp */
    public int m92dp(int i) {
        return Math.round(i * getResources().getDisplayMetrics().density);
    }
}
