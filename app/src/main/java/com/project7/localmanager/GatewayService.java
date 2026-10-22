package com.project7.localmanager;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.project7.localmanager.LocalGatewayServer;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class GatewayService extends Service {
    private static final String ACTION_START = "com.project7.localmanager.START";
    private static final String ACTION_STOP = "com.project7.localmanager.STOP";
    private static final String CHANNEL_ID = "local_gateway";
    private static final AtomicBoolean RUNNING = new AtomicBoolean(false);
    private static volatile String statusText = "监听地址：127.0.0.1:23333\n账号模板：hakopania";
    private LocalGatewayServer server;
    private Thread serverThread;

    public static void start(Context context) {
        context.startForegroundService(new Intent(context, (Class<?>) GatewayService.class).setAction(ACTION_START));
    }

    public static void stop(Context context) {
        context.startService(new Intent(context, (Class<?>) GatewayService.class).setAction(ACTION_STOP));
    }

    public static boolean isRunning() {
        return RUNNING.get();
    }

    public static String statusText() {
        return statusText;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        LocalDiagnosticLog.initialize(getFilesDir());
        createNotificationChannel();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (ACTION_STOP.equals(intent == null ? ACTION_START : intent.getAction())) {
            stopGateway();
            stopSelf();
            return 2;
        }
        startForeground(7, notification("本地网关正在运行"));
        startGateway();
        return 1;
    }

    @Override // android.app.Service
    public void onDestroy() {
        stopGateway();
        super.onDestroy();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    private synchronized void startGateway() {
        Thread thread = this.serverThread;
        if (thread == null || !thread.isAlive()) {
            try {
                this.server = new LocalGatewayServer(23333, new LocalAccountStore(this), new LocalProfileStore(this), new LocalTutorialStore(this), new LocalEventCatalog(this), new LocalNewbeeCatalog(this), new LocalCombatCatalog(this), new LocalPatrolCatalog(this), new LocalGatewayServer.StatusListener() { // from class: com.project7.localmanager.GatewayService$$ExternalSyntheticLambda0
                    @Override // com.project7.localmanager.LocalGatewayServer.StatusListener
                    public final void onStatus(boolean z, String str) {
                        GatewayService.this.onGatewayStatus(z, str);
                    }
                });
                Thread thread2 = new Thread(this.server, "project7-local-gateway");
                this.serverThread = thread2;
                thread2.start();
            } catch (IOException e) {
                onGatewayStatus(false, "无法加载原始事件表：" + e.getMessage());
                stopSelf();
            }
        }
    }

    private synchronized void stopGateway() {
        LocalGatewayServer localGatewayServer = this.server;
        if (localGatewayServer != null) {
            localGatewayServer.close();
            this.server = null;
        }
        this.serverThread = null;
        RUNNING.set(false);
        statusText = "监听地址：127.0.0.1:23333\n账号模板：hakopania";
        LocalDiagnosticLog.record("I", "本地网关已停止");
        LocalDiagnosticLog.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGatewayStatus(boolean z, String str) {
        RUNNING.set(z);
        statusText = str;
        LocalDiagnosticLog.record(z ? "I" : "W", str);
        if (z) {
            ((NotificationManager) getSystemService(NotificationManager.class)).notify(7, notification("本地网关正在运行"));
        }
    }

    private Notification notification(String str) {
        return new Notification.Builder(this, CHANNEL_ID).setSmallIcon(LocalIcons.resource(this, 7)).setContentTitle("Project7 本地管理").setContentText(str).setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) MainActivity.class), 201326592)).setOngoing(true).build();
    }

    private void createNotificationChannel() {
        ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel(CHANNEL_ID, "本地网关", 2));
    }
}
