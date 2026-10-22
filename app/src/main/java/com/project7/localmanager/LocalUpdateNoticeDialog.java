package com.project7.localmanager;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.project7.localmanager.LocalNoticeContent;

/* loaded from: classes.dex */
final class LocalUpdateNoticeDialog extends Dialog {
    private Button confirm;
    private final Runnable confirmed;
    private boolean disposed;
    private ScrollView fallback;
    private boolean focused;
    private final LocalNoticeReadGate gate;
    private final Handler handler;
    private final Activity host;
    private LinearLayout layout;
    private final Runnable loadTimeout;
    private final String notice;
    private boolean ready;
    private final int restoredScroll;
    private boolean resumed;
    private final Runnable ticker;
    private final String updates;
    private final String version;
    private WebView web;

    public /* synthetic */ void lambda$new$0$LocalUpdateNoticeDialog() {
        if (this.disposed || this.ready) {
            return;
        }
        showFallback();
    }

    LocalUpdateNoticeDialog(Activity activity, String str, String str2, String str3, boolean z, long j, int i, Runnable runnable) {
        super(activity, activity.getResources().getIdentifier("LocalDialog", "style", activity.getPackageName()));
        this.handler = new Handler(Looper.getMainLooper());
        this.ticker = new Runnable() { // from class: com.project7.localmanager.LocalUpdateNoticeDialog.1
            @Override // java.lang.Runnable
            public void run() {
                LocalUpdateNoticeDialog.this.updateButton();
                if (!LocalUpdateNoticeDialog.this.disposed && LocalUpdateNoticeDialog.this.resumed && LocalUpdateNoticeDialog.this.focused && LocalUpdateNoticeDialog.this.ready && !LocalUpdateNoticeDialog.this.gate.canConfirm(LocalUpdateNoticeDialog.now())) {
                    LocalUpdateNoticeDialog.this.handler.postDelayed(this, 100L);
                }
            }
        };
        this.loadTimeout = new Runnable() { // from class: com.project7.localmanager.LocalUpdateNoticeDialog$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                LocalUpdateNoticeDialog.this.lambda$new$0$LocalUpdateNoticeDialog();
            }
        };
        this.host = activity;
        this.version = str;
        this.notice = str2;
        this.updates = str3;
        this.gate = new LocalNoticeReadGate(z, j);
        this.restoredScroll = i;
        this.confirmed = runnable;
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long now() {
        return SystemClock.elapsedRealtime();
    }

    /* renamed from: dp */
    private int m81dp(int i) {
        return Math.round(i * this.host.getResources().getDisplayMetrics().density);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        LinearLayout linearLayout = new LinearLayout(this.host);
        this.layout = linearLayout;
        linearLayout.setOrientation(1);
        this.layout.setPadding(0, m81dp(8), 0, m81dp(8));
        TextView textView = new TextView(this.host);
        textView.setText("更新公告");
        textView.setTextSize(22.0f);
        textView.setTextColor(LocalUiStyle.INK);
        textView.setTypeface(null, 1);
        textView.setPadding(m81dp(22), m81dp(12), m81dp(22), m81dp(4));
        this.layout.addView(textView, new LinearLayout.LayoutParams(-1, -2));
        TextView textView2 = new TextView(this.host);
        textView2.setText("Project7 本地管理 · " + this.version);
        textView2.setTextColor(LocalUiStyle.MUTED);
        textView2.setTextSize(12.0f);
        textView2.setPadding(m81dp(22), 0, m81dp(22), m81dp(12));
        this.layout.addView(textView2, new LinearLayout.LayoutParams(-1, -2));
        Button button = new Button(this.host);
        this.confirm = button;
        button.setText("确认");
        LocalUiStyle.action(this.confirm, "ui:primary", 23);
        LocalUiStyle.button(this.confirm);
        this.confirm.setOnClickListener(new View.OnClickListener() { // from class: com.project7.localmanager.LocalUpdateNoticeDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LocalUpdateNoticeDialog.this.lambda$onCreate$1$LocalUpdateNoticeDialog(view);
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(m81dp(20), m81dp(10), m81dp(20), m81dp(8));
        this.layout.addView(this.confirm, layoutParams);
        setContentView(this.layout);
        updateButton();
        try {
            WebView webView = new WebView(this.host);
            this.web = webView;
            webView.setBackgroundColor(-1);
            WebSettings settings = this.web.getSettings();
            settings.setJavaScriptEnabled(false);
            settings.setAllowFileAccess(false);
            settings.setAllowContentAccess(false);
            settings.setBlockNetworkLoads(true);
            settings.setBlockNetworkImage(true);
            settings.setDomStorageEnabled(false);
            settings.setTextZoom(Math.round(this.host.getResources().getConfiguration().fontScale * 100.0f));
            this.web.setWebViewClient(new WebViewClient() { // from class: com.project7.localmanager.LocalUpdateNoticeDialog.2
                @Override // android.webkit.WebViewClient
                public void onPageFinished(final WebView webView2, String str) {
                    if (LocalUpdateNoticeDialog.this.disposed || LocalUpdateNoticeDialog.this.ready) {
                        return;
                    }
                    webView2.postVisualStateCallback(1L, new WebView.VisualStateCallback() { // from class: com.project7.localmanager.LocalUpdateNoticeDialog.2.1
                        @Override // android.webkit.WebView.VisualStateCallback
                        public void onComplete(long j) {
                            if (!LocalUpdateNoticeDialog.this.disposed && !LocalUpdateNoticeDialog.this.ready) {
                                LocalUpdateNoticeDialog.this.ready = true;
                                LocalUpdateNoticeDialog.this.handler.removeCallbacks(LocalUpdateNoticeDialog.this.loadTimeout);
                                webView2.scrollTo(0, LocalUpdateNoticeDialog.this.restoredScroll);
                                LocalUpdateNoticeDialog.this.syncClock();
                            }
                        }
                    });
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                    return LocalUpdateNoticeDialog.this.handleLink(webResourceRequest.getUrl().toString());
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                    return LocalUpdateNoticeDialog.this.handleLink(str);
                }
            });
            this.layout.addView(this.web, 2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
            this.web.loadDataWithBaseURL("https://project7.invalid/notice/", LocalNoticeContent.document(this.notice, this.updates), "text/html", "UTF-8", null);
            this.handler.postDelayed(this.loadTimeout, 8000L);
        } catch (RuntimeException e) {
            LocalDiagnosticLog.record("W", "公告排版组件不可用，显示原文");
            showFallback();
        }
    }

    public /* synthetic */ void lambda$onCreate$1$LocalUpdateNoticeDialog(View view) {
        if (!this.ready || !this.gate.canConfirm(now())) {
            return;
        }
        this.confirmed.run();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        getWindow().setLayout(Math.min(this.host.getResources().getDisplayMetrics().widthPixels - m81dp(24), m81dp(640)), Math.round(r0.heightPixels * 0.86f));
    }

    private void showFallback() {
        WebView webView = this.web;
        if (webView != null) {
            if (webView.getParent() != null) {
                ((ViewGroup) this.web.getParent()).removeView(this.web);
            }
            this.web.destroy();
            this.web = null;
        }
        this.fallback = new ScrollView(this.host);
        TextView textView = new TextView(this.host);
        LocalNoticeContent.NoticeParts splitNotice = LocalNoticeContent.splitNotice(this.notice);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("本地化声明\n\n");
        if (!splitNotice.warning.isEmpty()) {
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) splitNotice.warning);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.rgb(160, 47, 62)), length, spannableStringBuilder.length(), 33);
            spannableStringBuilder.setSpan(new StyleSpan(1), length, spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "\n\n");
        }
        spannableStringBuilder.append((CharSequence) splitNotice.body).append((CharSequence) "\n\n最新更新\n\n").append((CharSequence) this.updates);
        textView.setText(spannableStringBuilder);
        textView.setTextColor(LocalUiStyle.INK);
        textView.setTextSize(15.0f);
        textView.setTextIsSelectable(true);
        textView.setPadding(m81dp(22), m81dp(8), m81dp(22), m81dp(16));
        this.fallback.addView(textView);
        this.layout.addView(this.fallback, 2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        this.fallback.post(new Runnable() { // from class: com.project7.localmanager.LocalUpdateNoticeDialog$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                LocalUpdateNoticeDialog.this.lambda$showFallback$2$LocalUpdateNoticeDialog();
            }
        });
        this.ready = true;
        syncClock();
    }

    public /* synthetic */ void lambda$showFallback$2$LocalUpdateNoticeDialog() {
        this.fallback.scrollTo(0, this.restoredScroll);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleLink(String str) {
        if (!this.gate.canConfirm(now())) {
            Toast.makeText(this.host, "请先完成公告阅读", 0).show();
            return true;
        }
        if (LocalNoticeContent.externalLinkAllowed(str)) {
            try {
                this.host.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            } catch (RuntimeException e) {
                Toast.makeText(this.host, "没有可打开链接的应用", 0).show();
            }
        }
        return true;
    }

    void setHostResumed(boolean z) {
        this.resumed = z;
        syncClock();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.focused = z;
        syncClock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncClock() {
        this.gate.setVisible(!this.disposed && this.resumed && this.focused && this.ready, now());
        this.handler.removeCallbacks(this.ticker);
        if (this.confirm == null || this.disposed) {
            return;
        }
        this.ticker.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButton() {
        String str;
        if (this.confirm == null) {
            return;
        }
        if (!this.ready) {
            str = "正在加载公告";
        } else if (this.gate.canConfirm(now())) {
            str = "确认";
        } else {
            str = "请阅读 " + this.gate.remainingSeconds(now()) + " 秒";
        }
        if (!str.contentEquals(this.confirm.getText())) {
            this.confirm.setText(str);
        }
        this.confirm.setEnabled(this.ready && this.gate.canConfirm(now()));
    }

    long readMillis() {
        return this.gate.readMillis(now());
    }

    int scrollY() {
        WebView webView = this.web;
        if (webView != null) {
            return webView.getScrollY();
        }
        ScrollView scrollView = this.fallback;
        if (scrollView != null) {
            return scrollView.getScrollY();
        }
        return 0;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.disposed = true;
        this.gate.setVisible(false, now());
        this.handler.removeCallbacksAndMessages(null);
        super.dismiss();
        WebView webView = this.web;
        if (webView != null) {
            if (webView.getParent() != null) {
                ((ViewGroup) this.web.getParent()).removeView(this.web);
            }
            this.web.destroy();
            this.web = null;
        }
    }
}
