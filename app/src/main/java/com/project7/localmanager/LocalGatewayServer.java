package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalAccountStore;
import com.project7.localmanager.LocalCommerceEngine;
import com.project7.localmanager.LocalEconomyEngine;
import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalPatrolEngine;
import com.project7.localmanager.LocalProfileEngine;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import com.project7.localmanager.ProtoLite;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.json.JSONException;
import org.json.JSONTokener;

/* loaded from: classes.dex */
final class LocalGatewayServer implements Runnable, AutoCloseable {
    private static final int CLIENT_CONNECT_REPLY = 2;
    private static final int CLIENT_CREATE_ENTITY = 3;
    private static final int CLIENT_ENTITY_MESSAGE = 5;
    private static final int MAX_FRAME = 67108864;
    private static final int SERVICE_CONNECT_SERVER = 0;
    private static final int SERVICE_ENTITY_MESSAGE = 1;
    private static final String TAG = "Project7Gateway";
    private static long q7LastRefreshMs;
    private final LocalAccountStore accountStore;
    private volatile ClientSession activeSession;
    private volatile boolean closed;
    private final LocalCombatCatalog combatCatalog;
    private final LocalEventCatalog eventCatalog;
    private final StatusListener listener;
    private final LocalNewbeeCatalog newbeeCatalog;
    private final LocalPatrolCatalog patrolCatalog;
    private final int port;
    private final ProfileProvider profileProvider;
    private volatile ServerSocket socket;
    private final LocalTutorialStore tutorialStore;
    private static final byte[] LOGIN = digest("login");
    private static final byte[] LOGIN_WITH_URS = digest("loginWithUrs");
    private static final byte[] HEARTBEAT_SERVER = digest("heartbeatServer");
    private static final byte[] RELIABLE_RPC_CALL = digest("reliableRpcCall");
    private static final byte[] REQUEST_TRIGGER_DA_XUAN_WO = digest("requestTriggerDaXuanWo");
    private static final byte[] SET_PLAYER_NAME = digest("setPlayerName");
    private static final byte[] ENTER_PLACE = digest("enterPlace");
    private static final byte[] TUTORIAL_BEGIN = digest("tutorialBegin");
    private static final byte[] TUTORIAL_END = digest("tutorialEnd");
    private static final byte[] CHECK_GAMEPLAY_SWITCH = digest("checkGamePlaySwitch");
    private static final byte[] REQUEST_FILE = digest("requestFile");
    private static final byte[] REQUEST_QUIT_FILE = digest("requestQuitFile");
    private static final byte[] REQUEST_LUCKY_DRAW_CARD = digest("requestLuckyDrawCard");
    private static final byte[] GET_ALL_AREA_INFO_REQUEST = digest("getAllAreaInfoRequest");
    private static final byte[] GET_AREA_INFO_REQUEST = digest("getAreaInfoRequest");
    private static final byte[] COMBAT_OFFLINE_FINISH = digest("combatOfflineFinish");
    private static final byte[] COMBAT_OFFLINE_RESET = digest("combatOfflineReset");
    private final SecureRandom random = new SecureRandom();
    private final ThreadLocal<HomeCallbacks> homeCallbacks = ThreadLocal.withInitial(new Supplier() { // from class: com.project7.localmanager.LocalGatewayServer$$ExternalSyntheticLambda4
        @Override // java.util.function.Supplier
        public final Object get() {
            return LocalGatewayServer.lambda$new$0();
        }
    });
    private final ThreadLocal<CombatReplies> combatReplies = ThreadLocal.withInitial(new Supplier() { // from class: com.project7.localmanager.LocalGatewayServer$$ExternalSyntheticLambda5
        @Override // java.util.function.Supplier
        public final Object get() {
            return LocalGatewayServer.lambda$new$1();
        }
    });
    private final Object sessionLock = new Object();
    private final Set<ClientSession> clients = ConcurrentHashMap.newKeySet();
    private final ThreadPoolExecutor connections = new ThreadPoolExecutor(4, 4, 0, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(4), new ThreadFactory() { // from class: com.project7.localmanager.LocalGatewayServer$$ExternalSyntheticLambda1
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return LocalGatewayServer.lambda$new$2(runnable);
        }
    });

    interface StatusListener {
        void onStatus(boolean z, String str);
    }

    private static void q7ThrottledRefresh(LocalEventEngine localEventEngine, ProfileProvider profileProvider, String str, LocalTutorialStore.Progress progress) {
        if (System.currentTimeMillis() - q7LastRefreshMs >= 5000) {
            return;
        }
        q7LastRefreshMs = System.currentTimeMillis();
        localEventEngine.refreshProfile(profileProvider.snapshot(str, progress));
    }

    interface ProfileProvider {
        boolean ensureHero(String str, int i) throws IOException;

        byte[] load(String str, LocalTutorialStore.Progress progress) throws IOException;

        void savePlayerName(String str, String str2) throws IOException;

        LocalCommerceEngine.Result updateCommerce(String str, String str2, byte[] bArr) throws IOException;

        LocalEconomyEngine.Result updateEconomy(String str, String str2, byte[] bArr, LocalTutorialStore.Progress progress) throws IOException;

        LocalProfileEngine.Result updateProfile(String str, String str2, byte[] bArr) throws IOException;

        LocalResourceEngine.Result updateResources(String str, String str2, byte[] bArr) throws IOException;

        LocalResourceEngine.Result updateServices(String str, String str2, byte[] bArr, LocalTutorialStore.Progress progress) throws IOException;

        default String clientCompatibility() throws IOException {
            return "";
        }

        default byte[] snapshot(String str, LocalTutorialStore.Progress progress) throws IOException {
            return load(str, progress);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class HomeCallbacks {
        String account;
        Set<Integer> owner;
        final Map<Integer, byte[]> values;

        private HomeCallbacks() {
            this.values = new LinkedHashMap();
        }
    }

    private static final class CombatReply {
        Integer acceptedAtPreparation;
        final List<LocalResourceEngine.Reply> controls;
        final List<LocalResourceEngine.Reply> cores;
        int day;
        boolean delivered;
        String fight;
        Set<Integer> owners;
        byte[] parameters;
        byte[] profileHash;
        byte[] requestHash;
        int scene;
        int type;
        int week;

        private CombatReply() {
            this.owners = Collections.emptySet();
            this.controls = new ArrayList();
            this.cores = new ArrayList();
        }

        int size() {
            int length = this.parameters.length;
            Iterator<LocalResourceEngine.Reply> it = this.controls.iterator();
            while (it.hasNext()) {
                length += it.next().parameters.length;
            }
            Iterator<LocalResourceEngine.Reply> it2 = this.cores.iterator();
            while (it2.hasNext()) {
                length += it2.next().parameters.length;
            }
            return length;
        }
    }

    static /* synthetic */ HomeCallbacks lambda$new$0() {
        return new HomeCallbacks();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class CombatReplies {
        String account;
        byte[] avatar;
        int bytes;
        Set<Integer> connection;
        Integer latestAccepted;
        final Map<Integer, CombatReply> values;

        private CombatReplies() {
            this.values = new LinkedHashMap();
        }

        void bind(Set<Integer> set, String str, byte[] bArr) {
            if (this.connection == set && Objects.equals(this.account, str) && Arrays.equals(this.avatar, bArr)) {
                return;
            }
            this.connection = set;
            this.account = str;
            this.avatar = (byte[]) bArr.clone();
            this.latestAccepted = null;
            this.bytes = LocalGatewayServer.SERVICE_CONNECT_SERVER;
            this.values.clear();
        }

        void put(int i, CombatReply combatReply) {
            if (combatReply.type != 0) {
                this.latestAccepted = Integer.valueOf(i);
            }
            if (combatReply.size() > 4194304) {
                return;
            }
            this.values.put(Integer.valueOf(i), combatReply);
            this.bytes += combatReply.size();
            while (true) {
                if (this.values.size() > 64 || this.bytes > 4194304) {
                    Integer num = null;
                    Iterator<Integer> it = this.values.keySet().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Integer next = it.next();
                        if (!next.equals(this.latestAccepted)) {
                            num = next;
                            break;
                        }
                    }
                    if (num != null) {
                        this.bytes -= this.values.remove(num).size();
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        }
    }

    static /* synthetic */ CombatReplies lambda$new$1() {
        return new CombatReplies();
    }

    static /* synthetic */ Thread lambda$new$2(Runnable runnable) {
        Thread thread = new Thread(runnable, "Project7Connection");
        thread.setDaemon(true);
        return thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class ClientSession {
        volatile boolean cancelled;
        final Socket client;
        final CountDownLatch done = new CountDownLatch(LocalGatewayServer.SERVICE_ENTITY_MESSAGE);

        ClientSession(Socket socket) {
            this.client = socket;
        }

        void close() {
            this.cancelled = true;
            try {
                this.client.close();
            } catch (IOException e) {
            }
        }
    }

    LocalGatewayServer(int i, LocalAccountStore localAccountStore, ProfileProvider profileProvider, LocalTutorialStore localTutorialStore, LocalEventCatalog localEventCatalog, LocalNewbeeCatalog localNewbeeCatalog, LocalCombatCatalog localCombatCatalog, LocalPatrolCatalog localPatrolCatalog, StatusListener statusListener) {
        this.port = i;
        this.accountStore = localAccountStore;
        this.profileProvider = profileProvider;
        this.tutorialStore = localTutorialStore;
        this.eventCatalog = localEventCatalog;
        this.newbeeCatalog = localNewbeeCatalog;
        this.combatCatalog = localCombatCatalog;
        this.patrolCatalog = localPatrolCatalog;
        this.listener = statusListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        StatusListener statusListener;
        StringBuilder sb;
        try {
            try {
                ServerSocket serverSocket = new ServerSocket(this.port, 4, InetAddress.getByName("127.0.0.1"));
                try {
                    this.socket = serverSocket;
                    this.listener.onStatus(true, "监听地址：127.0.0.1:" + this.port + "\n账号模板：hakopania\n等待游戏连接");
                    while (!this.closed) {
                        try {
                            Socket accept = serverSocket.accept();
                            accept.setTcpNoDelay(true);
                            accept.setSoTimeout(15000);
                            final ClientSession clientSession = new ClientSession(accept);
                            this.clients.add(clientSession);
                            try {
                                this.connections.execute(new Runnable() { // from class: com.project7.localmanager.LocalGatewayServer$$ExternalSyntheticLambda0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        LocalGatewayServer.this.lambda$run$3$LocalGatewayServer(clientSession);
                                    }
                                });
                            } catch (RejectedExecutionException e) {
                                this.clients.remove(clientSession);
                                clientSession.close();
                            }
                        } catch (IOException e2) {
                            if (!this.closed) {
                                LocalDiagnosticLog.m15e(TAG, "client connection failed", e2);
                                this.listener.onStatus(true, "网关连接错误：" + e2.getMessage());
                            }
                        }
                    }
                    serverSocket.close();
                    Iterator<ClientSession> it = this.clients.iterator();
                    while (it.hasNext()) {
                        it.next().close();
                    }
                    this.connections.shutdownNow();
                    this.socket = null;
                    statusListener = this.listener;
                    sb = new StringBuilder();
                } catch (Throwable th) {
                    try {
                        serverSocket.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e3) {
                if (!this.closed) {
                    LocalDiagnosticLog.m15e(TAG, "gateway listener failed", e3);
                    this.listener.onStatus(false, "无法监听 127.0.0.1:" + this.port + "：" + e3.getMessage());
                }
                Iterator<ClientSession> it2 = this.clients.iterator();
                while (it2.hasNext()) {
                    it2.next().close();
                }
                this.connections.shutdownNow();
                this.socket = null;
                statusListener = this.listener;
                sb = new StringBuilder();
            }
            sb.append("监听地址：127.0.0.1:");
            sb.append(this.port);
            sb.append("\n账号模板：hakopania");
            statusListener.onStatus(false, sb.toString());
        } catch (Throwable th3) {
            Iterator<ClientSession> it3 = this.clients.iterator();
            while (it3.hasNext()) {
                it3.next().close();
            }
            this.connections.shutdownNow();
            this.socket = null;
            this.listener.onStatus(false, "监听地址：127.0.0.1:" + this.port + "\n账号模板：hakopania");
            throw th3;
        }
    }

    public /* synthetic */ void lambda$run$3$LocalGatewayServer(ClientSession clientSession) {
        try {
            try {
                Socket socket = clientSession.client;
                try {
                    handleClient(socket, clientSession);
                    if (socket != null) {
                        socket.close();
                    }
                } catch (Throwable th) {
                    if (socket != null) {
                        try {
                            socket.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } finally {
                clientSession.done.countDown();
                this.clients.remove(clientSession);
            }
        } catch (IOException | RuntimeException e) {
            if (!this.closed && !clientSession.cancelled) {
                LocalDiagnosticLog.m17w(TAG, "connection ended: " + e.getClass().getSimpleName());
            }
        }
    }

    private void handleClient(Socket socket, ClientSession clientSession) throws IOException {
        byte[] bArr;
        String str;
        String str2;
        HashSet hashSet;
        byte[] bArr2;
        BufferedInputStream bufferedInputStream;
        LocalEventEngine localEventEngine;
        LocalTutorialStore.Progress progress;
        String str3;
        byte[] bArr3;
        String str4;
        String str5;
        byte[] bArr4;
        int i;
        LocalTutorialStore.Progress progress2;
        boolean z;
        String str6;
        String str7;
        byte[] bArr5;
        LocalEventEngine localEventEngine2;
        LocalTutorialStore.Progress progress3;
        String str8;
        byte[] bArr6;
        String str9;
        String str10;
        int i2;
        LocalEventEngine localEventEngine3;
        String str11;
        String str12;
        LocalTutorialStore.Progress progress4;
        LocalEventEngine localEventEngine4;
        LocalEventEngine localEventEngine5;
        LocalTutorialStore.Progress progress5;
        String str13;
        LocalTutorialStore.Progress progress6;
        LocalEventEngine localEventEngine6;
        byte[] bArr7;
        ClientSession clientSession2 = clientSession;
        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(socket.getInputStream());
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        byte[] objectId = objectId();
        byte[] objectId2 = objectId();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        String str14 = TAG;
        LocalDiagnosticLog.m16i(TAG, "client connected; awaiting local authentication");
        String str15 = "";
        String str16 = "";
        byte[] bArr8 = null;
        String str17 = null;
        LocalEventEngine localEventEngine7 = null;
        LocalTutorialStore.Progress progress7 = null;
        String str18 = null;
        while (!this.closed) {
            try {
                Frame readFrame = readFrame(bufferedInputStream2);
                LocalEventEngine localEventEngine8 = localEventEngine7;
                if (readFrame.method == 0) {
                    writeFrame(bufferedOutputStream, CLIENT_CONNECT_REPLY, ProtoLite.connectReply());
                    writeFrame(bufferedOutputStream, CLIENT_CREATE_ENTITY, ProtoLite.entityInfo(md5("ClientAccount"), objectId, BsonLite.EMPTY_DOCUMENT));
                    bArr = bArr8;
                    str = str17;
                    str2 = str14;
                    hashSet = hashSet5;
                    bArr2 = objectId;
                    bufferedInputStream = bufferedInputStream2;
                    localEventEngine = localEventEngine8;
                    progress = progress7;
                    str3 = str15;
                    bArr3 = objectId2;
                    str4 = str18;
                } else if (readFrame.method == SERVICE_ENTITY_MESSAGE) {
                    try {
                        ProtoLite.EntityMessage parseEntityMessage = ProtoLite.parseEntityMessage(readFrame.payload);
                        String str19 = str15;
                        bufferedInputStream = bufferedInputStream2;
                        byte[] bArr9 = bArr8;
                        if (Arrays.equals(parseEntityMessage.f20id, objectId) && (Arrays.equals(parseEntityMessage.methodMd5, LOGIN) || Arrays.equals(parseEntityMessage.methodMd5, LOGIN_WITH_URS))) {
                            try {
                                LocalAccountStore.Result authenticate = this.accountStore.authenticate(BsonLite.stringValue(parseEntityMessage.parameters, "name"), BsonLite.stringValue(parseEntityMessage.parameters, "psw"));
                                if (!authenticate.accepted) {
                                    sendLoginFailure(bufferedOutputStream, objectId, "账号或密码错误");
                                    LocalDiagnosticLog.m17w(str14, "local login rejected account=" + authenticate.username);
                                    return;
                                }
                                if (!claimSession(clientSession2)) {
                                    sendLoginFailure(bufferedOutputStream, objectId, "上一次连接仍在保存，请稍后重新登录");
                                    return;
                                }
                                socket.setSoTimeout(SERVICE_CONNECT_SERVER);
                                str18 = authenticate.username;
                                progress7 = this.tutorialStore.load(str18);
                                byte[] load = this.profileProvider.load(str18, progress7);
                                byte[] payload = LocalHomeDailyEngine.payload(load);
                                String generation = LocalHomeWishDailyEngine.generation(load);
                                Iterator<byte[]> it = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(load, "mailbox"), "mails")).iterator();
                                while (it.hasNext()) {
                                    hashSet5.add(BsonLite.uuidValue(it.next(), "id"));
                                }
                                LocalEventEngine localEventEngine9 = new LocalEventEngine(this.eventCatalog, this.newbeeCatalog, progress7, starterEventForHero(starterHeroForUsername(str18)), load);
                                this.tutorialStore.save(str18, progress7);
                                byte[] withTutorialProgress = BsonLite.withTutorialProgress(load, progress7);
                                if (!"hakopania".equalsIgnoreCase(str18)) {
                                    withTutorialProgress = BsonLite.withLocalCityState(withTutorialProgress, progress7);
                                }
                                writeFrame(bufferedOutputStream, CLIENT_CREATE_ENTITY, ProtoLite.entityInfo(md5("ClientAvatar"), objectId2, withTutorialProgress));
                                writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(objectId2, md5("become_player"), BsonLite.EMPTY_DOCUMENT));
                                syncClientCompatibility(bufferedOutputStream, objectId2);
                                writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(objectId2, md5("syncAllNote"), BsonLite.document("nd", LocalResourceEngine.doc(load, "np"))));
                                LocalDiagnosticLog.m16i(str14, "diary login account=" + str18 + " " + LocalDiaryEngine.diagnostic(load, progress7));
                                for (LocalResourceEngine.Reply reply : LocalImageAvatar.cache(load)) {
                                    writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(objectId2, md5(reply.method), reply.parameters));
                                }
                                String str20 = progress7.weekCommit;
                                LocalResourceEngine.Result updateServices = this.profileProvider.updateServices(str18, "q7ResumeWeekResult", BsonLite.EMPTY_DOCUMENT, progress7);
                                for (LocalResourceEngine.Reply reply2 : updateServices.replies) {
                                    writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(objectId2, md5(reply2.method), reply2.parameters));
                                    str20 = str20;
                                }
                                String str21 = str20;
                                acknowledgeCgNotices(str18, progress7, updateServices);
                                StatusListener statusListener = this.listener;
                                StringBuilder sb = new StringBuilder();
                                sb.append(authenticate.registered ? "已注册并登录：" : "本地账号已登录：");
                                sb.append(str18);
                                sb.append("\n业务 RPC 等待实现");
                                statusListener.onStatus(true, sb.toString());
                                bArr8 = payload;
                                localEventEngine7 = localEventEngine9;
                                str2 = str14;
                                hashSet = hashSet5;
                                bArr3 = objectId2;
                                str17 = generation;
                                str16 = str21;
                                str3 = str19;
                                bArr2 = objectId;
                            } catch (IOException e) {
                                sendLoginFailure(bufferedOutputStream, objectId, e.getMessage());
                                LocalDiagnosticLog.m18w(str14, "local login rejected", e);
                                return;
                            }
                        } else {
                            byte[] bArr10 = objectId;
                            if (!Arrays.equals(parseEntityMessage.f20id, objectId2)) {
                                bArr4 = bArr9;
                                i = SERVICE_CONNECT_SERVER;
                                progress2 = progress7;
                                z = true;
                            } else if (Arrays.equals(parseEntityMessage.methodMd5, HEARTBEAT_SERVER)) {
                                writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(objectId2, md5("on_heartbeat"), BsonLite.EMPTY_DOCUMENT));
                                LocalDiagnosticLog.m16i(str14, "heartbeat acknowledged");
                                if (str18 == null) {
                                    str6 = str17;
                                    hashSet = hashSet5;
                                    bArr3 = objectId2;
                                    localEventEngine6 = localEventEngine8;
                                    str3 = str19;
                                    progress6 = progress7;
                                    bArr2 = bArr10;
                                    str12 = str18;
                                    bArr6 = bArr9;
                                    str2 = str14;
                                    localEventEngine7 = localEventEngine6;
                                    str18 = str12;
                                    progress7 = progress6;
                                    str17 = str6;
                                    bArr8 = bArr6;
                                } else {
                                    byte[] snapshot = this.profileProvider.snapshot(str18, progress7);
                                    String generation2 = LocalHomeWishDailyEngine.generation(snapshot);
                                    if (generation2 != null && !generation2.isEmpty() && !generation2.equals(str17)) {
                                        LocalResourceEngine.Result result = new LocalResourceEngine.Result(snapshot);
                                        LocalHomeWishDailyEngine.sync(result, BsonLite.EMPTY_DOCUMENT);
                                        for (LocalResourceEngine.Reply reply3 : result.replies) {
                                            writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(objectId2, md5(reply3.method), reply3.parameters));
                                            generation2 = generation2;
                                        }
                                        str17 = generation2;
                                    }
                                    byte[] payload2 = LocalHomeDailyEngine.payload(snapshot);
                                    if (payload2 != null) {
                                        bArr7 = bArr9;
                                        if (!Arrays.equals(payload2, bArr7)) {
                                            writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(objectId2, md5("syncHeroXinqing"), payload2));
                                            bArr7 = payload2;
                                        }
                                    } else {
                                        bArr7 = bArr9;
                                    }
                                    byte[] doc = LocalResourceEngine.doc(snapshot, "city");
                                    String str22 = str17;
                                    LocalTutorialStore.Progress progress8 = progress7;
                                    writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(objectId2, md5("syncJingshenliPower"), BsonLite.document("p", Integer.valueOf(LocalResourceEngine.value(doc, "jpv")), "t", Integer.valueOf(LocalResourceEngine.value(doc, "jpvt")), "cjsla", Integer.valueOf(LocalResourceEngine.value(doc, "cjsla")))));
                                    for (byte[] bArr11 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(snapshot, "mailbox"), "mails"))) {
                                        String uuidValue = BsonLite.uuidValue(bArr11, "id");
                                        if (uuidValue != null && hashSet5.add(uuidValue)) {
                                            writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(objectId2, md5("addMailRep"), BsonLite.document("m", bArr11)));
                                        }
                                    }
                                    hashSet = hashSet5;
                                    bArr3 = objectId2;
                                    bArr8 = bArr7;
                                    localEventEngine7 = localEventEngine8;
                                    str3 = str19;
                                    progress7 = progress8;
                                    bArr2 = bArr10;
                                    str17 = str22;
                                    str2 = str14;
                                }
                            } else {
                                bArr4 = bArr9;
                                i = SERVICE_CONNECT_SERVER;
                                progress2 = progress7;
                                z = true;
                            }
                            if (!Arrays.equals(parseEntityMessage.f20id, objectId2)) {
                                str6 = str17;
                                str7 = str14;
                                hashSet = hashSet5;
                                bArr5 = objectId2;
                                localEventEngine2 = localEventEngine8;
                                progress3 = progress2;
                                str8 = str18;
                                bArr6 = bArr4;
                                str9 = str19;
                                bArr2 = bArr10;
                            } else if (!Arrays.equals(parseEntityMessage.methodMd5, RELIABLE_RPC_CALL)) {
                                str6 = str17;
                                str7 = str14;
                                hashSet = hashSet5;
                                bArr5 = objectId2;
                                localEventEngine2 = localEventEngine8;
                                progress3 = progress2;
                                str8 = str18;
                                bArr6 = bArr4;
                                str9 = str19;
                                bArr2 = bArr10;
                            } else {
                                str6 = str17;
                                LocalTutorialStore.Progress progress9 = progress2;
                                String str23 = str18;
                                bArr6 = bArr4;
                                hashSet = hashSet5;
                                byte[] bArr12 = objectId2;
                                bArr2 = bArr10;
                                handleReliableRpc(bufferedOutputStream, objectId2, parseEntityMessage.parameters, str18, progress9, localEventEngine8, hashSet2, hashSet3, linkedHashMap, hashSet4);
                                syncEventEffects(bufferedOutputStream, bArr12, str23, progress9, localEventEngine8);
                                localEventEngine6 = localEventEngine8;
                                str12 = str23;
                                bArr3 = bArr12;
                                progress6 = progress9;
                                str3 = str19;
                                str2 = str14;
                                localEventEngine7 = localEventEngine6;
                                str18 = str12;
                                progress7 = progress6;
                                str17 = str6;
                                bArr8 = bArr6;
                            }
                            byte[] bArr13 = bArr5;
                            if (Arrays.equals(parseEntityMessage.f20id, bArr13)) {
                                i2 = i;
                                str11 = "id";
                                str10 = "p";
                                bArr3 = bArr13;
                                localEventEngine3 = localEventEngine2;
                                if (handleSuppressionRpc(bufferedOutputStream, bArr13, parseEntityMessage.methodMd5, parseEntityMessage.parameters, str8, progress3, localEventEngine2, hashSet2, hashSet3)) {
                                    completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "battleYazhiAsk");
                                    str12 = str8;
                                    progress6 = progress3;
                                    localEventEngine6 = localEventEngine3;
                                    str3 = str9;
                                    str2 = str7;
                                    localEventEngine7 = localEventEngine6;
                                    str18 = str12;
                                    progress7 = progress6;
                                    str17 = str6;
                                    bArr8 = bArr6;
                                }
                            } else {
                                str10 = "p";
                                i2 = i;
                                localEventEngine3 = localEventEngine2;
                                str11 = "id";
                                bArr3 = bArr13;
                            }
                            if (Arrays.equals(parseEntityMessage.f20id, bArr3) && handleDailyRpc(bufferedOutputStream, bArr3, parseEntityMessage.methodMd5, parseEntityMessage.parameters, str8, progress3)) {
                                str12 = str8;
                                progress6 = progress3;
                                localEventEngine6 = localEventEngine3;
                                str3 = str9;
                                str2 = str7;
                            } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && handleSpecialItemRpc(bufferedOutputStream, bArr3, parseEntityMessage.methodMd5, parseEntityMessage.parameters, str8, progress3, localEventEngine3)) {
                                completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "specialItemRpc");
                                str12 = str8;
                                progress6 = progress3;
                                localEventEngine6 = localEventEngine3;
                                str3 = str9;
                                str2 = str7;
                            } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && handleWeekRpc(bufferedOutputStream, bArr3, parseEntityMessage.methodMd5, parseEntityMessage.parameters, str8, progress3, localEventEngine3)) {
                                completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "weekLifecycleRpc");
                                str12 = str8;
                                progress6 = progress3;
                                localEventEngine6 = localEventEngine3;
                                str3 = str9;
                                str2 = str7;
                            } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && handleHomeRpc(bufferedOutputStream, bArr3, parseEntityMessage.methodMd5, parseEntityMessage.parameters, str8, progress3)) {
                                str12 = str8;
                                progress6 = progress3;
                                localEventEngine6 = localEventEngine3;
                                str3 = str9;
                                str2 = str7;
                            } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && handleServiceRpc(bufferedOutputStream, bArr3, parseEntityMessage.methodMd5, parseEntityMessage.parameters, str8, progress3, localEventEngine3)) {
                                completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "cityServiceRpc");
                                str12 = str8;
                                progress6 = progress3;
                                localEventEngine6 = localEventEngine3;
                                str3 = str9;
                                str2 = str7;
                            } else {
                                if (!Arrays.equals(parseEntityMessage.f20id, bArr3)) {
                                    str12 = str8;
                                    progress4 = progress3;
                                    localEventEngine4 = localEventEngine3;
                                } else if (handleResourceRpc(bufferedOutputStream, bArr3, parseEntityMessage.methodMd5, parseEntityMessage.parameters, str8)) {
                                    completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "resourceRpc");
                                    str12 = str8;
                                    LocalTutorialStore.Progress progress10 = progress3;
                                    LocalEventEngine localEventEngine10 = localEventEngine3;
                                    refreshResourceProfile(parseEntityMessage.methodMd5, str12, progress10, localEventEngine10);
                                    localEventEngine6 = localEventEngine10;
                                    progress6 = progress10;
                                    str3 = str9;
                                    str2 = str7;
                                } else {
                                    str12 = str8;
                                    progress4 = progress3;
                                    localEventEngine4 = localEventEngine3;
                                }
                                if (Arrays.equals(parseEntityMessage.f20id, bArr3) && handleBasicRpc(bufferedOutputStream, bArr3, parseEntityMessage.methodMd5, parseEntityMessage.parameters, str12)) {
                                    completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "basicProfileRpc");
                                    localEventEngine6 = localEventEngine4;
                                    progress6 = progress4;
                                    str3 = str9;
                                    str2 = str7;
                                } else {
                                    if (!Arrays.equals(parseEntityMessage.f20id, bArr3)) {
                                        localEventEngine5 = localEventEngine4;
                                        progress5 = progress4;
                                    } else {
                                        localEventEngine5 = localEventEngine4;
                                        progress5 = progress4;
                                        if (handleConstructionRpc(bufferedOutputStream, bArr3, parseEntityMessage.methodMd5, parseEntityMessage.parameters, str12, progress4, localEventEngine4, null)) {
                                            completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "constructionRpc");
                                            str3 = str9;
                                            progress6 = progress5;
                                            localEventEngine6 = localEventEngine5;
                                            str2 = str7;
                                        }
                                    }
                                    if (Arrays.equals(parseEntityMessage.f20id, bArr3) && handleDayRpc(bufferedOutputStream, bArr3, parseEntityMessage.methodMd5, parseEntityMessage.parameters, str12, progress5, localEventEngine5)) {
                                        completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "dayRpc");
                                        str3 = str9;
                                        progress6 = progress5;
                                        localEventEngine6 = localEventEngine5;
                                        str2 = str7;
                                    } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && (Arrays.equals(parseEntityMessage.methodMd5, digest("incDayWhenNoActionVal")) || Arrays.equals(parseEntityMessage.methodMd5, digest("clearCurDailySettlement")))) {
                                        String str24 = Arrays.equals(parseEntityMessage.methodMd5, digest("incDayWhenNoActionVal")) ? "incDayWhenNoActionVal" : "clearCurDailySettlement";
                                        handleCalendar(bufferedOutputStream, bArr3, str12, progress5, localEventEngine5, str24);
                                        completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, str24);
                                        str3 = str9;
                                        progress6 = progress5;
                                        localEventEngine6 = localEventEngine5;
                                        str2 = str7;
                                    } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && Arrays.equals(parseEntityMessage.methodMd5, digest("zhaiRequest"))) {
                                        handleRest(bufferedOutputStream, bArr3, str12, progress5, localEventEngine5);
                                        completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "zhaiRequest");
                                        str3 = str9;
                                        progress6 = progress5;
                                        localEventEngine6 = localEventEngine5;
                                        str2 = str7;
                                    } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && Arrays.equals(parseEntityMessage.methodMd5, REQUEST_TRIGGER_DA_XUAN_WO)) {
                                        completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "requestTriggerDaXuanWo");
                                        str3 = str9;
                                        progress6 = progress5;
                                        localEventEngine6 = localEventEngine5;
                                        str2 = str7;
                                    } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && Arrays.equals(parseEntityMessage.methodMd5, SET_PLAYER_NAME)) {
                                        handleSetPlayerName(bufferedOutputStream, bArr3, parseEntityMessage.parameters, str12);
                                        str3 = str9;
                                        progress6 = progress5;
                                        localEventEngine6 = localEventEngine5;
                                        str2 = str7;
                                    } else {
                                        if (!Arrays.equals(parseEntityMessage.f20id, bArr3)) {
                                            str13 = str7;
                                        } else if (!Arrays.equals(parseEntityMessage.methodMd5, CHECK_GAMEPLAY_SWITCH)) {
                                            str13 = str7;
                                        } else {
                                            String stringValue = BsonLite.stringValue(parseEntityMessage.parameters, "g");
                                            writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr3, md5("checkGamePlaySwitchReply"), BsonLite.gamePlaySwitchReplyDocument(stringValue, SERVICE_ENTITY_MESSAGE, str9)));
                                            String str25 = str7;
                                            LocalDiagnosticLog.m16i(str25, "checkGamePlaySwitch allowed gamePlay=" + stringValue);
                                            str3 = str9;
                                            progress6 = progress5;
                                            localEventEngine6 = localEventEngine5;
                                            str2 = str25;
                                        }
                                        if (Arrays.equals(parseEntityMessage.f20id, bArr3) && Arrays.equals(parseEntityMessage.methodMd5, REQUEST_LUCKY_DRAW_CARD)) {
                                            Integer intValue = BsonLite.intValue(parseEntityMessage.parameters, "idx");
                                            Integer intValue2 = BsonLite.intValue(parseEntityMessage.parameters, "t");
                                            int intValue3 = intValue == null ? i2 : intValue.intValue();
                                            int intValue4 = intValue2 == null ? SERVICE_ENTITY_MESSAGE : intValue2.intValue();
                                            writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr3, md5("replyLuckyDrawCard"), BsonLite.luckyDrawCardReplyDocument(true, intValue3, intValue4)));
                                            completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "requestLuckyDrawCard");
                                            LocalDiagnosticLog.m16i(str13, "lucky draw card completed index=" + intValue3 + " type=" + intValue4);
                                            str3 = str9;
                                            progress6 = progress5;
                                            localEventEngine6 = localEventEngine5;
                                            str2 = str13;
                                        } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && Arrays.equals(parseEntityMessage.methodMd5, REQUEST_FILE)) {
                                            Integer intValue5 = BsonLite.intValue(parseEntityMessage.parameters, "t");
                                            int intValue6 = intValue5 == null ? SERVICE_ENTITY_MESSAGE : intValue5.intValue();
                                            writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr3, md5("replyFile"), BsonLite.luckyDrawFileContentsReplyDocument(true, intValue6)));
                                            LocalDiagnosticLog.m16i(str13, "lucky draw file contents completed type=" + intValue6);
                                            str3 = str9;
                                            progress6 = progress5;
                                            localEventEngine6 = localEventEngine5;
                                            str2 = str13;
                                        } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && Arrays.equals(parseEntityMessage.methodMd5, REQUEST_QUIT_FILE)) {
                                            Integer intValue7 = BsonLite.intValue(parseEntityMessage.parameters, "t");
                                            int intValue8 = intValue7 == null ? SERVICE_ENTITY_MESSAGE : intValue7.intValue();
                                            writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr3, md5("replyQuitFile"), BsonLite.luckyDrawQuitReplyDocument(true, intValue8)));
                                            completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "requestQuitFile");
                                            LocalDiagnosticLog.m16i(str13, "lucky draw file closed type=" + intValue8);
                                            str3 = str9;
                                            progress6 = progress5;
                                            localEventEngine6 = localEventEngine5;
                                            str2 = str13;
                                        } else {
                                            if (!Arrays.equals(parseEntityMessage.f20id, bArr3)) {
                                                progress6 = progress5;
                                            } else if (!Arrays.equals(parseEntityMessage.methodMd5, GET_ALL_AREA_INFO_REQUEST)) {
                                                progress6 = progress5;
                                            } else {
                                                boolean isHighSchoolUnlocked = isHighSchoolUnlocked(progress5);
                                                progress6 = progress5;
                                                writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr3, md5("get_all_area_info_reply"), BsonLite.allAreaInfoReplyDocument(isHighSchoolUnlocked, progress6, this.profileProvider.load(str12, progress6))));
                                                completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "getAllAreaInfoRequest");
                                                LocalDiagnosticLog.m16i(str13, "all area info completed highSchool=" + isHighSchoolUnlocked);
                                                str3 = str9;
                                                localEventEngine6 = localEventEngine5;
                                                str2 = str13;
                                            }
                                            if (Arrays.equals(parseEntityMessage.f20id, bArr3) && Arrays.equals(parseEntityMessage.methodMd5, GET_AREA_INFO_REQUEST)) {
                                                Integer intValue9 = BsonLite.intValue(parseEntityMessage.parameters, str11);
                                                boolean isHighSchoolUnlocked2 = isHighSchoolUnlocked(progress6);
                                                int resolveAreaId = resolveAreaId(intValue9, isHighSchoolUnlocked2);
                                                writeFrame(bufferedOutputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr3, md5("get_area_info_reply"), BsonLite.areaInfoReplyDocument(resolveAreaId, isHighSchoolUnlocked2, progress6, this.profileProvider.load(str12, progress6))));
                                                completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "getAreaInfoRequest");
                                                LocalDiagnosticLog.m16i(str13, "area info completed area=" + resolveAreaId);
                                                str3 = str9;
                                                localEventEngine6 = localEventEngine5;
                                                str2 = str13;
                                            } else {
                                                if (!Arrays.equals(parseEntityMessage.f20id, bArr3)) {
                                                    str3 = str9;
                                                    str2 = str13;
                                                } else if (!Arrays.equals(parseEntityMessage.methodMd5, COMBAT_OFFLINE_FINISH)) {
                                                    str3 = str9;
                                                    str2 = str13;
                                                } else {
                                                    str3 = str9;
                                                    str2 = str13;
                                                    handleCombatOfflineFinish(bufferedOutputStream, bArr3, parseEntityMessage.parameters, str12, progress6, localEventEngine5, hashSet2, hashSet3);
                                                    localEventEngine6 = localEventEngine5;
                                                }
                                                if (Arrays.equals(parseEntityMessage.f20id, bArr3) && handleCombatCancelRpc(bufferedOutputStream, bArr3, parseEntityMessage.methodMd5, parseEntityMessage.parameters, str12, progress6)) {
                                                    if (Arrays.equals(parseEntityMessage.methodMd5, digest("battleStageGiveup"))) {
                                                        finishAbandonedStory(bufferedOutputStream, bArr3, parseEntityMessage.parameters, str12, progress6, localEventEngine5);
                                                    }
                                                    completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "combatCancelRpc");
                                                    localEventEngine6 = localEventEngine5;
                                                } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && Arrays.equals(parseEntityMessage.methodMd5, digest("battleRealFailWithEventMode"))) {
                                                    finishAbandonedStory(bufferedOutputStream, bArr3, parseEntityMessage.parameters, str12, progress6, localEventEngine5);
                                                    completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "combatCancelRpc");
                                                    localEventEngine6 = localEventEngine5;
                                                } else {
                                                    if (!Arrays.equals(parseEntityMessage.f20id, bArr3)) {
                                                        localEventEngine6 = localEventEngine5;
                                                    } else if (!Arrays.equals(parseEntityMessage.methodMd5, ENTER_PLACE)) {
                                                        localEventEngine6 = localEventEngine5;
                                                    } else {
                                                        String str26 = str10;
                                                        String stringValue2 = BsonLite.stringValue(parseEntityMessage.parameters, str26);
                                                        if (stringValue2 == null) {
                                                            Integer intValue10 = BsonLite.intValue(parseEntityMessage.parameters, str26);
                                                            stringValue2 = intValue10 == null ? null : Integer.toString(intValue10.intValue());
                                                        }
                                                        localEventEngine6 = localEventEngine5;
                                                        if (localEventEngine6 != null) {
                                                            localEventEngine6.enterPlace(stringValue2);
                                                            this.tutorialStore.save(str12, progress6);
                                                        }
                                                        LocalDiagnosticLog.m16i(str2, "enterPlace completed scene=" + stringValue2);
                                                    }
                                                    if (Arrays.equals(parseEntityMessage.f20id, bArr3) && Arrays.equals(parseEntityMessage.methodMd5, TUTORIAL_BEGIN)) {
                                                        StringBuilder sb2 = new StringBuilder();
                                                        sb2.append("tutorialBegin accepted pending=");
                                                        sb2.append(localEventEngine6 == null ? Collections.emptySet() : localEventEngine6.processingNewbees());
                                                        LocalDiagnosticLog.m16i(str2, sb2.toString());
                                                    } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && Arrays.equals(parseEntityMessage.methodMd5, TUTORIAL_END)) {
                                                        LocalDiagnosticLog.m16i(str2, "tutorialEnd accepted parameters=" + BsonLite.debugDocument(parseEntityMessage.parameters));
                                                    } else if (Arrays.equals(parseEntityMessage.f20id, bArr3) && Arrays.equals(parseEntityMessage.methodMd5, digest("exceptUpload"))) {
                                                        handleClientException(parseEntityMessage.parameters);
                                                        completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "exceptUpload");
                                                    } else {
                                                        String hex = hex(parseEntityMessage.methodMd5);
                                                        LocalDiagnosticLog.m16i(str2, "unhandled RPC " + knownMethodName(hex) + " md5=" + hex + " parameters=" + BsonLite.debugDocument(parseEntityMessage.parameters));
                                                        StatusListener statusListener2 = this.listener;
                                                        StringBuilder sb3 = new StringBuilder();
                                                        sb3.append("收到未实现的业务 RPC：");
                                                        sb3.append(knownMethodName(hex));
                                                        sb3.append("\nMD5：");
                                                        sb3.append(hex);
                                                        statusListener2.onStatus(true, sb3.toString());
                                                        completeEmptyCallback(bufferedOutputStream, bArr3, parseEntityMessage.parameters, "unknown:" + knownMethodName(hex));
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            localEventEngine7 = localEventEngine6;
                            str18 = str12;
                            progress7 = progress6;
                            str17 = str6;
                            bArr8 = bArr6;
                        }
                        str5 = str16;
                        if (progress7 != null && !str5.equals(progress7.weekCommit)) {
                            str5 = progress7.weekCommit;
                            hashSet2.clear();
                            hashSet3.clear();
                            linkedHashMap.clear();
                        }
                        str16 = str5;
                        str14 = str2;
                        objectId2 = bArr3;
                        str15 = str3;
                        hashSet5 = hashSet;
                        objectId = bArr2;
                        bufferedInputStream2 = bufferedInputStream;
                        clientSession2 = clientSession;
                    } catch (IOException e2) {
                        String str27 = str14;
                        LocalDiagnosticLog.m18w(str27, "ignoring malformed entity RPC", e2);
                        this.listener.onStatus(true, "忽略无法解析的业务 RPC，连接保持中");
                        localEventEngine7 = localEventEngine8;
                        str18 = str18;
                        progress7 = progress7;
                        str14 = str27;
                        objectId2 = objectId2;
                        str17 = str17;
                        str15 = str15;
                        hashSet5 = hashSet5;
                        objectId = objectId;
                        bufferedInputStream2 = bufferedInputStream2;
                        bArr8 = bArr8;
                        clientSession2 = clientSession;
                    }
                } else {
                    bArr = bArr8;
                    str = str17;
                    str2 = str14;
                    hashSet = hashSet5;
                    bArr2 = objectId;
                    bufferedInputStream = bufferedInputStream2;
                    localEventEngine = localEventEngine8;
                    progress = progress7;
                    str3 = str15;
                    bArr3 = objectId2;
                    str4 = str18;
                    LocalDiagnosticLog.m16i(str2, "unhandled service method " + readFrame.method);
                }
                localEventEngine7 = localEventEngine;
                str18 = str4;
                progress7 = progress;
                str5 = str16;
                str17 = str;
                bArr8 = bArr;
                if (progress7 != null) {
                    str5 = progress7.weekCommit;
                    hashSet2.clear();
                    hashSet3.clear();
                    linkedHashMap.clear();
                }
                str16 = str5;
                str14 = str2;
                objectId2 = bArr3;
                str15 = str3;
                hashSet5 = hashSet;
                objectId = bArr2;
                bufferedInputStream2 = bufferedInputStream;
                clientSession2 = clientSession;
            } catch (EOFException e3) {
                if (clientSession == this.activeSession) {
                    this.listener.onStatus(true, "游戏已断开\n等待重新连接");
                    return;
                }
                return;
            }
        }
    }

    private boolean handleDailyRpc(OutputStream outputStream, byte[] bArr, byte[] bArr2, byte[] bArr3, String str, LocalTutorialStore.Progress progress) throws IOException {
        if (str == null || progress == null) {
            return false;
        }
        for (String str2 : LocalDailyEngine.METHODS) {
            if (Arrays.equals(bArr2, digest(str2))) {
                for (LocalResourceEngine.Reply reply : this.profileProvider.updateServices(str, str2, bArr3, progress).replies) {
                    writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
                }
                LocalDiagnosticLog.m16i(TAG, "daily feature=" + str2 + " account=" + str + " params=" + BsonLite.debugDocument(bArr3));
                return true;
            }
        }
        return false;
    }

    private boolean handleHomeRpc(OutputStream outputStream, byte[] bArr, byte[] bArr2, byte[] bArr3, String str, LocalTutorialStore.Progress progress) throws IOException {
        if (str == null || progress == null) {
            return false;
        }
        String[] strArr = LocalHomeEngine.METHODS;
        int length = strArr.length;
        for (int i = SERVICE_CONNECT_SERVER; i < length; i += SERVICE_ENTITY_MESSAGE) {
            String str2 = strArr[i];
            if (Arrays.equals(bArr2, digest(str2))) {
                emitHomeResult(outputStream, bArr, this.profileProvider.updateServices(str, str2, bArr3, progress), BsonLite.intValue(bArr3, "_cbid_"));
                return true;
            }
        }
        return false;
    }

    private byte[] emitHomeResult(OutputStream outputStream, byte[] bArr, LocalResourceEngine.Result result, Integer num) throws IOException {
        byte[] bArr2 = BsonLite.EMPTY_DOCUMENT;
        for (LocalResourceEngine.Reply reply : result.replies) {
            if ("q7HomeCallback".equals(reply.method)) {
                bArr2 = reply.parameters;
            } else {
                writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
            }
        }
        if (num != null) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("serverCallbackCarrier"), BsonLite.document("_r_", bArr2, "_cbid_", num)));
        }
        return bArr2;
    }

    private boolean handleSpecialItemRpc(OutputStream outputStream, byte[] bArr, byte[] bArr2, byte[] bArr3, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine) throws IOException {
        String str2 = "buyCardMallItem";
        if (!Arrays.equals(bArr2, digest("buyCardMallItem"))) {
            str2 = Arrays.equals(bArr2, digest("requestSandglassToday")) ? "requestSandglassToday" : null;
        }
        if (str2 == null || !LocalSpecialItemEngine.handles(str2, bArr3) || str == null || progress == null) {
            return false;
        }
        LocalResourceEngine.Result updateServices = this.profileProvider.updateServices(str, str2, bArr3, progress);
        this.tutorialStore.save(str, progress);
        if (localEventEngine != null) {
            localEventEngine.refreshProfile(BsonLite.withPatrolProgress(updateServices.profile, progress));
        }
        for (LocalResourceEngine.Reply reply : updateServices.replies) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
        }
        LocalDiagnosticLog.m16i(TAG, "special item account=" + str + " method=" + str2 + " params=" + BsonLite.debugDocument(bArr3));
        return true;
    }

    private boolean handleWeekRpc(OutputStream outputStream, byte[] bArr, byte[] bArr2, byte[] bArr3, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine) throws IOException {
        if (str == null || progress == null) {
            return false;
        }
        if (Arrays.equals(bArr2, digest("updateClientAvatarAsk"))) {
            byte[] load = this.profileProvider.load(str, progress);
            this.tutorialStore.save(str, progress);
            byte[] withLocalCityState = BsonLite.withLocalCityState(BsonLite.withTutorialProgress(load, progress), progress);
            if (LocalWeekEngine.awaitingEntrance(withLocalCityState, progress)) {
                writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("evalCode"), BsonLite.document("s", "exec('gg.event_trigger_cache = None\\ngg.avatar_status = None')")));
                LocalDiagnosticLog.m16i(TAG, "week entrance transient cache reset account=" + str);
            }
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("updateClientAvatarReply"), BsonLite.document("s", new BsonLite.BinaryValue(LocalAvatarPayload.encode(withLocalCityState)))));
            if (localEventEngine != null) {
                localEventEngine.refreshProfile(withLocalCityState);
            }
            return true;
        }
        String[] strArr = LocalWeekEngine.METHODS;
        int length = strArr.length;
        for (int i = SERVICE_CONNECT_SERVER; i < length; i += SERVICE_ENTITY_MESSAGE) {
            String str2 = strArr[i];
            if (Arrays.equals(bArr2, digest(str2))) {
                String str3 = progress.weekCommit;
                LocalResourceEngine.Result updateServices = this.profileProvider.updateServices(str, str2, bArr3, progress);
                this.tutorialStore.save(str, progress);
                if (localEventEngine != null && !str3.equals(progress.weekCommit)) {
                    localEventEngine.resetWeekContext(updateServices.profile);
                }
                for (LocalResourceEngine.Reply reply : updateServices.replies) {
                    writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
                }
                LocalDiagnosticLog.m16i(TAG, "week lifecycle account=" + str + " method=" + str2 + " week=" + LocalResourceEngine.value(LocalResourceEngine.doc(updateServices.profile, "weeknum"), "w"));
                return true;
            }
        }
        return false;
    }

    private void handleSetPlayerName(OutputStream outputStream, byte[] bArr, byte[] bArr2, String str) throws IOException {
        String stringValue = BsonLite.stringValue(bArr2, "n");
        Boolean boolValue = BsonLite.boolValue(bArr2, "in");
        boolean z = (str == null || stringValue == null || stringValue.trim().isEmpty() || stringValue.length() > 24) ? false : true;
        if (z) {
            this.profileProvider.savePlayerName(str, stringValue);
        }
        writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("setPlayerNameReply"), BsonLite.playerNameReplyDocument(z, Boolean.TRUE.equals(boolValue))));
        LocalDiagnosticLog.m16i(TAG, "setPlayerName completed account=" + str + " playerName=" + stringValue + " accepted=" + z + " isNewName=" + boolValue);
    }

    private void handleClientException(byte[] bArr) {
        byte[] documentValue = BsonLite.documentValue(bArr, "e");
        Iterator<String> it = BsonLite.keys(documentValue).iterator();
        while (it.hasNext()) {
            byte[] documentValue2 = BsonLite.documentValue(documentValue, it.next());
            String stringValue = BsonLite.stringValue(documentValue2, "1");
            if (stringValue != null && !stringValue.trim().isEmpty()) {
                LocalDiagnosticLog.m14e(TAG, "client exception report id=" + BsonLite.stringValue(documentValue2, "0") + "\n" + stringValue);
                if (!stringValue.contains("BaseException: delay_exception_gc")) {
                    String[] split = stringValue.trim().split("\r?\n");
                    this.listener.onStatus(true, "客户端异常报告：" + split[split.length - SERVICE_ENTITY_MESSAGE]);
                }
            }
        }
    }

    private boolean handleServiceRpc(OutputStream outputStream, byte[] bArr, byte[] bArr2, byte[] bArr3, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine) throws IOException {
        Integer intValue;
        LocalEventEngine localEventEngine2 = localEventEngine;
        ArrayList<String> arrayList = new ArrayList(Arrays.asList("requestRecoverJingshenli", "readPendingNote", "readPlayerNote", "readPrivateMsg", "readSocialMsg", "replyPrivateMsg", "triggerSocialMsgEvent", "syncAllIntelligenceRequest", "readTodayIntelligence", "openIntelligenceRequest", "handleIntelligenceRequest", "delDestroyBuilding", "actionRewardRequest", "updateSouvenirLevel", "tryGiftToHero", "puzzleRoomGetClue"));
        arrayList.addAll(Arrays.asList(LocalCommunityEngine.METHODS));
        arrayList.addAll(Arrays.asList(LocalStoryEngine.METHODS));
        arrayList.addAll(Arrays.asList(LocalStoryClueEngine.METHODS));
        arrayList.addAll(Arrays.asList(LocalWingDrugEngine.METHODS));
        arrayList.addAll(LocalStoryDiscussion.METHODS);
        for (String str2 : arrayList) {
            if (Arrays.equals(bArr2, digest(str2))) {
                LocalResourceEngine.Result updateServices = this.profileProvider.updateServices(str, str2, bArr3, progress);
                if ((LocalHeroGiftEngine.handles(str2) || LocalWingDrugEngine.handles(str2) || "replyPrivateMsg".equals(str2)) && localEventEngine2 != null) {
                    localEventEngine2.refreshProfile(updateServices.profile);
                }
                boolean equals = "readPlayerNote".equals(str2);
                String str3 = " method=";
                String str4 = TAG;
                if (equals || "readPendingNote".equals(str2)) {
                    LocalDiagnosticLog.m16i(TAG, "diary read account=" + str + " method=" + str2 + " " + LocalDiaryEngine.diagnostic(updateServices.profile, progress));
                }
                if (LocalIntelligenceEngine.handles(str2) || LocalHeroGiftEngine.handles(str2) || "triggerSocialMsgEvent".equals(str2) || "replyPrivateMsg".equals(str2)) {
                    this.tutorialStore.save(str, progress);
                }
                for (LocalResourceEngine.Reply reply : updateServices.replies) {
                    if ("q7StartSocialEvent".equals(reply.method)) {
                        Integer intValue2 = BsonLite.intValue(reply.parameters, "e");
                        if (localEventEngine2 == null || intValue2 == null || !localEventEngine2.startEvent(intValue2.intValue())) {
                            localEventEngine2 = localEventEngine;
                        } else {
                            this.tutorialStore.save(str, progress);
                            syncPuzzleStart(outputStream, bArr, str, progress, localEventEngine, intValue2.intValue());
                            syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
                            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("startEventReply"), BsonLite.eventReplyDocument(intValue2.intValue(), SERVICE_ENTITY_MESSAGE)));
                            localEventEngine2 = localEventEngine;
                            str4 = str4;
                            str3 = str3;
                        }
                    } else {
                        String str5 = str4;
                        String str6 = str3;
                        if (!"triggerIntelligenceEvents".equals(reply.method) || ((intValue = BsonLite.intValue(reply.parameters, "e")) != null && (progress.availableEvents.contains(intValue) || progress.processingEvents.contains(intValue)))) {
                            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
                            localEventEngine2 = localEventEngine;
                            str4 = str5;
                            str3 = str6;
                        } else {
                            localEventEngine2 = localEventEngine;
                            str4 = str5;
                            str3 = str6;
                        }
                    }
                }
                String str7 = str4;
                String str8 = str3;
                if (LocalWingDrugEngine.handles(str2)) {
                    byte[] sent = LocalStoryProgressDelivery.sent(updateServices);
                    if (!BsonLite.keys(sent).isEmpty()) {
                        this.profileProvider.updateServices(str, "q7AckStoryProgress", sent, progress);
                    }
                }
                if (("replyPrivateMsg".equals(str2) || LocalHeroGiftEngine.handles(str2) || LocalWingDrugEngine.handles(str2)) && localEventEngine != null) {
                    syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
                    writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("pushEvents"), BsonLite.eventListsDocument(localEventEngine.availableEvents(), localEventEngine.processingEvents())));
                }
                LocalDiagnosticLog.m16i(str7, "city service account=" + str + str8 + str2);
                return true;
            }
        }
        return false;
    }

    private void syncPuzzleStart(OutputStream outputStream, byte[] bArr, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine, int i) throws IOException {
        LocalEventCatalog localEventCatalog = this.eventCatalog;
        if (localEventCatalog == null || !localEventCatalog.puzzleRooms.containsKey(Integer.valueOf(i))) {
            return;
        }
        LocalResourceEngine.Result updateServices = this.profileProvider.updateServices(str, "q7PuzzleBegin", BsonLite.document("e", Integer.valueOf(i)), progress);
        if (updateServices.replies.stream().noneMatch(new Predicate() { // from class: com.project7.localmanager.LocalGatewayServer$$ExternalSyntheticLambda3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean equals;
                equals = "syncPuzzleRoomClue".equals(((LocalResourceEngine.Reply) obj).method);
                return equals;
            }
        })) {
            throw new IOException("authorized puzzle room could not resume event=" + i);
        }
        localEventEngine.refreshProfile(updateServices.profile);
        for (LocalResourceEngine.Reply reply : updateServices.replies) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
        }
    }

    private void closePuzzleBeforeTrace(String str, List<Integer> list, String str2, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine) throws IOException {
        if (!"ui".equals(str) || !list.contains(Integer.valueOf(SERVICE_ENTITY_MESSAGE)) || this.eventCatalog == null) {
            return;
        }
        Iterator it = new ArrayList(progress.processingEvents).iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            if (this.eventCatalog.puzzleRooms.containsKey(Integer.valueOf(intValue))) {
                localEventEngine.refreshProfile(this.profileProvider.updateServices(str2, "q7PuzzleExit", BsonLite.document("e", Integer.valueOf(intValue)), progress).profile);
            }
        }
    }

    private void syncEventEffects(OutputStream outputStream, byte[] bArr, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine) throws IOException {
        emitEventEffects(outputStream, bArr, str, progress, localEventEngine, prepareEventEffects(str, progress, localEventEngine));
    }

    private LocalResourceEngine.Result prepareEventEffects(String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine) throws IOException {
        int i;
        if (localEventEngine != null) {
            localEventEngine.refreshProfile(this.profileProvider.snapshot(str, progress));
        }
        Set<Integer> emptySet = localEventEngine == null ? Collections.emptySet() : localEventEngine.messagePublishers();
        LocalResourceEngine.Result updateServices = this.profileProvider.updateServices(str, "effects", BsonLite.EMPTY_DOCUMENT, progress);
        if (localEventEngine == null) {
            return updateServices;
        }
        for (int i2 = SERVICE_CONNECT_SERVER; i2 < 8; i2 += SERVICE_ENTITY_MESSAGE) {
            localEventEngine.refreshProfile(updateServices.profile);
            Set<Integer> messagePublishers = localEventEngine.messagePublishers();
            if (emptySet.containsAll(messagePublishers)) {
                return updateServices;
            }
            emptySet.addAll(messagePublishers);
            LocalResourceEngine.Result updateServices2 = this.profileProvider.updateServices(str, "effects", BsonLite.EMPTY_DOCUMENT, progress);
            for (LocalResourceEngine.Reply reply : updateServices2.replies) {
                String key = LocalStoryProgressDelivery.key(reply);
                for (int i3 = SERVICE_CONNECT_SERVER; i3 < updateServices.replies.size(); i3 += SERVICE_ENTITY_MESSAGE) {
                    LocalResourceEngine.Reply reply2 = updateServices.replies.get(i3);
                    if ((key != null && key.equals(LocalStoryProgressDelivery.key(reply2))) || (reply2.method.equals(reply.method) && Arrays.equals(reply2.parameters, reply.parameters))) {
                        i = i3;
                        break;
                    }
                }
                i = -1;
                if (i >= 0) {
                    updateServices.replies.set(i, reply);
                } else {
                    updateServices.replies.add(reply);
                }
            }
            updateServices.profile = updateServices2.profile;
        }
        localEventEngine.refreshProfile(updateServices.profile);
        LocalDiagnosticLog.m17w(TAG, "story message closure budget exhausted; no player event forced account=" + str);
        return updateServices;
    }

    private void emitEventEffects(OutputStream outputStream, byte[] bArr, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine, LocalResourceEngine.Result result) throws IOException {
        for (LocalResourceEngine.Reply reply : result.replies) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
        }
        for (LocalResourceEngine.Reply reply2 : result.replies) {
            if ("addCenterConfidence".equals(reply2.method)) {
                LocalDiagnosticLog.m16i(TAG, "story confidence delivered delta=" + LocalResourceEngine.value(reply2.parameters, "v") + " total=" + LocalResourceEngine.value(reply2.parameters, "c"));
            }
        }
        byte[] sent = LocalStoryProgressDelivery.sent(result);
        if (!BsonLite.keys(sent).isEmpty()) {
            this.profileProvider.updateServices(str, "q7AckStoryProgress", sent, progress);
        }
        acknowledgeCgNotices(str, progress, result);
        boolean anyMatch = result.replies.stream().anyMatch(new Predicate() { // from class: com.project7.localmanager.LocalGatewayServer$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean equals;
                equals = "get_all_area_info_reply".equals(((LocalResourceEngine.Reply) obj).method);
                return equals;
            }
        });
        for (LocalResourceEngine.Reply reply3 : result.replies) {
            if (!anyMatch && "updateBlackCore".equals(reply3.method)) {
                writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("get_all_area_info_reply"), BsonLite.allAreaInfoReplyDocument(isHighSchoolUnlocked(progress), progress, result.profile)));
                return;
            }
        }
    }

    private void acknowledgeCgNotices(String str, LocalTutorialStore.Progress progress, LocalResourceEngine.Result result) throws IOException {
        for (LocalResourceEngine.Reply reply : result.replies) {
            if ("procRewardSettlementCommon".equals(reply.method)) {
                List<Integer> intArrayValues = BsonLite.intArrayValues(LocalResourceEngine.doc(reply.parameters, "r"), "cg");
                if (!intArrayValues.isEmpty()) {
                    this.profileProvider.updateServices(str, "q7AckCgNotice", BsonLite.document("c", intArrayValues), progress);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v60 */
    private boolean handleBasicRpc(OutputStream outputStream, byte[] bArr, byte[] bArr2, byte[] bArr3, String str) throws IOException {
        if (Arrays.equals(bArr2, digest("remove_chat_channel_listener"))) {
            return true;
        }
        if (Arrays.equals(bArr2, digest("evalEcho"))) {
            LocalDiagnosticLog.m16i(TAG, "client data sync: " + BsonLite.stringValue(bArr3, "m"));
            return true;
        }
        if (Arrays.equals(bArr2, digest("checkGamePlaySwitchAsk"))) {
            String stringValue = BsonLite.stringValue(bArr3, "g");
            ?? r6 = ("friendsummon".equals(stringValue) || "summon".equals(stringValue) || "itemStore".equals(stringValue) || "huodongMain_2".equals(stringValue) || "huodongMain_42".equals(stringValue) || "huodongMain_215".equals(stringValue) || "memoryPalace".equals(stringValue) || "exchange".equals(stringValue) || "dancengxunluo".equals(stringValue) || "lunhuizhijing".equals(stringValue) || "furnitureSummon".equals(stringValue) || "funitureSummonLianchou".equals(stringValue) || "blackgate".equals(stringValue) || "heroliberate".equals(stringValue)) ? SERVICE_ENTITY_MESSAGE : SERVICE_CONNECT_SERVER;
            if ("friendsummon".equals(stringValue) || "summon".equals(stringValue)) {
                syncDrawCalendar(outputStream, bArr);
            }
            byte[] md5 = md5("checkGamePlaySwitchReply");
            Object[] objArr = new Object[6];
            objArr[SERVICE_CONNECT_SERVER] = "g";
            objArr[SERVICE_ENTITY_MESSAGE] = stringValue == null ? "" : stringValue;
            objArr[CLIENT_CONNECT_REPLY] = "s";
            objArr[CLIENT_CREATE_ENTITY] = Integer.valueOf((int) r6);
            objArr[4] = "m";
            objArr[CLIENT_ENTITY_MESSAGE] = r6 == 0 ? "此玩法尚未接入本地网关" : "";
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5, BsonLite.document(objArr)));
            LocalDiagnosticLog.m16i(TAG, "gameplay switch=" + stringValue + " enabled=" + ((boolean) r6));
            return true;
        }
        String[] strArr = {"buyMoney", "buyCardMallItem", "setSkinRequest", "queryItemDetail", "yuanbaoExchangeCrystal", "crystalExchangeSkinCoin", "buySkinRequest"};
        int i = SERVICE_CONNECT_SERVER;
        for (int i2 = 7; i < i2; i2 = 7) {
            String str2 = strArr[i];
            if (!Arrays.equals(bArr2, digest(str2))) {
                i += SERVICE_ENTITY_MESSAGE;
            } else {
                LocalCommerceEngine.Result updateCommerce = this.profileProvider.updateCommerce(str, str2, bArr3);
                for (Map.Entry<String, byte[]> entry : updateCommerce.replies.entrySet()) {
                    writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(entry.getKey()), entry.getValue()));
                }
                LocalDiagnosticLog.m16i(TAG, "commerce RPC completed account=" + str + " method=" + str2 + " success=" + (updateCommerce.replies.containsKey("showMessageStr") ^ SERVICE_ENTITY_MESSAGE));
                return true;
            }
        }
        if (Arrays.equals(bArr2, digest("syncServerTime"))) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("onSyncServerTime"), BsonLite.intDocument("t", (int) (System.currentTimeMillis() / 1000))));
            return true;
        }
        String[] strArr2 = {"setRoleIdRequest", "setDescribeRequest", "setBbsSkin", "read_cg", "changeName", "setHeadImage", "setImgState", "unlockCollectMark", "setHeroEmojiUsed", "requestEmojiRead", "addRecentEmoji", "setAssistHero", "requestNameCardChange", "setNameCardFirstSee", "setTitleShowList", "setBadgeShowList", "updateTitleNewState", "updateBadgeNewState", "updateTitleExchange", "requestUpdateCollectCover", "clearFirstGetFlag", "set_hero_shoucang"};
        int i3 = SERVICE_CONNECT_SERVER;
        for (int i4 = 22; i3 < i4; i4 = 22) {
            String str3 = strArr2[i3];
            if (!Arrays.equals(bArr2, digest(str3))) {
                i3 += SERVICE_ENTITY_MESSAGE;
            } else {
                LocalProfileEngine.Result updateProfile = this.profileProvider.updateProfile(str, str3, bArr3);
                if (updateProfile.callback != null) {
                    writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(updateProfile.callback), updateProfile.reply));
                }
                for (LocalResourceEngine.Reply reply : updateProfile.extras) {
                    writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
                }
                if ("changeName".equals(str3) && updateProfile.profile != null) {
                    writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("updateCrystal"), BsonLite.document("v", Integer.valueOf(LocalResourceEngine.value(updateProfile.profile, "crystal")), "bv", Integer.valueOf(LocalResourceEngine.value(updateProfile.profile, "bind_crystal")))));
                }
                StringBuilder sb = new StringBuilder();
                sb.append("profile RPC completed account=");
                sb.append(str);
                sb.append(" method=");
                sb.append(str3);
                sb.append(" parameters=");
                sb.append("setHeadImage".equals(str3) ? "<avatar metadata/image redacted>" : BsonLite.debugDocument(bArr3));
                sb.append(" role=");
                sb.append(BsonLite.intValue(updateProfile.profile, "role"));
                LocalDiagnosticLog.m16i(TAG, sb.toString());
                return true;
            }
        }
        return false;
    }

    private boolean handleResourceRpc(OutputStream outputStream, byte[] bArr, byte[] bArr2, byte[] bArr3, String str) throws IOException {
        String[] strArr = {"queryMailDetail", "readMail", "delMail", "fetchAttachmentAndDel", "fetchAttachmentAndDelBatch", "fetchAttachmentAndDelBatch2", "requestLuckyDrawFile", "requestLuckyDrawCard", "requestFile", "requestQuitFile", "requestLuckyDrawFileAndOpenAll", "requestLuckyDrawAllLeftCard", "setChooseHeroes", "rookieGainRewards", "summoncoinExchange", "buyCardMallItem", "buyMoney", "getGiftCardReward", "monthCardGetFudaiReward", "GiftCardClickEvent", "requestGetCurMonHead", "rewardAchievement", "equipTreasureBatch", "unequipTreasure", "unequipAllTreasure", "unequipTreasureAllHero", "incHeroStarOrder", "tupoLiberateStage", "upgradeLiberate", "updateWanwufadian", "liberateChange", "upgradeAwakeStage", "changeAwakeSkinStyle", "seeAwakeSkillChanged", "changeTreasureForbid", "upgradeTreasure", "upgradeTreasureTargetLv", "upgradeAllTreasure", "memoryCrystalExchangeSuipian", "decomposeTreasure", "smeltTreasure", "transferTreasure", "composeTreasure", "composeTreasureBatch", "tupoTreasure", "refreshTreasureGoldAsk", "refreshTreasureOrangeAsk", "refreshTreasureApply", "refreshTreasureApplyOrange", "upgradeTreasureExp", "upgradeTreasureClassByItem", "requestItemHotRankList", "requestSaveTreasurePlan", "removeTreasurePlan", "requestUseTreasurePlan", "requestUnuseTreasurePlan", "dailyCheck", "requestMonDailyCheck", "requestMonDailyReCheck", "reqesutMonDailyTotalReward", "requestTaskList", "requesGetNewbieTaskReward", "requestNewbieTaskNodeReward", "updateNewAchievementTaskFromClient", "requestNewAchievementReward", "requestNewAchievementAutoShow"};
        for (int i = SERVICE_CONNECT_SERVER; i < 66; i += SERVICE_ENTITY_MESSAGE) {
            String str2 = strArr[i];
            if (Arrays.equals(bArr2, digest(str2))) {
                long nanoTime = System.nanoTime();
                LocalResourceEngine.Result updateResources = this.profileProvider.updateResources(str, str2, bArr3);
                for (LocalResourceEngine.Reply reply : updateResources.replies) {
                    writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
                }
                LocalDiagnosticLog.m16i(TAG, "resource RPC account=" + str + " method=" + str2 + " parameters=" + BsonLite.debugDocument(bArr3) + " replies=" + updateResources.replies.size() + " elapsedMs=" + ((System.nanoTime() - nanoTime) / 1000000));
                return true;
            }
        }
        return false;
    }

    private void syncClientCompatibility(OutputStream outputStream, byte[] bArr) throws IOException {
        String clientCompatibility = this.profileProvider.clientCompatibility();
        if (!clientCompatibility.isEmpty()) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("evalCode"), BsonLite.document("s", LocalClientCompatibility.encode(clientCompatibility))));
        }
    }

    private void syncTutorialCityState(OutputStream outputStream, byte[] bArr, String str, LocalTutorialStore.Progress progress, int i) throws IOException {
        if (isHighSchoolUnlocked(progress)) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("get_all_area_info_reply"), BsonLite.allAreaInfoReplyDocument(true, progress, this.profileProvider.load(str, progress))));
            LocalDiagnosticLog.m16i(TAG, "city battle state refreshed after event=" + i);
        }
    }

    private void syncTutorialCityCompletion(OutputStream outputStream, byte[] bArr, String str, LocalTutorialStore.Progress progress, int i) throws IOException {
        if (i == 1004 || i == 1047 || i == 1013) {
            syncTutorialCityState(outputStream, bArr, str, progress, i);
        }
    }

    private void refreshResourceProfile(byte[] bArr, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine) throws IOException {
        if (localEventEngine == null || Arrays.equals(bArr, digest("requestItemHotRankList"))) {
            return;
        }
        String[] strArr = {"incHeroStarOrder", "tupoLiberateStage", "upgradeLiberate", "updateWanwufadian", "liberateChange", "upgradeAwakeStage", "changeAwakeSkinStyle", "seeAwakeSkillChanged", "rewardAchievement", "requestNewAchievementReward", "requestNewAchievementAutoShow", "updateNewAchievementTaskFromClient"};
        for (int i = SERVICE_CONNECT_SERVER; i < 12; i += SERVICE_ENTITY_MESSAGE) {
            if (Arrays.equals(bArr, digest(strArr[i]))) {
                localEventEngine.refreshProfile(this.profileProvider.snapshot(str, progress));
                return;
            }
        }
        String[] strArr2 = {"requestLuckyDrawFile", "requestLuckyDrawCard", "requestFile", "requestQuitFile", "requestLuckyDrawFileAndOpenAll", "requestLuckyDrawAllLeftCard", "setChooseHeroes"};
        for (int i2 = SERVICE_CONNECT_SERVER; i2 < 7; i2 += SERVICE_ENTITY_MESSAGE) {
            if (Arrays.equals(bArr, digest(strArr2[i2]))) {
                localEventEngine.refreshProfile(this.profileProvider.snapshot(str, progress));
                return;
            }
        }
        Iterator<String> it = LocalTreasureOperationEngine.METHODS.iterator();
        while (it.hasNext()) {
            if (Arrays.equals(bArr, digest(it.next()))) {
                localEventEngine.refreshProfile(this.profileProvider.snapshot(str, progress));
                return;
            }
        }
        String[] strArr3 = {"equipTreasureBatch", "unequipTreasure", "unequipAllTreasure", "unequipTreasureAllHero", "requestSaveTreasurePlan", "removeTreasurePlan", "requestUseTreasurePlan", "requestUnuseTreasurePlan", "changeTreasureForbid", "upgradeTreasure", "upgradeTreasureTargetLv", "upgradeAllTreasure"};
        for (int i3 = SERVICE_CONNECT_SERVER; i3 < 12; i3 += SERVICE_ENTITY_MESSAGE) {
            if (Arrays.equals(bArr, digest(strArr3[i3]))) {
                localEventEngine.refreshProfile(this.profileProvider.snapshot(str, progress));
                return;
            }
        }
        localEventEngine.refreshProfile(this.profileProvider.snapshot(str, progress));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void handleReliableRpc(OutputStream outputStream, byte[] bArr, byte[] bArr2, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine, Set<Integer> set, Set<Integer> set2, Map<Integer, LocalPatrolEngine.Result> map, Set<Integer> set3) throws IOException {
        byte[] bArr3;
        String str2;
        String str3;
        Integer num;
        String str4;
        String str5;
        byte[] bArr4;
        Integer num2;
        Set<Integer> set4;
        byte[] bArr5;
        Object[] objArr;
        LocalEventEngine localEventEngine2;
        Set<Integer> set5;
        Integer num3;
        LocalEventEngine localEventEngine3;
        Integer num4;
        String str6;
        String str7;
        String str8;
        String str9;
        byte[] bArr6;
        Integer num5;
        boolean z;
        Object obj;
        String str10;
        int i;
        char c;
        Map<Integer, LocalPatrolEngine.Result> map2;
        Object obj2;
        String str11;
        String str12;
        String str13;
        Integer num6;
        Integer num7;
        String str14;
        String str15;
        String str16;
        boolean z2;
        LocalGatewayServer localGatewayServer = this;
        long nanoTime = System.nanoTime();
        byte[] documentValue = BsonLite.documentValue(bArr2, "w");
        if (documentValue == null) {
            LocalDiagnosticLog.m17w(TAG, "reliableRpcCall missing wrapper");
            return;
        }
        Integer intValue = BsonLite.intValue(documentValue, "r");
        String stringValue = BsonLite.stringValue(documentValue, "m");
        byte[] documentValue2 = BsonLite.documentValue(documentValue, "p");
        Integer intValue2 = BsonLite.intValue(bArr2, "_cbid_");
        if (intValue == null) {
            LocalDiagnosticLog.m17w(TAG, "reliableRpcCall missing sequence");
            return;
        }
        localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("reliableRpcAck"), BsonLite.intDocument("s", intValue.intValue())));
        StringBuilder sb = new StringBuilder();
        sb.append("reliable RPC acknowledged seq=");
        sb.append(intValue);
        sb.append(" method=");
        sb.append(stringValue);
        sb.append(" callback=");
        sb.append(intValue2);
        sb.append(" parameters=");
        sb.append("setHeadImage".equals(stringValue) ? "<avatar metadata/image redacted>" : BsonLite.debugDocument(documentValue2));
        LocalDiagnosticLog.m16i(TAG, sb.toString());
        if (("enterPatrolRequest".equals(stringValue) || "patrolReward".equals(stringValue)) && map.containsKey(intValue)) {
            if (intValue2 != null) {
                localGatewayServer.completeCallback(outputStream, bArr, intValue2.intValue(), stringValue);
            }
            LocalDiagnosticLog.m16i(TAG, "duplicate patrol RPC ignored seq=" + intValue + " method=" + stringValue);
            return;
        }
        if ("combatOfflineRequest".equals(stringValue)) {
            handleCombatAdmission(outputStream, bArr, str, progress, localEventEngine, set, set3, intValue.intValue(), documentValue2);
            if (intValue2 != null) {
                localGatewayServer.completeCallback(outputStream, bArr, intValue2.intValue(), stringValue);
            }
            localGatewayServer.listener.onStatus(true, "已处理业务 RPC：" + stringValue + "\n序号：" + intValue);
            long nanoTime2 = (System.nanoTime() - nanoTime) / 1000000;
            if (nanoTime2 >= 250) {
                LocalDiagnosticLog.m17w(TAG, "slow reliable RPC method=" + stringValue + " seq=" + intValue + " elapsedMs=" + nanoTime2);
                return;
            }
            return;
        }
        if (!"setChooseHeroes".equals(stringValue) && ((LocalCommerceEngine.handles(stringValue) || LocalMailEngine.handles(stringValue) || LocalDrawEngine.handles(stringValue) || LocalTreasurePlanEngine.handles(stringValue) || LocalEquipmentEngine.handles(stringValue) || LocalTreasureUpgradeEngine.handles(stringValue) || LocalTreasureOperationEngine.handles(stringValue) || LocalMemoryExchangeEngine.handles(stringValue) || "puzzleRoomGetClue".equals(stringValue) || "setHeadImage".equals(stringValue) || "setImgState".equals(stringValue) || LocalHeroGrowthEngine.handles(stringValue) || LocalHeroLiberateEngine.handles(stringValue) || LocalHeroAwakeEngine.handles(stringValue) || "set_hero_shoucang".equals(stringValue) || "getGiftCardReward".equals(stringValue) || "monthCardGetFudaiReward".equals(stringValue) || "requestGetCurMonHead".equals(stringValue) || "rewardAchievement".equals(stringValue) || "requestNewAchievementReward".equals(stringValue) || "requestNewAchievementAutoShow".equals(stringValue)) && !set3.add(intValue))) {
            if (intValue2 != null) {
                localGatewayServer.completeCallback(outputStream, bArr, intValue2.intValue(), stringValue);
            }
            LocalDiagnosticLog.m16i(TAG, "duplicate commerce RPC ignored seq=" + intValue + " method=" + stringValue);
            return;
        }
        Integer num8 = null;
        Integer num9 = null;
        Integer num10 = null;
        Object nextValue = null;
        Object nextValue2 = null;
        if (stringValue != null && LocalHomeEngine.handles(stringValue)) {
            HomeCallbacks homeCallbacks = localGatewayServer.homeCallbacks.get();
            if (homeCallbacks.owner != set3 || !Objects.equals(homeCallbacks.account, str)) {
                homeCallbacks.owner = set3;
                homeCallbacks.account = str;
                homeCallbacks.values.clear();
            }
            if (set3.add(intValue)) {
                homeCallbacks.values.put(intValue, localGatewayServer.emitHomeResult(outputStream, bArr, localGatewayServer.profileProvider.updateServices(str, stringValue, documentValue2, progress), intValue2));
                if (homeCallbacks.values.size() > 128) {
                    homeCallbacks.values.remove(homeCallbacks.values.keySet().iterator().next());
                }
                z2 = true;
            } else if (intValue2 == null) {
                z2 = true;
            } else {
                byte[] bArr7 = homeCallbacks.values.get(intValue);
                if (bArr7 == null) {
                    bArr7 = BsonLite.document("_result_", false);
                }
                z2 = true;
                localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("serverCallbackCarrier"), BsonLite.document("_r_", bArr7, "_cbid_", intValue2)));
            }
            str6 = " seq=";
            num2 = intValue;
            str7 = stringValue;
            z = z2;
            str8 = TAG;
            num5 = null;
        } else {
            if (stringValue != null) {
                byte[] digest = digest(stringValue);
                bArr3 = documentValue2;
                str2 = TAG;
                str5 = "m";
                str3 = " seq=";
                num = intValue;
                str4 = " method=";
                if (handleCombatCancelRpc(outputStream, bArr, digest, bArr3, str, progress)) {
                    if ("battleStageGiveup".equals(stringValue)) {
                        finishAbandonedStory(outputStream, bArr, bArr3, str, progress, localEventEngine);
                    }
                    num2 = num;
                    num4 = intValue2;
                    str6 = str3;
                    localGatewayServer = this;
                    str7 = stringValue;
                    str8 = str2;
                    num5 = num4;
                    z = true;
                }
            } else {
                bArr3 = documentValue2;
                str2 = TAG;
                str3 = " seq=";
                num = intValue;
                str4 = " method=";
                str5 = "m";
            }
            if ("battleYazhiAsk".equals(stringValue)) {
                if (set3.add(num)) {
                    handleSuppressionRpc(outputStream, bArr, digest(stringValue), bArr3, str, progress, localEventEngine, set, set2);
                }
                num2 = num;
                num4 = intValue2;
                str6 = str3;
                localGatewayServer = this;
                str7 = stringValue;
                str8 = str2;
            } else if ("battleRealFailWithEventMode".equals(stringValue)) {
                finishAbandonedStory(outputStream, bArr, bArr3, str, progress, localEventEngine);
                num2 = num;
                num4 = intValue2;
                str6 = str3;
                localGatewayServer = this;
                str7 = stringValue;
                str8 = str2;
            } else if (stringValue == null || !LocalDailyEngine.METHODS.contains(stringValue)) {
                Integer num11 = num;
                localGatewayServer = this;
                if (stringValue != null) {
                    bArr4 = bArr3;
                    if (LocalSpecialItemEngine.handles(stringValue, bArr4)) {
                        num2 = num11;
                        handleSpecialItemRpc(outputStream, bArr, digest(stringValue), bArr4, str, progress, localEventEngine);
                        num4 = intValue2;
                        str6 = str3;
                        str7 = stringValue;
                        str8 = str2;
                    }
                } else {
                    bArr4 = bArr3;
                }
                if (stringValue != null && (LocalWeekEngine.handles(stringValue) || "updateClientAvatarAsk".equals(stringValue))) {
                    if (!set3.add(num11)) {
                        num2 = num11;
                        num4 = intValue2;
                        str6 = str3;
                        str7 = stringValue;
                        str8 = str2;
                    } else {
                        num2 = num11;
                        handleWeekRpc(outputStream, bArr, digest(stringValue), bArr4, str, progress, localEventEngine);
                        num4 = intValue2;
                        str6 = str3;
                        str7 = stringValue;
                        str8 = str2;
                    }
                } else if (LocalConstructionEngine.handles(stringValue)) {
                    if (!set3.add(num11)) {
                        num2 = num11;
                        num4 = intValue2;
                        str6 = str3;
                        str7 = stringValue;
                        str8 = str2;
                    } else {
                        num2 = num11;
                        handleConstructionRpc(outputStream, bArr, digest(stringValue), bArr4, str, progress, localEventEngine, intValue2);
                        str7 = stringValue;
                        z = SERVICE_ENTITY_MESSAGE;
                        num5 = null;
                        str8 = str2;
                        str6 = str3;
                    }
                } else if (stringValue != null && LocalStoryEngine.handles(stringValue)) {
                    if ((("q7StoryList".equals(stringValue) || "findStoryData".equals(stringValue) || "requestStoryHttpInfo".equals(stringValue) || "requestSelfStoryHttpInfo".equals(stringValue)) ? SERVICE_ENTITY_MESSAGE : false) || set3.add(num11)) {
                        num2 = num11;
                        handleServiceRpc(outputStream, bArr, digest(stringValue), bArr4, str, progress, localEventEngine);
                    } else {
                        num2 = num11;
                    }
                    num4 = intValue2;
                    str6 = str3;
                    str7 = stringValue;
                    str8 = str2;
                } else {
                    if (stringValue == null) {
                        num2 = num11;
                    } else if (!LocalServiceEngine.handles(stringValue) && !LocalIntelligenceEngine.handles(stringValue) && !LocalCommunityEngine.handles(stringValue) && !LocalHeroGiftEngine.handles(stringValue) && !LocalWingDrugEngine.handles(stringValue) && !"puzzleRoomGetClue".equals(stringValue) && !"actionRewardRequest".equals(stringValue) && !"updateSouvenirLevel".equals(stringValue)) {
                        num2 = num11;
                    } else if ("puzzleRoomGetClue".equals(stringValue) || set3.add(num11)) {
                        num2 = num11;
                        handleServiceRpc(outputStream, bArr, digest(stringValue), bArr4, str, progress, localEventEngine);
                        num4 = intValue2;
                        str6 = str3;
                        str7 = stringValue;
                        str8 = str2;
                    } else {
                        num2 = num11;
                        num4 = intValue2;
                        str6 = str3;
                        str7 = stringValue;
                        str8 = str2;
                    }
                    if (stringValue != null) {
                        bArr5 = bArr4;
                        if (!handleResourceRpc(outputStream, bArr, digest(stringValue), bArr4, str)) {
                            localEventEngine2 = localEventEngine;
                            set4 = set2;
                            objArr = SERVICE_ENTITY_MESSAGE;
                        } else if (localEventEngine != null) {
                            if (intValue2 == null) {
                                num5 = intValue2;
                            } else {
                                localGatewayServer.completeCallback(outputStream, bArr, intValue2.intValue(), stringValue);
                                num5 = null;
                            }
                            localGatewayServer.refreshResourceProfile(digest(stringValue), str, progress, localEventEngine);
                            if ("requestLuckyDrawFile".equals(stringValue) && localEventEngine.beginNewbeeForPanel(93, "card_box")) {
                                localGatewayServer.tutorialStore.save(str, progress);
                            }
                            z = SERVICE_ENTITY_MESSAGE;
                            localGatewayServer.triggerPendingNewbees(outputStream, bArr, localEventEngine, set2);
                            str7 = stringValue;
                            str8 = str2;
                            str6 = str3;
                        } else {
                            num4 = intValue2;
                            str6 = str3;
                            str7 = stringValue;
                            str8 = str2;
                        }
                    } else {
                        set4 = set2;
                        bArr5 = bArr4;
                        objArr = SERVICE_ENTITY_MESSAGE;
                        localEventEngine2 = localEventEngine;
                    }
                    if (stringValue != null) {
                        set5 = set4;
                        num3 = num2;
                        localEventEngine3 = localEventEngine2;
                        if (handleBasicRpc(outputStream, bArr, digest(stringValue), bArr5, str)) {
                            num4 = intValue2;
                            num2 = num3;
                            str6 = str3;
                            str7 = stringValue;
                            str8 = str2;
                        }
                    } else {
                        set5 = set4;
                        num3 = num2;
                        localEventEngine3 = localEventEngine2;
                    }
                    if ("incDayWhenNoActionVal".equals(stringValue)) {
                        num4 = intValue2;
                        num2 = num3;
                        str6 = str3;
                        str7 = stringValue;
                        str8 = str2;
                    } else if ("clearCurDailySettlement".equals(stringValue)) {
                        num4 = intValue2;
                        num2 = num3;
                        str6 = str3;
                        str7 = stringValue;
                        str8 = str2;
                    } else {
                        if ("canteenRequest".equals(stringValue)) {
                            num4 = intValue2;
                            num2 = num3;
                            str9 = str3;
                            str7 = stringValue;
                            str8 = str2;
                            bArr6 = bArr5;
                        } else if ("statusCheck".equals(stringValue)) {
                            num4 = intValue2;
                            num2 = num3;
                            str9 = str3;
                            str7 = stringValue;
                            str8 = str2;
                            bArr6 = bArr5;
                        } else if ("zhaiRequest".equals(stringValue)) {
                            handleRest(outputStream, bArr, str, progress, localEventEngine);
                            num4 = intValue2;
                            num2 = num3;
                            str6 = str3;
                            str7 = stringValue;
                            str8 = str2;
                        } else if ("statusSwitch".equals(stringValue)) {
                            String stringValue2 = BsonLite.stringValue(bArr5, "s");
                            if (stringValue2 == null) {
                                str16 = str2;
                                LocalDiagnosticLog.m17w(str16, "statusSwitch missing requested status");
                            } else {
                                str16 = str2;
                                if ("summon".equals(stringValue2)) {
                                    syncDrawCalendar(outputStream, bArr);
                                }
                                if (localEventEngine3 != null) {
                                    localEventEngine3.updateStatus(stringValue2);
                                    localGatewayServer.tutorialStore.save(str, progress);
                                }
                                localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("statusSwitchReply"), BsonLite.statusSwitchReplyDocument(stringValue2)));
                                LocalDiagnosticLog.m16i(str16, "statusSwitch completed status=" + stringValue2);
                            }
                            num4 = intValue2;
                            num2 = num3;
                            str6 = str3;
                            str7 = stringValue;
                            str8 = str16;
                        } else {
                            String str17 = str2;
                            if ("requestLuckyDrawFile".equals(stringValue)) {
                                Integer intValue3 = BsonLite.intValue(bArr5, "t");
                                int intValue4 = intValue3 == null ? SERVICE_ENTITY_MESSAGE : intValue3.intValue();
                                localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("replyLuckyDrawFile"), BsonLite.luckyDrawFileReplyDocument(true, intValue4)));
                                if (localEventEngine3 != null && localEventEngine3.beginNewbeeForPanel(93, "card_box")) {
                                    localGatewayServer.tutorialStore.save(str, progress);
                                    LocalDiagnosticLog.m16i(str17, "card-box tutorial activated by lucky draw request event=93");
                                }
                                localGatewayServer.triggerPendingNewbees(outputStream, bArr, localEventEngine3, set5);
                                LocalDiagnosticLog.m16i(str17, "lucky draw file opened type=" + intValue4);
                                num4 = intValue2;
                                num2 = num3;
                                str6 = str3;
                                str7 = stringValue;
                                str8 = str17;
                            } else if ("pullEvents".equals(stringValue)) {
                                if (localEventEngine3 != null) {
                                    q7ThrottledRefresh(localEventEngine3, localGatewayServer.profileProvider, str, progress);
                                }
                                Set<Integer> emptySet = localEventEngine3 == null ? Collections.emptySet() : localEventEngine.availableEvents();
                                Set<Integer> emptySet2 = localEventEngine3 == null ? Collections.emptySet() : localEventEngine.processingEvents();
                                localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("pullEventsReply"), BsonLite.eventListsDocument(emptySet, emptySet2)));
                                LocalDiagnosticLog.m16i(str17, "pullEvents completed available=" + emptySet + " processing=" + emptySet2);
                                localGatewayServer.triggerPendingNewbees(outputStream, bArr, localEventEngine3, set5);
                                num4 = intValue2;
                                num2 = num3;
                                str6 = str3;
                                str7 = stringValue;
                                str8 = str17;
                            } else if ("triggerExternalEvent".equals(stringValue)) {
                                Integer intValue5 = BsonLite.intValue(bArr5, "e");
                                boolean z3 = (localEventEngine3 == null || intValue5 == null || !localEventEngine3.triggerExternalEvent(intValue5.intValue())) ? false : true;
                                if (z3) {
                                    localGatewayServer.tutorialStore.save(str, progress);
                                }
                                localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("triggerExternalEventReply"), BsonLite.EMPTY_DOCUMENT));
                                if (z3) {
                                    localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("pushEvents"), BsonLite.eventListsDocument(localEventEngine.availableEvents(), localEventEngine.processingEvents())));
                                }
                                LocalDiagnosticLog.m16i(str17, "external UI event=" + intValue5 + " accepted=" + z3);
                                num4 = intValue2;
                                num2 = num3;
                                str6 = str3;
                                str7 = stringValue;
                                str8 = str17;
                            } else if ("startEvent".equals(stringValue) && localEventEngine3 != null) {
                                Integer intValue6 = BsonLite.intValue(bArr5, "e");
                                if (intValue6 == null || !localEventEngine3.startEvent(intValue6.intValue())) {
                                    str15 = str17;
                                    num4 = intValue2;
                                    if (intValue6 != null) {
                                        localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("startEventReply"), BsonLite.eventReplyDocument(intValue6.intValue(), SERVICE_CONNECT_SERVER)));
                                        localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("pushEvents"), BsonLite.eventListsDocument(localEventEngine.availableEvents(), localEventEngine.processingEvents())));
                                        LocalDiagnosticLog.m16i(str15, "story event rejected event=" + intValue6 + " blockers=" + localEventEngine.blockedStoryEvents());
                                    }
                                } else {
                                    boolean add = set.add(intValue6);
                                    localGatewayServer.tutorialStore.save(str, progress);
                                    num4 = intValue2;
                                    syncPuzzleStart(outputStream, bArr, str, progress, localEventEngine, intValue6.intValue());
                                    syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
                                    LocalEventCatalog.Event event = localGatewayServer.eventCatalog.get(intValue6.intValue());
                                    if (add && event != null && event.autoStart && event.completeConditions.isEmpty()) {
                                        localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("evalCode"), BsonLite.document("s", LocalClientCompatibility.encode("if '_q7_install_ui_event_bridge' in globals():\n    _q7_install_ui_event_bridge(type(gg.avatar))\n"))));
                                    }
                                    if (intValue6.intValue() == 1043 && add) {
                                        syncTutorialCityState(outputStream, bArr, str, progress, intValue6.intValue());
                                    }
                                    localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("startEventReply"), BsonLite.eventReplyDocument(intValue6.intValue(), SERVICE_ENTITY_MESSAGE)));
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(add ? "tutorial event started event=" : "tutorial event start replayed event=");
                                    sb2.append(intValue6);
                                    str15 = str17;
                                    LocalDiagnosticLog.m16i(str15, sb2.toString());
                                }
                                str7 = stringValue;
                                num2 = num3;
                                str6 = str3;
                                str8 = str15;
                            } else {
                                num4 = intValue2;
                                if ("reliableEcho".equals(stringValue)) {
                                    LocalDiagnosticLog.m16i(str17, "native reliable echo barrier");
                                    str7 = stringValue;
                                    num2 = num3;
                                    str6 = str3;
                                    str8 = str17;
                                } else if (!"q7CompleteUiEvent".equals(stringValue) || localEventEngine3 == null) {
                                    String str18 = str17;
                                    if (!"startEventOption".equals(stringValue) || localEventEngine3 == null) {
                                        byte[] bArr8 = bArr5;
                                        Set<Integer> set6 = set;
                                        if ("clientTraceProcessingEvent".equals(stringValue) && localEventEngine3 != null) {
                                            String stringValue3 = BsonLite.stringValue(bArr8, "k");
                                            byte[] documentValue3 = BsonLite.documentValue(bArr8, "d");
                                            ArrayList arrayList = new ArrayList();
                                            Integer intValue7 = documentValue3 == null ? null : BsonLite.intValue(documentValue3, "c");
                                            if (intValue7 != null) {
                                                arrayList.add(intValue7);
                                            } else if (documentValue3 != null) {
                                                arrayList.addAll(BsonLite.intArrayValues(documentValue3, "c"));
                                            }
                                            str8 = str18;
                                            closePuzzleBeforeTrace(stringValue3, arrayList, str, progress, localEventEngine);
                                            List<Integer> trace = localEventEngine3.trace(stringValue3, arrayList);
                                            String str19 = str;
                                            localGatewayServer.tutorialStore.save(str19, progress);
                                            if (!trace.isEmpty()) {
                                                for (Integer num12 : trace) {
                                                    localGatewayServer.sendTutorialHeroReward(outputStream, bArr, str19, num12.intValue());
                                                    localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("completeEventReplyStart"), BsonLite.eventRewardDocument(num12.intValue())));
                                                    localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("completeEventReplyEnd"), BsonLite.eventDocument(num12.intValue())));
                                                    set6.remove(num12);
                                                    LocalDiagnosticLog.m16i(str8, "event completed event=" + num12 + " condition=" + stringValue3 + arrayList);
                                                    syncTutorialCityCompletion(outputStream, bArr, str, progress, num12.intValue());
                                                    str19 = str19;
                                                    set6 = set;
                                                }
                                                localGatewayServer.tutorialStore.save(str19, progress);
                                            }
                                            syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
                                            if (num4 == null) {
                                                str12 = stringValue;
                                                num5 = num4;
                                            } else {
                                                str12 = stringValue;
                                                localGatewayServer.completeCallback(outputStream, bArr, num4.intValue(), str12);
                                                num5 = null;
                                            }
                                            if (!trace.isEmpty()) {
                                                localGatewayServer.triggerPendingNewbees(outputStream, bArr, localEventEngine3, set5);
                                            }
                                            str7 = str12;
                                            num2 = num3;
                                            str6 = str3;
                                            z = true;
                                        } else {
                                            str8 = str18;
                                            if ("clientAskTriggerNewbee".equals(stringValue) && progress != null) {
                                                Integer intValue8 = BsonLite.intValue(bArr8, "e");
                                                if ((intValue8 == null || localEventEngine3 == null || !localEventEngine3.requestNewbee(intValue8.intValue())) ? false : true) {
                                                    localGatewayServer.tutorialStore.save(str, progress);
                                                    if (num4 == null) {
                                                        num5 = num4;
                                                    } else {
                                                        localGatewayServer.completeCallback(outputStream, bArr, num4.intValue(), stringValue);
                                                        num5 = null;
                                                    }
                                                    localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("triggerClientNewbee"), BsonLite.eventDocument(intValue8.intValue())));
                                                    set5.add(intValue8);
                                                    LocalDiagnosticLog.m16i(str8, "tutorial guidance requested/replayed event=" + intValue8);
                                                } else {
                                                    num5 = num4;
                                                }
                                                str7 = stringValue;
                                                num2 = num3;
                                                str6 = str3;
                                                z = true;
                                            } else if ("clientFinishNewbee".equals(stringValue) && progress != null) {
                                                List<Integer> intArrayValues = BsonLite.intArrayValues(bArr8, "e");
                                                Set<Integer> emptySet3 = localEventEngine3 == null ? Collections.emptySet() : localEventEngine3.finishNewbees(intArrayValues);
                                                if (intArrayValues.contains(190)) {
                                                    LocalSouvenirEngine.recoverShopUnlock(localGatewayServer.profileProvider.load(str, progress), progress);
                                                }
                                                set5.removeAll(intArrayValues);
                                                localGatewayServer.tutorialStore.save(str, progress);
                                                if (intArrayValues.contains(20) || intArrayValues.contains(27)) {
                                                    str11 = stringValue;
                                                    syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
                                                } else {
                                                    str11 = stringValue;
                                                }
                                                LocalDiagnosticLog.m16i(str8, "tutorial guidance completed events=" + intArrayValues + " released=" + emptySet3);
                                                str7 = str11;
                                                num2 = num3;
                                                str6 = str3;
                                            } else if ("checkProcessingEvent".equals(stringValue) && progress != null) {
                                                localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("triggerProcessingEvent"), BsonLite.intListDocument("pe", progress.processingNewbees)));
                                                str7 = stringValue;
                                                num2 = num3;
                                                str6 = str3;
                                            } else if ("passInitPrologue".equals(stringValue) && progress != null) {
                                                progress.initPrologue = false;
                                                localGatewayServer.tutorialStore.save(str, progress);
                                                str7 = stringValue;
                                                num2 = num3;
                                                str6 = str3;
                                            } else if ("updateEventCondClient".equals(stringValue) && progress != null) {
                                                Integer intValue9 = BsonLite.intValue(bArr8, "c");
                                                if (intValue9 != null && intValue9.intValue() == 100 && localEventEngine3 != null) {
                                                    String stringValue4 = BsonLite.stringValue(bArr8, "v");
                                                    if (stringValue4 != null) {
                                                        try {
                                                            nextValue = new JSONTokener(stringValue4).nextValue();
                                                        } catch (JSONException e) {
                                                            LocalDiagnosticLog.m18w(str8, "invalid area entrance JSON", e);
                                                            obj2 = null;
                                                        }
                                                    }
                                                    obj2 = nextValue;
                                                    boolean z4 = (obj2 instanceof String) && localEventEngine3.updateAreaClick((String) obj2);
                                                    if (z4) {
                                                        localGatewayServer.tutorialStore.save(str, progress);
                                                    }
                                                    LocalDiagnosticLog.m16i(str8, "area entrance condition=" + obj2 + " accepted=" + z4 + " available=" + localEventEngine.availableEvents() + " blockers=" + localEventEngine.blockedStoryEvents());
                                                } else if (intValue9 != null && intValue9.intValue() == 102 && localEventEngine3 != null) {
                                                    String stringValue5 = BsonLite.stringValue(bArr8, "v");
                                                    if (stringValue5 != null) {
                                                        try {
                                                            nextValue2 = new JSONTokener(stringValue5).nextValue();
                                                        } catch (JSONException e2) {
                                                            LocalDiagnosticLog.m18w(str8, "invalid client operation JSON", e2);
                                                        }
                                                    }
                                                    Object obj3 = nextValue2;
                                                    if (obj3 instanceof Number) {
                                                        localEventEngine3.updateClientOperation(((Number) obj3).intValue());
                                                        localGatewayServer.tutorialStore.save(str, progress);
                                                    }
                                                } else if (intValue9 != null) {
                                                    progress.recordCondition("client:" + intValue9, Collections.singleton(intValue9));
                                                    localGatewayServer.tutorialStore.save(str, progress);
                                                }
                                                str7 = stringValue;
                                                num2 = num3;
                                                str6 = str3;
                                            } else if ("enterPlace".equals(stringValue) && localEventEngine3 != null) {
                                                String stringValue6 = BsonLite.stringValue(bArr8, "p");
                                                if (stringValue6 == null) {
                                                    stringValue6 = BsonLite.stringValue(bArr8, "s");
                                                }
                                                localEventEngine3.enterPlace(stringValue6);
                                                localGatewayServer.tutorialStore.save(str, progress);
                                                str7 = stringValue;
                                                num2 = num3;
                                                str6 = str3;
                                            } else if (!"enterPatrolRequest".equals(stringValue) || localEventEngine3 == null) {
                                                str7 = stringValue;
                                                num2 = num3;
                                                if (!"patrolReward".equals(str7) || progress == null) {
                                                    str8 = str8;
                                                    if ("getAreaStagesRequest".equals(str7)) {
                                                        int resolveAreaId = resolveAreaId(BsonLite.intValue(bArr8, "aid"), isHighSchoolUnlocked(progress));
                                                        localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("get_area_stages_reply"), BsonLite.areaStagesReplyDocument(resolveAreaId, progress, localGatewayServer.profileProvider.snapshot(str, progress))));
                                                        LocalDiagnosticLog.m16i(str8, "area stages completed area=" + resolveAreaId);
                                                        str6 = str3;
                                                    } else {
                                                        StringBuilder sb3 = new StringBuilder();
                                                        sb3.append("unimplemented reliable RPC account=");
                                                        sb3.append(str);
                                                        sb3.append(str4);
                                                        sb3.append(str7);
                                                        String str20 = str3;
                                                        sb3.append(str20);
                                                        sb3.append(num2);
                                                        sb3.append(" parameters=");
                                                        sb3.append(BsonLite.debugDocument(bArr8));
                                                        LocalDiagnosticLog.m17w(str8, sb3.toString());
                                                        num5 = num4;
                                                        str6 = str20;
                                                        z = SERVICE_CONNECT_SERVER;
                                                    }
                                                } else {
                                                    Map<Integer, Integer> claim = LocalPatrolEngine.claim(progress, localGatewayServer.profileProvider.load(str, progress));
                                                    localGatewayServer.tutorialStore.save(str, progress);
                                                    map.put(num2, new LocalPatrolEngine.Result(true, Collections.emptyList(), "friendship claimed"));
                                                    if (num4 == null) {
                                                        num8 = num4;
                                                    } else {
                                                        localGatewayServer.completeCallback(outputStream, bArr, num4.intValue(), str7);
                                                    }
                                                    for (Integer num13 : claim.keySet()) {
                                                        localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("updateFriendlyValue"), BsonLite.heroValueDocument(num13.intValue(), progress.patrolFriendly.get(num13).intValue())));
                                                    }
                                                    if (!claim.isEmpty()) {
                                                        localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("notify_add_friendly"), BsonLite.friendlyRewardDocument(claim)));
                                                    }
                                                    LocalDiagnosticLog.m16i(str8, "patrol friendship claimed gains=" + claim);
                                                    if (claim.isEmpty()) {
                                                        str8 = str8;
                                                    } else {
                                                        str8 = str8;
                                                        syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
                                                        localGatewayServer.tutorialStore.save(str, progress);
                                                        if (localEventEngine != null) {
                                                            localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("pushEvents"), BsonLite.eventListsDocument(localEventEngine.availableEvents(), localEventEngine.processingEvents())));
                                                        }
                                                    }
                                                    num5 = num8;
                                                    str6 = str3;
                                                    z = true;
                                                }
                                            } else {
                                                Integer intValue10 = BsonLite.intValue(bArr8, "aid");
                                                int intValue11 = intValue10 == null ? SERVICE_CONNECT_SERVER : intValue10.intValue();
                                                List<Integer> intArrayValues2 = BsonLite.intArrayValues(bArr8, "hs");
                                                Integer num14 = num3;
                                                LocalPatrolEngine.Result result = map.get(num14);
                                                if (result == null) {
                                                    byte[] snapshot = localGatewayServer.profileProvider.snapshot(str, progress);
                                                    boolean canResume = LocalPatrolEngine.canResume(progress, snapshot, intValue11, intArrayValues2);
                                                    List<Integer> patrolEvents = progress.patrolArea == 0 ? localEventEngine3.patrolEvents(intValue11) : Collections.emptyList();
                                                    if ((progress.patrolArea == 0 && map.isEmpty() && progress.patrolRewardPending && LocalPatrolEngine.dayKey(snapshot).equals(progress.patrolDay) && !progress.patrolEvents.isEmpty() && !patrolEvents.isEmpty() && progress.patrolEvents.containsAll(patrolEvents) && progress.patrolHeroes.equals(new HashSet(intArrayValues2)) && intArrayValues2.size() == progress.patrolHeroes.size()) | canResume) {
                                                        result = new LocalPatrolEngine.Result(true, new ArrayList(progress.patrolEvents), "resume paid patrol");
                                                        obj = "v";
                                                        str10 = str8;
                                                        num2 = num14;
                                                        c = 0;
                                                        map2 = map;
                                                        i = intValue11;
                                                        str7 = stringValue;
                                                    } else if (progress.patrolRewardPending) {
                                                        result = new LocalPatrolEngine.Result(false, Collections.emptyList(), "请先完成当前巡查");
                                                        c = SERVICE_CONNECT_SERVER;
                                                        obj = "v";
                                                        str10 = str8;
                                                        num2 = num14;
                                                        map2 = map;
                                                        i = intValue11;
                                                        str7 = stringValue;
                                                    } else {
                                                        LocalPatrolCatalog localPatrolCatalog = localGatewayServer.patrolCatalog;
                                                        byte[] load = localGatewayServer.profileProvider.load(str, progress);
                                                        num2 = num14;
                                                        c = SERVICE_CONNECT_SERVER;
                                                        str10 = str8;
                                                        map2 = map;
                                                        obj = "v";
                                                        int i2 = intValue11;
                                                        i = intValue11;
                                                        str7 = stringValue;
                                                        result = LocalPatrolEngine.begin(localPatrolCatalog, progress, localEventEngine, load, i2, intArrayValues2);
                                                    }
                                                    localGatewayServer.tutorialStore.save(str, progress);
                                                    map2.put(num2, result);
                                                } else {
                                                    num2 = num14;
                                                    obj = "v";
                                                    str10 = str8;
                                                    i = intValue11;
                                                    c = 0;
                                                    str7 = stringValue;
                                                }
                                                if (num4 == null) {
                                                    num5 = num4;
                                                } else {
                                                    localGatewayServer.completeCallback(outputStream, bArr, num4.intValue(), str7);
                                                    num5 = null;
                                                }
                                                if (result.success) {
                                                    ProfileProvider profileProvider = localGatewayServer.profileProvider;
                                                    Object[] objArr2 = new Object[CLIENT_CONNECT_REPLY];
                                                    objArr2[c] = "aid";
                                                    objArr2[SERVICE_ENTITY_MESSAGE] = Integer.valueOf(i);
                                                    for (LocalResourceEngine.Reply reply : profileProvider.updateServices(str, "q7RecordPatrolAchievement", BsonLite.document(objArr2), progress).replies) {
                                                        localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
                                                    }
                                                    byte[] md5 = md5("syncSandglass");
                                                    Object[] objArr3 = new Object[CLIENT_CONNECT_REPLY];
                                                    objArr3[c] = obj;
                                                    objArr3[SERVICE_ENTITY_MESSAGE] = Integer.valueOf(LocalEconomyEngine.sandglass(localGatewayServer.profileProvider.load(str, progress), progress));
                                                    localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5, BsonLite.document(objArr3)));
                                                    localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("get_city_data_reply"), BsonLite.cityDataReplyDocument(progress, localGatewayServer.profileProvider.load(str, progress))));
                                                    for (Integer num15 : intArrayValues2) {
                                                        Integer num16 = progress.patrolFatigue.get(num15);
                                                        if (num16 != null) {
                                                            localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("updateCurFatigueValue"), BsonLite.heroValueDocument(num15.intValue(), num16.intValue())));
                                                        }
                                                    }
                                                }
                                                localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("enter_patrol_reply"), BsonLite.patrolReplyDocument(result.success, result.events)));
                                                if (result.success) {
                                                    localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("pushEvents"), BsonLite.eventListsDocument(localEventEngine.availableEvents(), localEventEngine.processingEvents())));
                                                }
                                                if (!result.success) {
                                                    localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("showMessageStr"), BsonLite.stringDocument(str5, "巡查条件不满足，请检查地区状态、行动力和所选角色。")));
                                                }
                                                String str21 = str10;
                                                LocalDiagnosticLog.m16i(str21, "patrol completed area=" + i + " heroes=" + intArrayValues2 + " success=" + result.success + " reason=" + result.reason + " events=" + result.events + " actions=" + progress.patrolActions);
                                                str8 = str21;
                                                str6 = str3;
                                                z = true;
                                            }
                                        }
                                    } else {
                                        Integer intValue12 = BsonLite.intValue(bArr5, "e");
                                        Integer intValue13 = BsonLite.intValue(bArr5, "se");
                                        Integer intValue14 = BsonLite.intValue(bArr5, "op");
                                        if (intValue12 == null || intValue13 == null) {
                                            str13 = " selectedEvent=";
                                            num6 = intValue14;
                                        } else if (!localEventEngine3.selectEventOption(intValue12.intValue(), intValue13.intValue())) {
                                            str13 = " selectedEvent=";
                                            num6 = intValue14;
                                        } else {
                                            syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
                                            set.remove(intValue12);
                                            localGatewayServer.tutorialStore.save(str, progress);
                                            localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("completeEventReplyStart"), BsonLite.eventRewardDocument(intValue12.intValue())));
                                            localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("completeEventReplyEnd"), BsonLite.eventDocument(intValue12.intValue())));
                                            syncTutorialCityCompletion(outputStream, bArr, str, progress, intValue12.intValue());
                                            if (num4 == null) {
                                                num10 = num4;
                                            } else {
                                                localGatewayServer.completeCallback(outputStream, bArr, num4.intValue(), stringValue);
                                            }
                                            if (!localEventEngine3.startEvent(intValue13.intValue())) {
                                                num7 = intValue14;
                                            } else {
                                                set.add(intValue13);
                                                localGatewayServer.tutorialStore.save(str, progress);
                                                num7 = intValue14;
                                                syncPuzzleStart(outputStream, bArr, str, progress, localEventEngine, intValue13.intValue());
                                                syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
                                                localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("startEventReply"), BsonLite.eventReplyDocument(intValue13.intValue(), SERVICE_ENTITY_MESSAGE)));
                                            }
                                            str18 = str18;
                                            LocalDiagnosticLog.m16i(str18, "tutorial event option selected event=" + intValue12 + " selectedEvent=" + intValue13 + " option=" + num7);
                                            num5 = num10;
                                            str7 = stringValue;
                                            num2 = num3;
                                            str6 = str3;
                                            str8 = str18;
                                            z = true;
                                        }
                                        if (intValue12 == null || intValue13 == null || !localEventEngine.processingEvents().contains(intValue13)) {
                                            LocalDiagnosticLog.m17w(str18, "tutorial event option rejected event=" + intValue12 + str13 + intValue13 + " processing=" + localEventEngine.processingEvents());
                                        } else {
                                            LocalDiagnosticLog.m16i(str18, "duplicate tutorial event option ignored event=" + intValue12 + str13 + intValue13 + " option=" + num6);
                                        }
                                        num5 = num4;
                                        str7 = stringValue;
                                        num2 = num3;
                                        str6 = str3;
                                        str8 = str18;
                                        z = true;
                                    }
                                } else {
                                    Integer intValue15 = BsonLite.intValue(bArr5, "e");
                                    if (intValue15 == null || !localEventEngine3.completeImmediateEvent(intValue15.intValue())) {
                                        str14 = str17;
                                        LocalDiagnosticLog.m16i(str14, "UI-only event acknowledgement ignored event=" + intValue15 + " processing=" + localEventEngine.processingEvents());
                                    } else {
                                        localGatewayServer.tutorialStore.save(str, progress);
                                        localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("completeEventReplyStart"), BsonLite.eventRewardDocument(intValue15.intValue())));
                                        localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("completeEventReplyEnd"), BsonLite.eventDocument(intValue15.intValue())));
                                        set.remove(intValue15);
                                        str14 = str17;
                                        syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
                                        localGatewayServer.writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("pushEvents"), BsonLite.eventListsDocument(localEventEngine.availableEvents(), localEventEngine.processingEvents())));
                                        LocalDiagnosticLog.m16i(str14, "UI-only event completed after native UI event=" + intValue15);
                                    }
                                    str7 = stringValue;
                                    num2 = num3;
                                    str6 = str3;
                                    str8 = str14;
                                }
                            }
                        }
                        handleDayRpc(outputStream, bArr, digest(str7), bArr6, str, progress, localEventEngine);
                        str6 = str9;
                    }
                    if (set3.add(num2)) {
                        handleCalendar(outputStream, bArr, str, progress, localEventEngine, str7);
                    }
                }
            } else {
                if (intValue2 != null) {
                    num2 = num;
                    localGatewayServer = this;
                    localGatewayServer.completeCallback(outputStream, bArr, intValue2.intValue(), stringValue);
                } else {
                    num2 = num;
                    localGatewayServer = this;
                    num9 = intValue2;
                }
                if (LocalDailyEngine.repeatableReply(stringValue) || set3.add(num2)) {
                    handleDailyRpc(outputStream, bArr, digest(stringValue), bArr3, str, progress);
                }
                str7 = stringValue;
                z = SERVICE_ENTITY_MESSAGE;
                num5 = num9;
                str8 = str2;
                str6 = str3;
            }
            num5 = num4;
            z = true;
        }
        if (num5 != null) {
            localGatewayServer.completeCallback(outputStream, bArr, num5.intValue(), str7);
        }
        StatusListener statusListener = localGatewayServer.listener;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(z ? "已处理业务 RPC：" : "业务 RPC 尚未实现：");
        sb4.append(str7);
        sb4.append("\n序号：");
        sb4.append(num2);
        statusListener.onStatus(true, sb4.toString());
        long nanoTime3 = (System.nanoTime() - nanoTime) / 1000000;
        if (nanoTime3 >= 250) {
            LocalDiagnosticLog.m17w(str8, "slow reliable RPC method=" + str7 + str6 + num2 + " elapsedMs=" + nanoTime3);
        }
    }

    private static byte[] combatHash(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            if (bArr == null) {
                bArr = BsonLite.EMPTY_DOCUMENT;
            }
            return messageDigest.digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    private boolean currentCombatReply(CombatReply combatReply, CombatReplies combatReplies, int i, byte[] bArr, LocalEventEngine localEventEngine) {
        byte[] doc = LocalResourceEngine.doc(bArr, "weeknum");
        if (combatReply.week != LocalResourceEngine.value(doc, "w") || combatReply.day != LocalResourceEngine.value(doc, "d")) {
            return false;
        }
        if (combatReply.type == 0) {
            CombatReply combatReply2 = combatReplies.values.get(combatReplies.latestAccepted);
            if (!LocalDailyEngine.active(bArr) && BsonLite.keys(LocalResourceEngine.doc(bArr, "q7Battle")).isEmpty() && Objects.equals(combatReplies.latestAccepted, combatReply.acceptedAtPreparation)) {
                return combatReply2 == null || combatReply2.type != CLIENT_CONNECT_REPLY || localEventEngine == null || !localEventEngine.hasPendingStoryBattle(combatReply2.scene);
            }
            return false;
        }
        if (!Integer.valueOf(i).equals(combatReplies.latestAccepted)) {
            return false;
        }
        if (combatReply.type == CLIENT_CONNECT_REPLY) {
            return (localEventEngine == null || combatReply.owners.isEmpty() || !combatReply.owners.equals(localEventEngine.pendingStoryBattleOwners(combatReply.scene))) ? false : true;
        }
        byte[] doc2 = LocalResourceEngine.doc(bArr, combatReply.type != SERVICE_ENTITY_MESSAGE ? "q7DailyBattle" : "q7Battle");
        if (combatReply.type == SERVICE_ENTITY_MESSAGE || LocalDailyEngine.active(bArr)) {
            return (combatReply.type == SERVICE_ENTITY_MESSAGE || combatReply.type == LocalResourceEngine.value(doc2, "t")) && combatReply.scene == LocalResourceEngine.value(doc2, "s") && BsonLite.intArrayValues(doc2, "h").equals(BsonLite.intArrayValues(combatReply.parameters, "h")) && combatReply.fight != null && combatReply.fight.equals(BsonLite.stringValue(doc2, "f"));
        }
        return false;
    }

    private void emitCombatControls(OutputStream outputStream, byte[] bArr, CombatReply combatReply, byte[] bArr2, boolean z) throws IOException {
        boolean equals = Arrays.equals(combatReply.profileHash, combatHash(bArr2));
        for (LocalResourceEngine.Reply reply : combatReply.controls) {
            byte[] bArr3 = reply.parameters;
            if (z && "syncJingshenliPower".equals(reply.method)) {
                byte[] doc = LocalResourceEngine.doc(bArr2, "city");
                bArr3 = BsonLite.document("p", Integer.valueOf(LocalResourceEngine.value(doc, "jpv")), "t", Integer.valueOf(LocalResourceEngine.value(doc, "jpvt")), "cjsla", Integer.valueOf(LocalResourceEngine.value(doc, "cjsla")));
            } else if (z && "syncMazeData".equals(reply.method)) {
                bArr3 = BsonLite.document("d", LocalResourceEngine.doc(bArr2, "ifm"));
            } else if (z && !equals && !"enterManeuverBattleReply".equals(reply.method) && !"showMessageStr".equals(reply.method)) {
            }
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), bArr3));
        }
    }

    private void emitCombatCores(OutputStream outputStream, byte[] bArr, CombatReply combatReply) throws IOException {
        for (LocalResourceEngine.Reply reply : combatReply.cores) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
        }
    }

    private void handleCombatAdmission(OutputStream outputStream, byte[] bArr, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine, Set<Integer> set, Set<Integer> set2, int i, byte[] bArr2) throws IOException {
        List<Integer> list;
        boolean z;
        LocalEconomyEngine.Result result;
        String str2;
        String str3;
        LocalResourceEngine.Result result2;
        String stringValue;
        LocalResourceEngine.Result result3;
        byte[] bArr3;
        String str4;
        LocalCombatCatalog localCombatCatalog;
        String str5;
        CombatReplies combatReplies = this.combatReplies.get();
        combatReplies.bind(set2, str, bArr);
        CombatReply combatReply = combatReplies.values.get(Integer.valueOf(i));
        if (combatReply != null) {
            if (combatReply.delivered) {
                return;
            }
            byte[] snapshot = this.profileProvider.snapshot(str, progress);
            if (!Arrays.equals(combatReply.requestHash, combatHash(bArr2))) {
                str5 = TAG;
            } else {
                if (currentCombatReply(combatReply, combatReplies, i, snapshot, localEventEngine)) {
                    emitCombatControls(outputStream, bArr, combatReply, snapshot, true);
                    if (combatReply.type == SERVICE_ENTITY_MESSAGE || combatReply.type == CLIENT_CONNECT_REPLY) {
                        syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
                    }
                    emitCombatCores(outputStream, bArr, combatReply);
                    writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("combatOfflineReply"), combatReply.parameters));
                    combatReply.delivered = true;
                    LocalDiagnosticLog.m16i(TAG, "combat admission reply restored seq=" + i + " type=" + combatReply.type);
                    return;
                }
                str5 = TAG;
            }
            LocalDiagnosticLog.m17w(str5, "stale/mismatched combat admission retry ignored seq=" + i);
            return;
        }
        if (set2.contains(Integer.valueOf(i))) {
            LocalDiagnosticLog.m17w(TAG, "combat admission retry has no retained reply seq=" + i);
            return;
        }
        CombatReply combatReply2 = new CombatReply();
        combatReply2.requestHash = combatHash(bArr2);
        int value = LocalResourceEngine.value(bArr2, "t");
        int value2 = LocalResourceEngine.value(bArr2, "s");
        combatReply2.scene = value2;
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr2, "h");
        byte[] documentValue = BsonLite.documentValue(bArr2, "d");
        byte[] snapshot2 = this.profileProvider.snapshot(str, progress);
        boolean z2 = (intArrayValues.isEmpty() || value2 <= 0) ? SERVICE_CONNECT_SERVER : true;
        Iterator<Integer> it = intArrayValues.iterator();
        while (it.hasNext()) {
            Integer next = it.next();
            z2 &= (next == null || (localCombatCatalog = this.combatCatalog) == null || !localCombatCatalog.supportsHero(next.intValue())) ? SERVICE_CONNECT_SERVER : true;
        }
        String str6 = "q7Battle";
        if (value != SERVICE_ENTITY_MESSAGE && value != CLIENT_CONNECT_REPLY) {
            if (value == 11) {
                z2 = true;
            }
            boolean battleType = z2 & LocalDailyEngine.battleType(value);
            if (battleType) {
                LocalResourceEngine.Result updateServices = this.profileProvider.updateServices(str, "q7DailyBegin", bArr2, progress);
                byte[] bArr4 = updateServices.profile;
                combatReply2.controls.addAll(updateServices.replies);
                Iterator<LocalResourceEngine.Reply> it2 = updateServices.replies.iterator();
                z = battleType;
                while (it2.hasNext()) {
                    if ("showMessageStr".equals(it2.next().method)) {
                        z = SERVICE_CONNECT_SERVER;
                    }
                }
                str4 = TAG;
                snapshot2 = bArr4;
            } else {
                List<LocalResourceEngine.Reply> list2 = combatReply2.controls;
                str4 = TAG;
                list2.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", "该战斗模式尚未接入本地网关，未扣除资源")));
                z = battleType;
            }
            if (z) {
                combatReply2.parameters = LocalDailyEngine.combatReply(value, value2, intArrayValues, documentValue, hex(bArr), snapshot2, this.combatCatalog);
            }
            str2 = "q7Battle";
            list = intArrayValues;
            str3 = str4;
            result2 = null;
        } else if (LocalDailyEngine.active(snapshot2)) {
            combatReply2.controls.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", "请先退出当前日常战斗")));
            str2 = "q7Battle";
            list = intArrayValues;
            snapshot2 = snapshot2;
            z = SERVICE_CONNECT_SERVER;
            str3 = TAG;
            result2 = null;
        } else {
            if (value != SERVICE_ENTITY_MESSAGE || LocalCityProgress.area(value2) != 0) {
                list = intArrayValues;
            } else {
                list = intArrayValues;
                combatReply2.controls.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", "该地区关卡尚未接入本地网关，未修改进度")));
                z2 = SERVICE_CONNECT_SERVER;
            }
            if (value == CLIENT_CONNECT_REPLY && z2) {
                boolean z3 = (localEventEngine == null || !localEventEngine.beginStoryBattle(value2)) ? SERVICE_CONNECT_SERVER : true;
                if (z3) {
                    this.tutorialStore.save(str, progress);
                }
                z2 = z3;
            }
            if (value == SERVICE_ENTITY_MESSAGE && z2) {
                result = this.profileProvider.updateEconomy(str, "begin", bArr2, progress);
                snapshot2 = result.profile;
                combatReply2.controls.addAll(result.replies);
                z = result.accepted;
            } else {
                z = z2;
                snapshot2 = snapshot2;
                result = null;
            }
            if (!z) {
                str2 = "q7Battle";
                str3 = TAG;
                result2 = null;
            } else {
                if (value2 == 101 && localEventEngine != null && localEventEngine.availableEvents().contains(1043)) {
                    localEventEngine.startEvent(1043);
                    set.add(1043);
                    this.tutorialStore.save(str, progress);
                }
                LocalResourceEngine.Result prepareEventEffects = prepareEventEffects(str, progress, localEventEngine);
                byte[] bArr5 = prepareEventEffects.profile;
                if (result == null) {
                    stringValue = "local-" + i;
                } else {
                    stringValue = BsonLite.stringValue(LocalResourceEngine.doc(result.profile, "q7Battle"), "f");
                }
                combatReply2.parameters = BsonLite.combatOfflineReplyDocument(value, value2, stringValue, list, documentValue, hex(bArr), bArr5, this.combatCatalog);
                if (value != CLIENT_CONNECT_REPLY) {
                    result3 = prepareEventEffects;
                    bArr3 = bArr5;
                    str2 = "q7Battle";
                    str3 = TAG;
                } else {
                    combatReply2.owners = localEventEngine.pendingStoryBattleOwners(value2);
                    Map<Integer, Integer> cores = LocalServiceEngine.cores(bArr5);
                    int i2 = SERVICE_ENTITY_MESSAGE;
                    while (i2 <= 8) {
                        combatReply2.cores.add(new LocalResourceEngine.Reply("updateBlackCore", BsonLite.document("c", cores.getOrDefault(Integer.valueOf(i2), Integer.valueOf(SERVICE_CONNECT_SERVER)), "b", Integer.valueOf(i2))));
                        i2 += SERVICE_ENTITY_MESSAGE;
                        prepareEventEffects = prepareEventEffects;
                        bArr5 = bArr5;
                        str6 = str6;
                    }
                    result3 = prepareEventEffects;
                    bArr3 = bArr5;
                    str2 = str6;
                    str3 = TAG;
                    LocalDiagnosticLog.m16i(str3, "story combat black cores=" + cores);
                }
                result2 = result3;
                snapshot2 = bArr3;
            }
        }
        combatReply2.type = z ? value : SERVICE_CONNECT_SERVER;
        if (combatReply2.parameters == null) {
            combatReply2.parameters = BsonLite.combatOfflineReplyDocument(SERVICE_CONNECT_SERVER, value2, "", Collections.emptyList(), documentValue, hex(bArr), BsonLite.EMPTY_DOCUMENT, this.combatCatalog);
        }
        byte[] doc = LocalResourceEngine.doc(snapshot2, "weeknum");
        combatReply2.week = LocalResourceEngine.value(doc, "w");
        combatReply2.day = LocalResourceEngine.value(doc, "d");
        combatReply2.profileHash = combatHash(snapshot2);
        combatReply2.acceptedAtPreparation = combatReplies.latestAccepted;
        combatReply2.fight = BsonLite.stringValue(LocalResourceEngine.doc(snapshot2, value == SERVICE_ENTITY_MESSAGE ? str2 : "q7DailyBattle"), "f");
        combatReplies.put(i, combatReply2);
        set2.add(Integer.valueOf(i));
        emitCombatControls(outputStream, bArr, combatReply2, snapshot2, false);
        if (result2 != null) {
            emitEventEffects(outputStream, bArr, str, progress, localEventEngine, result2);
        }
        emitCombatCores(outputStream, bArr, combatReply2);
        writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("combatOfflineReply"), combatReply2.parameters));
        combatReply2.delivered = true;
        LocalDiagnosticLog.m16i(str3, "offline combat admission type=" + value + " scene=" + value2 + " heroes=" + list + " accepted=" + z);
    }

    private boolean handleCombatCancelRpc(OutputStream outputStream, byte[] bArr, byte[] bArr2, byte[] bArr3, String str, LocalTutorialStore.Progress progress) throws IOException {
        boolean equals = Arrays.equals(bArr2, digest("battleStageGiveup"));
        boolean z = false;
        if (!equals && !Arrays.equals(bArr2, COMBAT_OFFLINE_RESET)) {
            return false;
        }
        Integer intValue = BsonLite.intValue(bArr3, "s");
        int intValue2 = intValue == null ? SERVICE_CONNECT_SERVER : intValue.intValue();
        byte[] snapshot = this.profileProvider.snapshot(str, progress);
        byte[] doc = LocalResourceEngine.doc(snapshot, "q7DailyBattle");
        byte[] doc2 = LocalResourceEngine.doc(snapshot, "q7Battle");
        byte[] intDocument = equals ? BsonLite.intDocument("s", intValue2) : BsonLite.EMPTY_DOCUMENT;
        if (LocalDailyEngine.active(snapshot)) {
            if (!equals || (intValue2 > 0 && intValue2 == LocalResourceEngine.value(doc, "s"))) {
                LocalResourceEngine.Result updateServices = this.profileProvider.updateServices(str, "q7DailyReset", intDocument, progress);
                for (LocalResourceEngine.Reply reply : updateServices.replies) {
                    writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
                }
                z = !LocalDailyEngine.active(updateServices.profile);
            }
        } else if (!equals || (intValue2 > 0 && !BsonLite.keys(doc2).isEmpty() && intValue2 == LocalResourceEngine.value(doc2, "s"))) {
            LocalEconomyEngine.Result updateEconomy = this.profileProvider.updateEconomy(str, "reset", intDocument, progress);
            for (LocalResourceEngine.Reply reply2 : updateEconomy.replies) {
                writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply2.method), reply2.parameters));
            }
            z = updateEconomy.accepted;
        }
        if (equals) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("battleStageGiveupReply"), BsonLite.intDocument("s", intValue2)));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("combat cancellation method=");
        sb.append(equals ? "battleStageGiveup" : "combatOfflineReset");
        sb.append(" scene=");
        sb.append(intValue2);
        sb.append(" receiptCleared=");
        sb.append(z);
        LocalDiagnosticLog.m16i(TAG, sb.toString());
        return true;
    }

    private void finishAbandonedStory(OutputStream outputStream, byte[] bArr, byte[] bArr2, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine) throws IOException {
        int value;
        if (localEventEngine == null || LocalDailyEngine.active(this.profileProvider.snapshot(str, progress)) || (value = LocalResourceEngine.value(bArr2, "s")) <= 0) {
            return;
        }
        List<Integer> abandonStoryBattle = localEventEngine.abandonStoryBattle(value);
        if (abandonStoryBattle.isEmpty()) {
            return;
        }
        this.tutorialStore.save(str, progress);
        Iterator<Integer> it = abandonStoryBattle.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("completeEventReplyStart"), BsonLite.eventRewardDocument(intValue)));
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("completeEventReplyEnd"), BsonLite.eventDocument(intValue)));
        }
        syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
        writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("pushEvents"), BsonLite.eventListsDocument(localEventEngine.availableEvents(), localEventEngine.processingEvents())));
        LocalDiagnosticLog.m16i(TAG, "confirmed story abandonment scene=" + value + " events=" + abandonStoryBattle);
    }

    private void handleCombatOfflineFinish(OutputStream outputStream, byte[] bArr, byte[] bArr2, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine, Set<Integer> set, Set<Integer> set2) throws IOException {
        LocalEconomyEngine.Result result;
        int i;
        byte[] bArr3;
        Integer intValue = BsonLite.intValue(bArr2, "t");
        Integer intValue2 = BsonLite.intValue(bArr2, "s");
        int intValue3 = intValue == null ? SERVICE_CONNECT_SERVER : intValue.intValue();
        int intValue4 = intValue2 == null ? SERVICE_CONNECT_SERVER : intValue2.intValue();
        int combatWinValue = BsonLite.combatWinValue(bArr2);
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr2, "h");
        List<Integer> intArrayValues2 = BsonLite.intArrayValues(bArr2, "x");
        if (intValue3 != SERVICE_ENTITY_MESSAGE && intValue3 != CLIENT_CONNECT_REPLY) {
            if (LocalDailyEngine.battleType(intValue3)) {
                boolean z = false;
                for (LocalResourceEngine.Reply reply : this.profileProvider.updateServices(str, "q7DailyFinish", bArr2, progress).replies) {
                    z |= "combatOfflineReward".equals(reply.method);
                    writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
                }
                if (z) {
                    return;
                }
            }
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("combatOfflineReward"), BsonLite.combatOfflineRewardDocument(intValue3, intValue4, intArrayValues, intArrayValues2, SERVICE_CONNECT_SERVER)));
            LocalDiagnosticLog.m17w(TAG, "non-story settlement rejected type=" + intValue3 + " scene=" + intValue4);
            return;
        }
        boolean z2 = intValue3 == SERVICE_ENTITY_MESSAGE && LocalCityProgress.area(intValue4) != 0;
        if (intValue3 == CLIENT_CONNECT_REPLY && (localEventEngine == null || !localEventEngine.hasPendingStoryBattle(intValue4))) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("combatOfflineReward"), BsonLite.combatOfflineRewardDocument(intValue3, intValue4, intArrayValues, intArrayValues2, SERVICE_CONNECT_SERVER)));
            LocalDiagnosticLog.m17w(TAG, "story settlement rejected without matching admission scene=" + intValue4);
            return;
        }
        byte[] bArr4 = BsonLite.EMPTY_DOCUMENT;
        if (!z2) {
            result = null;
            i = combatWinValue;
            bArr3 = bArr4;
        } else {
            LocalEconomyEngine.Result updateEconomy = this.profileProvider.updateEconomy(str, "finish", bArr2, progress);
            for (LocalResourceEngine.Reply reply2 : updateEconomy.replies) {
                writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply2.method), reply2.parameters));
            }
            int i2 = updateEconomy.accepted ? updateEconomy.win : SERVICE_CONNECT_SERVER;
            byte[] bArr5 = updateEconomy.reward;
            LocalDiagnosticLog.m16i(TAG, "battle settlement accepted=" + updateEconomy.accepted + " replay=" + updateEconomy.replay + " scene=" + intValue4 + " reason=" + updateEconomy.reason + " reward=" + BsonLite.debugDocument(bArr5));
            result = updateEconomy;
            bArr3 = bArr5;
            i = i2;
        }
        writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("combatOfflineReward"), BsonLite.combatOfflineRewardDocument(intValue3, intValue4, intArrayValues, intArrayValues2, i, bArr3)));
        LocalDiagnosticLog.m16i(TAG, "offline combat finished type=" + intValue3 + " scene=" + intValue4 + " win=" + i + " heroes=" + intArrayValues);
        finishStoryCombat(outputStream, bArr, str, progress, localEventEngine, set, set2, intValue3, intValue4, i, result);
    }

    private boolean handleSuppressionRpc(OutputStream outputStream, byte[] bArr, byte[] bArr2, byte[] bArr3, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine, Set<Integer> set, Set<Integer> set2) throws IOException {
        if (!Arrays.equals(bArr2, digest("battleYazhiAsk"))) {
            return false;
        }
        LocalEconomyEngine.Result updateEconomy = this.profileProvider.updateEconomy(str, "battleYazhiAsk", bArr3, progress);
        for (LocalResourceEngine.Reply reply : updateEconomy.replies) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
        }
        int value = LocalResourceEngine.value(bArr3, "s");
        if (updateEconomy.accepted) {
            if (!updateEconomy.replay) {
                writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("battleYazhiReply"), BsonLite.document("a", Integer.valueOf(LocalResourceEngine.value(bArr3, "a")), "s", Integer.valueOf(value), "h", BsonLite.intArrayValues(bArr3, "h"), "r", updateEconomy.reward)));
            }
            finishStoryCombat(outputStream, bArr, str, progress, localEventEngine, set, set2, SERVICE_ENTITY_MESSAGE, value, SERVICE_ENTITY_MESSAGE, updateEconomy);
        }
        LocalDiagnosticLog.m16i(TAG, "suppression scene=" + value + " accepted=" + updateEconomy.accepted + " replay=" + updateEconomy.replay + " reason=" + updateEconomy.reason);
        return true;
    }

    private void finishStoryCombat(OutputStream outputStream, byte[] bArr, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine, Set<Integer> set, Set<Integer> set2, int i, int i2, int i3, LocalEconomyEngine.Result result) throws IOException {
        List<Integer> trace;
        boolean z = (i != SERVICE_ENTITY_MESSAGE || LocalCityProgress.area(i2) == 0) ? SERVICE_CONNECT_SERVER : SERVICE_ENTITY_MESSAGE;
        if (localEventEngine == null || i3 == 0) {
            return;
        }
        boolean z2 = (!z || result == null || result.remainingActions < 0) ? SERVICE_CONNECT_SERVER : SERVICE_ENTITY_MESSAGE;
        if (localEventEngine != null) {
            localEventEngine.refreshProfile(this.profileProvider.load(str, progress));
        }
        if (i == CLIENT_CONNECT_REPLY) {
            trace = localEventEngine.finishStoryBattle(i2, i3 != 0 ? SERVICE_ENTITY_MESSAGE : false);
        } else {
            trace = localEventEngine.trace("battle", Collections.singletonList(Integer.valueOf(i2)));
        }
        this.tutorialStore.save(str, progress);
        for (Integer num : trace) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("completeEventReplyStart"), BsonLite.eventRewardDocument(num.intValue())));
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("completeEventReplyEnd"), BsonLite.eventDocument(num.intValue())));
            set.remove(num);
            LocalDiagnosticLog.m16i(TAG, "event completed event=" + num + " condition=battle[" + i2 + "]");
        }
        syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
        if (z2) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("get_city_data_reply"), BsonLite.cityDataReplyDocument(progress, this.profileProvider.snapshot(str, progress))));
            LocalDiagnosticLog.m16i(TAG, "combat action consumed scene=" + i2 + " remaining=" + progress.patrolActions);
        }
        if (i == SERVICE_ENTITY_MESSAGE && LocalCityProgress.area(i2) != 0) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("get_all_area_info_reply"), BsonLite.allAreaInfoReplyDocument(isHighSchoolUnlocked(progress), progress, this.profileProvider.snapshot(str, progress))));
            LocalDiagnosticLog.m16i(TAG, "post-battle city state refreshed scene=" + i2);
        }
        triggerPendingNewbees(outputStream, bArr, localEventEngine, set2);
        this.tutorialStore.save(str, progress);
        syncEventEffects(outputStream, bArr, str, progress, localEventEngine);
        writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("pushEvents"), BsonLite.eventListsDocument(localEventEngine.availableEvents(), localEventEngine.processingEvents())));
    }

    private void syncDrawCalendar(OutputStream outputStream, byte[] bArr) throws IOException {
        writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("evalCode"), BsonLite.document("s", "import com.data.cdata.activity_config as ac; import com.data.cdata.chouka_info as ci; import com.utils.runtime_mapping_table as mt; ac.data=dict(ac.data); ac.data[175]=dict(ac.data[175]); ci.data=dict(ci.data); ci.data[484]=dict(ci.data[484]); ac.data[175]['open_range']=(2021,9,22,7,0,0,2035,9,22,7,0,0); ci.data[484]['begin_time']=(2016,1,1,7,0,0,0,0,0); ci.data[484]['end_time']=(2035,9,22,7,0,0,0,0,0); mt.reload(); mt._CELL_MAPPING_CONFIG.setdefault('chouka_info',{}).setdefault(484,{}).update({'begin_time':ci.data[484]['begin_time'],'end_time':ci.data[484]['end_time']}); print('local_draw_calendar_v3', ci.data[484]['end_time'], mt.get_table('chouka_info').data.get(484,{}).get('end_time'))")));
    }

    private boolean handleConstructionRpc(OutputStream outputStream, byte[] bArr, byte[] bArr2, byte[] bArr3, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine, Integer num) throws IOException {
        String str2 = "areaBuildRequest";
        if (!Arrays.equals(bArr2, digest("areaBuildRequest"))) {
            if (Arrays.equals(bArr2, digest("areaLevelUpRequest"))) {
                str2 = "areaLevelUpRequest";
            } else {
                str2 = Arrays.equals(bArr2, digest("playerDestroyBuilding")) ? "playerDestroyBuilding" : null;
            }
        }
        if (str2 == null) {
            return false;
        }
        LocalEconomyEngine.Result updateEconomy = this.profileProvider.updateEconomy(str, str2, bArr3, progress);
        this.tutorialStore.save(str, progress);
        for (LocalResourceEngine.Reply reply : updateEconomy.replies) {
            if (("area_build_reply".equals(reply.method) || "area_level_up_reply".equals(reply.method)) && num != null) {
                completeCallback(outputStream, bArr, num.intValue(), str2);
                num = null;
            }
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
        }
        if (num != null) {
            completeCallback(outputStream, bArr, num.intValue(), str2);
        }
        if (localEventEngine != null && updateEconomy.accepted) {
            localEventEngine.refreshProfile(this.profileProvider.snapshot(str, progress));
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("pushEvents"), BsonLite.eventListsDocument(localEventEngine.availableEvents(), localEventEngine.processingEvents())));
        }
        LocalDiagnosticLog.m16i(TAG, "city operation=" + str2 + " accepted=" + updateEconomy.accepted + " reason=" + updateEconomy.reason + " actions=" + updateEconomy.remainingActions);
        return true;
    }

    private boolean handleDayRpc(OutputStream outputStream, byte[] bArr, byte[] bArr2, byte[] bArr3, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine) throws IOException {
        if (Arrays.equals(bArr2, digest("statusCheck"))) {
            String stringValue = BsonLite.stringValue(bArr3, "s");
            byte[] load = this.profileProvider.load(str, progress);
            String nextDayBlocker = "nextday".equals(stringValue) ? LocalEconomyEngine.nextDayBlocker(load, progress) : null;
            byte[] md5 = md5("statusCheckReply");
            Object[] objArr = new Object[4];
            objArr[SERVICE_CONNECT_SERVER] = "r";
            objArr[SERVICE_ENTITY_MESSAGE] = nextDayBlocker == null ? "ok" : "blocked";
            objArr[CLIENT_CONNECT_REPLY] = "s";
            objArr[CLIENT_CREATE_ENTITY] = stringValue == null ? "" : stringValue;
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5, BsonLite.document(objArr)));
            if (nextDayBlocker != null) {
                writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("showMessageStr"), BsonLite.document("m", nextDayBlocker)));
            }
            if ("nextday".equals(stringValue) && LocalEconomyEngine.hasDailySettlement(load)) {
                byte[] doc = LocalResourceEngine.doc(load, "weeknum");
                writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("showDailySettlement"), BsonLite.document("c", LocalResourceEngine.doc(doc, "c"), "l", LocalResourceEngine.doc(doc, "l"))));
            }
            StringBuilder sb = new StringBuilder();
            sb.append("status check=");
            sb.append(stringValue);
            sb.append(" result=");
            if (nextDayBlocker == null) {
                nextDayBlocker = "ok";
            }
            sb.append(nextDayBlocker);
            LocalDiagnosticLog.m16i(TAG, sb.toString());
            return true;
        }
        if (!Arrays.equals(bArr2, digest("canteenRequest"))) {
            return false;
        }
        LocalEconomyEngine.Result updateEconomy = this.profileProvider.updateEconomy(str, "canteenRequest", bArr3, progress);
        this.tutorialStore.save(str, progress);
        for (LocalResourceEngine.Reply reply : updateEconomy.replies) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
        }
        if (localEventEngine != null) {
            localEventEngine.refreshProfile(this.profileProvider.load(str, progress));
        }
        LocalDiagnosticLog.m16i(TAG, "canteen accepted=" + updateEconomy.accepted + " replay=" + updateEconomy.replay + " reason=" + updateEconomy.reason);
        return true;
    }

    private void handleRest(OutputStream outputStream, byte[] bArr, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine) throws IOException {
        LocalEconomyEngine.Result updateEconomy = this.profileProvider.updateEconomy(str, "zhaiRequest", BsonLite.EMPTY_DOCUMENT, progress);
        this.tutorialStore.save(str, progress);
        if (updateEconomy.remainingActions >= 0) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("get_city_data_reply"), BsonLite.cityDataReplyDocument(progress, this.profileProvider.load(str, progress))));
        }
        for (LocalResourceEngine.Reply reply : updateEconomy.replies) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
        }
        if (localEventEngine != null) {
            localEventEngine.refreshProfile(this.profileProvider.load(str, progress));
        }
        LocalDiagnosticLog.m16i(TAG, "rest accepted=" + updateEconomy.accepted + " replay=" + updateEconomy.replay + " reason=" + updateEconomy.reason);
    }

    private void handleCalendar(OutputStream outputStream, byte[] bArr, String str, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine, String str2) throws IOException {
        LocalEconomyEngine.Result updateEconomy = this.profileProvider.updateEconomy(str, str2, BsonLite.EMPTY_DOCUMENT, progress);
        if (localEventEngine != null) {
            localEventEngine.refreshProfile(this.profileProvider.load(str, progress));
        }
        this.tutorialStore.save(str, progress);
        for (LocalResourceEngine.Reply reply : updateEconomy.replies) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5(reply.method), reply.parameters));
        }
        if (updateEconomy.accepted && localEventEngine != null) {
            writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("pullEventsReply"), BsonLite.eventListsDocument(localEventEngine.availableEvents(), localEventEngine.processingEvents())));
        }
        LocalDiagnosticLog.m16i(TAG, "calendar method=" + str2 + " accepted=" + updateEconomy.accepted + " reason=" + updateEconomy.reason);
    }

    private static int resolveAreaId(Integer num, boolean z) {
        return !z ? num == null ? SERVICE_CONNECT_SERVER : num.intValue() : (num == null || num.intValue() < SERVICE_ENTITY_MESSAGE || num.intValue() > 8) ? SERVICE_ENTITY_MESSAGE : num.intValue();
    }

    private static boolean isHighSchoolUnlocked(LocalTutorialStore.Progress progress) {
        return progress != null && progress.completedEvents.contains(1004);
    }

    private void sendTutorialHeroReward(OutputStream outputStream, byte[] bArr, String str, int i) throws IOException {
        if (i != 1001 || !this.profileProvider.ensureHero(str, 24)) {
            return;
        }
        writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("addHero"), BsonLite.addHeroDocument(24)));
        LocalDiagnosticLog.m16i(TAG, "tutorial hero granted event=" + i + " hero=24");
    }

    private static int starterHeroForUsername(String str) {
        return 7;
    }

    private static int starterEventForHero(int i) {
        if (i == 8) {
            return 1038;
        }
        return i == 7 ? 1039 : 1040;
    }

    private void triggerPendingNewbees(OutputStream outputStream, byte[] bArr, LocalEventEngine localEventEngine, Set<Integer> set) throws IOException {
        if (localEventEngine == null) {
            return;
        }
        for (Integer num : localEventEngine.processingNewbees()) {
            if (set.add(num)) {
                writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("triggerClientNewbee"), BsonLite.eventDocument(num.intValue())));
                LocalDiagnosticLog.m16i(TAG, "pending tutorial guidance pushed event=" + num);
            }
        }
    }

    private void completeCallback(OutputStream outputStream, byte[] bArr, int i, String str) throws IOException {
        writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("serverCallbackCarrier"), BsonLite.callbackDocument(i)));
        LocalDiagnosticLog.m16i(TAG, "reliable RPC callback completed id=" + i + " method=" + str);
    }

    private void sendLoginFailure(OutputStream outputStream, byte[] bArr, String str) throws IOException {
        writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("onLoginFail"), BsonLite.loginFailureDocument(str)));
    }

    private void completeEmptyCallback(OutputStream outputStream, byte[] bArr, byte[] bArr2, String str) throws IOException {
        Integer intValue = BsonLite.intValue(bArr2, "_cbid_");
        if (intValue == null) {
            LocalDiagnosticLog.m16i(TAG, str + " completed without callback id");
            return;
        }
        writeFrame(outputStream, CLIENT_ENTITY_MESSAGE, ProtoLite.entityMessage(bArr, md5("serverCallbackCarrier"), BsonLite.callbackDocument(intValue.intValue())));
        LocalDiagnosticLog.m16i(TAG, str + " callback completed id=" + intValue);
        this.listener.onStatus(true, "已完成启动回调：" + str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static String knownMethodName(String str) {
        char c;
        switch (str.hashCode()) {
            case -1897169271:
                if (str.equals("6f714ca281f3444f391d2c0b6b533d2b")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1609959665:
                if (str.equals("1855aef234af3e9d1edf66c0ff95ae2d")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1380682449:
                if (str.equals("86b7f6b757903e376b56a0d6d6adfd07")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1330808243:
                if (str.equals("0bd2b958144ca852b93120c95f57eaa6")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -880899896:
                if (str.equals("2685968efbe18f8ce157ba5cd205fdb2")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -382736884:
                if (str.equals("c98b48ce939a85367850f73c46262135")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 519580846:
                if (str.equals("43891612ade9652116a491adc872870a")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 923864272:
                if (str.equals("e14f329db4d0e69178add0cb0fb2721b")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case SERVICE_CONNECT_SERVER /* 0 */:
                return "syncAllIntelligenceRequest";
            case SERVICE_ENTITY_MESSAGE /* 1 */:
                return "uploadDeviceInfo";
            case CLIENT_CONNECT_REPLY /* 2 */:
                return "requestTriggerDaXuanWo";
            case CLIENT_CREATE_ENTITY /* 3 */:
                return "enterPlace";
            case 4:
                return "tutorialBegin";
            case CLIENT_ENTITY_MESSAGE /* 5 */:
                return "exceptUpload";
            case 6:
                return "logCheckCheat";
            case 7:
                return "uploadTouchHistory";
            default:
                return "unknown";
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.closed = true;
        Iterator<ClientSession> it = this.clients.iterator();
        while (it.hasNext()) {
            it.next().close();
        }
        this.connections.shutdownNow();
        ServerSocket serverSocket = this.socket;
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (IOException e) {
            }
        }
    }

    private boolean claimSession(ClientSession clientSession) throws IOException {
        synchronized (this.sessionLock) {
            if (this.closed) {
                return false;
            }
            ClientSession clientSession2 = this.activeSession;
            if (clientSession2 != null && clientSession2 != clientSession && clientSession2.done.getCount() != 0) {
                clientSession2.close();
                try {
                    if (!clientSession2.done.await(15L, TimeUnit.SECONDS)) {
                        return false;
                    }
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return false;
                }
            }
            if (!this.closed && !clientSession.client.isClosed()) {
                this.activeSession = clientSession;
                return true;
            }
            return false;
        }
    }

    private Frame readFrame(InputStream inputStream) throws IOException {
        int readLeInt = readLeInt(inputStream);
        if (readLeInt < CLIENT_CONNECT_REPLY || readLeInt > MAX_FRAME) {
            throw new IOException("invalid frame size " + readLeInt);
        }
        return new Frame((readByte(inputStream) << 8) | readByte(inputStream), readExactly(inputStream, readLeInt - CLIENT_CONNECT_REPLY));
    }

    private void writeFrame(OutputStream outputStream, int i, byte[] bArr) throws IOException {
        writeLeInt(outputStream, bArr.length + CLIENT_CONNECT_REPLY);
        outputStream.write(i & 255);
        outputStream.write((i >>> 8) & 255);
        outputStream.write(bArr);
        outputStream.flush();
    }

    private byte[] objectId() {
        byte[] bArr = new byte[12];
        this.random.nextBytes(bArr);
        return bArr;
    }

    private static byte[] md5(String str) throws IOException {
        try {
            return MessageDigest.getInstance("MD5").digest(str.getBytes(StandardCharsets.US_ASCII));
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("MD5 unavailable", e);
        }
    }

    private static byte[] digest(String str) {
        try {
            return MessageDigest.getInstance("MD5").digest(str.getBytes(StandardCharsets.US_ASCII));
        } catch (NoSuchAlgorithmException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    private static int readLeInt(InputStream inputStream) throws IOException {
        int readByte = readByte(inputStream);
        int readByte2 = readByte(inputStream);
        int readByte3 = readByte(inputStream);
        return (readByte(inputStream) << 24) | readByte | (readByte2 << 8) | (readByte3 << 16);
    }

    private static void writeLeInt(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >>> 8) & 255);
        outputStream.write((i >>> 16) & 255);
        outputStream.write((i >>> 24) & 255);
    }

    private static int readByte(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read < 0) {
            throw new EOFException();
        }
        return read;
    }

    private static byte[] readExactly(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = SERVICE_CONNECT_SERVER;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read < 0) {
                throw new EOFException();
            }
            i2 += read;
        }
        return bArr;
    }

    private static String hex(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * CLIENT_CONNECT_REPLY);
        int length = bArr.length;
        for (int i = SERVICE_CONNECT_SERVER; i < length; i += SERVICE_ENTITY_MESSAGE) {
            sb.append(String.format(Locale.US, "%02x", Integer.valueOf(bArr[i] & 255)));
        }
        return sb.toString();
    }

    private static final class Frame {
        final int method;
        final byte[] payload;

        Frame(int i, byte[] bArr) {
            this.method = i;
            this.payload = bArr;
        }
    }
}
