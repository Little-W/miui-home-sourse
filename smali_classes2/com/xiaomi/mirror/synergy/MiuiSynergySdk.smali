.class public Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$DeviceReceiver;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$QueryOpenCallback;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;,
        Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Holder;
    }
.end annotation


# static fields
.field private static final ACTION_MIRROR_DEVICE_CHANGED:Ljava/lang/String; = "miui.intent.action.MIRROR_DEVICE_CHANGED"

.field private static final ACTION_MISHARE_ONEHOP:Ljava/lang/String; = "com.miui.mishare.action.NFC_TOUCH_TRANSFER"

.field private static final EXTRA_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final EXTRA_DEVICE_MANUFACTURER:Ljava/lang/String; = "device_manufacturer"

.field private static final EXTRA_DEVICE_STATE:Ljava/lang/String; = "device_state"

.field public static final PACKAGE_MISHARE:Ljava/lang/String; = "com.miui.mishare.connectivity"

.field public static final SEND_APP_FAIL_APP_SENDING:I = -0x2

.field public static final SEND_APP_FAIL_DEVICE_DISCONNECT:I = -0x5

.field public static final SEND_APP_FAIL_PARAMETER_ERROR:I = -0x1

.field public static final SEND_APP_FAIL_REMOTE_ADV_ERROR:I = -0x7

.field public static final SEND_APP_FAIL_REMOTE_BUSY_MIPLAY:I = -0x67

.field public static final SEND_APP_FAIL_REMOTE_BUSY_MIRROR:I = -0x66

.field public static final SEND_APP_FAIL_REMOTE_BUSY_MISHARE:I = -0x65

.field public static final SEND_APP_FAIL_REMOTE_BUSY_OTHERS:I = -0x64

.field public static final SEND_APP_FAIL_REMOTE_BUSY_WORLD:I = -0x68

.field public static final SEND_APP_FAIL_REMOTE_MAX_SCREEN_COUNT:I = -0xa

.field public static final SEND_APP_FAIL_REMOTE_PKG_ERROR:I = -0x9

.field public static final SEND_APP_FAIL_REMOTE_SYNC_ERROR:I = -0x8

.field public static final SEND_APP_FAIL_REMOTE_UNKNOWN:I = -0x6

.field public static final SEND_APP_FAIL_SELF_DEVICE:I = -0x3

.field public static final SEND_APP_FAIL_UNKNOWN:I = 0x0

.field public static final SEND_APP_FAIL_WAIT_TIMEOUT:I = -0x4

.field private static final SEND_APP_SUCCESS:I = 0x1

.field public static final SYNERGY_ERR:I = -0x1

.field public static final SYNERGY_OK:I = 0x0

.field public static final SYNERGY_SOFTAP_ALREADY_CONNECTED:I = 0x2

.field public static final SYNERGY_SOFTAP_ALREADY_CONNECTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiSynergy"

.field private static final VALUE_DEVICE_STATE_EXIT:I = 0x2

.field private static final VALUE_DEVICE_STATE_JOIN:I = 0x0

.field private static final VALUE_DEVICE_STATE_UPDATE:I = 0x1


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mISameAccountApCallback:Lcom/xiaomi/mirror/ISameAccountApCallback;

.field private mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRelayAppCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteDeviceListener:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSameAccountApCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;

.field private mTakingPhotoManager:Lcom/xiaomi/mirror/synergy/TakingPhotoManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRelayAppCallbackMap:Ljava/util/Map;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$5;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mISameAccountApCallback:Lcom/xiaomi/mirror/ISameAccountApCallback;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListener:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mSameAccountApCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRelayAppCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    return-object p1
.end method

.method public static getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
    .locals 1

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Holder;->access$000()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.xiaomi.mirror.callprovider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private queryRemoteDevices(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/RemoteDeviceInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteHistory"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "remoteDeviceManufacturer"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "queryRemoteDevices"

    invoke-static {p1, p2, p0, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Lcom/xiaomi/mirror/RemoteDeviceInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "remoteDevices"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method private setRemoteDeviceListener(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->addRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListener:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->removeRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V

    :goto_0
    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListener:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;

    return-void
.end method


# virtual methods
.method public addRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V
    .locals 3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "MiuiSynergy"

    const-string v2, "addRemoteDeviceListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$DeviceReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$DeviceReceiver;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$1;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.intent.action.MIRROR_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public chooseFileOnSynergy(Landroid/app/Activity;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;)I
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const-string v2, "displayId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$2;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$2;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public closeMirrorFromClient(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "closeMirrorFromClient"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public closeRemoteDeviceMirror(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "remoteDeviceId"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "closeRemoteDeviceMirror"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public closeRemoteDeviceMirror2(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteDeviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "method_version"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRelayAppCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "closeRemoteDeviceMirror"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public connectSameAccountAp(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "apSsid"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "connectSameAccountAp"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "softApState"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p2
.end method

.method public getAliveBinder(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "getAliveBinder"

    invoke-static {p0, v0, p1, p1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "binder"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getCallRelayService(Landroid/content/Context;)Lcom/xiaomi/mirror/synergy/CallRelayService;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "getCallRelayService"

    invoke-static {p0, v0, p1, p1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "binder"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lcom/xiaomi/mirror/synergy/CallRelayService;

    invoke-direct {p1, p0}, Lcom/xiaomi/mirror/synergy/CallRelayService;-><init>(Landroid/os/IBinder;)V

    return-object p1
.end method

.method public getInt(Landroid/content/Context;Landroid/net/Uri;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p3
.end method

.method public getMirrorAdvConnection(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;)I
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$1;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    invoke-virtual {p0}, Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "callback"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "getMirrorAdvConnection"

    invoke-static {p0, p1, v2, p2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :catch_0
    :cond_1
    return v1
.end method

.method public getRemotePackageInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;
        }
    .end annotation

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "package"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "getRemotePackageInfo"

    invoke-static {p1, v0, p3, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "packageInfo"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found in remote device"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "message"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;

    invoke-direct {p1, p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;

    const-string p1, "local miui+ not support"

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getShareStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "getShareStatus"

    invoke-static {p0, v0, p1, p1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "value"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;

    const-string p1, "local miui+ not support"

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getShowMirrorType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "id"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "getShowMirrorType"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "value"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "uri"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "get"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    const-string p1, "value"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p3
.end method

.method public getSubScreenAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "id"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "getSubScreenAppName"

    invoke-static {p1, v0, p2, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "value"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object p2
.end method

.method public getSubScreenPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "id"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "getSubScreenPackageName"

    invoke-static {p1, v0, p2, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "value"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object p2
.end method

.method public getSynergyDevices(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/SynergyDeviceInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "getSynergyDevices"

    invoke-static {p1, v0, p0, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/xiaomi/mirror/SynergyDeviceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "remoteDevices"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method public isAgreePrivacy(Landroid/content/Context;)Z
    .locals 3

    const-string p0, "isAgreePrivacy"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p0, v2, v2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string p0, "MiuiSynergy"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAgreePrivacy, fix binder error, result="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    const-string p0, "enable"

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public isFloatWindowShow(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "isFloatWindowShow"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public isFreedomWindow(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "isFreedomWindow"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "enable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :catch_0
    :cond_0
    return p0
.end method

.method public isP2PWorking(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "isP2PWorking"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "enable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public isShowMirrorFromPhone(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "isShowMirrorFromPhone"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "enable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :catch_0
    :cond_0
    return p0
.end method

.method public isSplitWindow(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "isSplitWindow"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "enable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :catch_0
    :cond_0
    return p0
.end method

.method public isSupportSendApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->isSupportSendApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportSendApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "package"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "deviceType"

    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "isSupportSendApp"

    const/4 v0, 0x0

    invoke-static {p1, p3, v0, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "enable"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p2
.end method

.method public isSupportSendAppToPhone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "package"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "isSupportSendAppToPhone"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "enable"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p2
.end method

.method public isSupportTakePhoto(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->isSupportTakePhoto(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public isSupportTakePhoto(Landroid/content/Context;Z)Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "includeLyra"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "isSupportTakePhoto"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "enable"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public isSynergyEnable(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "isSynergyEnable"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "enable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public isTakingPhoto(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;
        }
    .end annotation

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "id"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "isTakingPhoto"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "value"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;

    const-string p1, "current miui+ version not support"

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public openDirect(Landroid/content/Context;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "uri"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "openDirect"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "fileDescriptor"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "open failed"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public openMiCloudOnSynergy(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "openMiCloudOnSynergy"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public openOnSynergy(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "uri"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "extra"

    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    const-string p3, "displayId"

    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "openOnSynergy"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public openRemoteDeviceMirror(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteDeviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openRemoteDeviceMirror2(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteDeviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "method_version"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRelayAppCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$9;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$9;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openRemoteDeviceMirrorByBtMac(Landroid/content/Context;Ljava/lang/String;ILcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;Z)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "btMac"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deviceType"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "remoteSupportLyra"

    invoke-virtual {v0, p3, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRelayAppCallbackMap:Ljava/util/Map;

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$7;

    invoke-direct {p4, p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$7;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryAllRemoteDevices(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/RemoteDeviceInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->queryRemoteDevices(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryMirrorDesktopDevices(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/RemoteDeviceInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "queryMirrorDeviceList"

    invoke-static {p1, v1, p0, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/xiaomi/mirror/MirrorDesktopInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "mirrorDevice"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method public queryMirrorDesktopInfo(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorDesktopInfo;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "queryMirrorDesktopInfo"

    invoke-static {p1, v1, p0, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/xiaomi/mirror/MirrorDesktopInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "mirrorDesktopInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/MirrorDesktopInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p0
.end method

.method public queryOpenOnSynergy(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$QueryOpenCallback;)I
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extension"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$1;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$1;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$QueryOpenCallback;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public queryRemoteDevice(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/mirror/RemoteDeviceInfo;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteDeviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "queryRemoteDevice"

    invoke-static {p1, p2, p0, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Lcom/xiaomi/mirror/RemoteDeviceInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "remoteDevice"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/RemoteDeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p0
.end method

.method public queryRemoteDevices(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/RemoteDeviceInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "xiaomi"

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->queryRemoteDevices(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public querySameAccountApInfo(Landroid/content/Context;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "querySameAccountAp"

    invoke-static {p1, v0, p0, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "apSsid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-direct {v0, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method public registerSameAccountApCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;)I
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "apCallback"

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mISameAccountApCallback:Lcom/xiaomi/mirror/ISameAccountApCallback;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mSameAccountApCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "registerApCallback"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public registerTakePhotoCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mTakingPhotoManager:Lcom/xiaomi/mirror/synergy/TakingPhotoManager;

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance v0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;

    invoke-direct {v0}, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mTakingPhotoManager:Lcom/xiaomi/mirror/synergy/TakingPhotoManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->registerTakePhotoCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)I

    move-result p0

    return p0
.end method

.method public releaseMirrorAdvConnection(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;)I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;->access$700(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    invoke-virtual {v0}, Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "callback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "releaseMirrorAdvConnection"

    invoke-static {p1, v1, v0, p2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mMirrorAdvConnectionCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public removeRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V
    .locals 3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "MiuiSynergy"

    const-string v2, "removeRemoteDeviceListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRemoteDeviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method

.method public saveToSynergy(Landroid/app/Activity;Landroid/content/ClipData;Ljava/lang/String;)I
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "clipData"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "extra"

    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    const-string p3, "displayId"

    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "saveToSynergy"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public sendAppToRemoteDevice(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->sendAppToRemoteDevice(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V

    return-void
.end method

.method public sendAppToRemoteDevice(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteDeviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "taskId"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "package"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "appName"

    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ref"

    invoke-virtual {v0, p2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "onlyCast"

    invoke-virtual {v0, p2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;

    invoke-direct {p3, p0, p1, v0, p8}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendFileToDeviceByBtMac(Landroid/app/Activity;Ljava/lang/String;ILjava/util/ArrayList;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "fileList"

    const-string v1, "deviceType"

    const-string v2, "btMac"

    const-string v3, "MiuiSynergy"

    if-nez p5, :cond_0

    const-string p5, "oneHopSendFileByMirror"

    invoke-static {v3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p5, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p5, v0, p4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$3;

    invoke-direct {p3, p0, p1, p5}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$3;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    if-ne p5, p0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    const-string v4, "oneHopSendFileByMiShare"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.mishare.action.NFC_TOUCH_TRANSFER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.miui.mishare.connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1, v4, v2, p0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v0, p4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "oneHopSharePackage"

    invoke-virtual {v5, p0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p0, p2, :cond_2

    invoke-virtual {p1, v3}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public setAgreePrivacy(Landroid/content/Context;Z)I
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "enable"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "setAgreePrivacy"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public setAllRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->setRemoteDeviceListener(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V

    return-void
.end method

.method public setRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "xiaomi"

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->setRemoteDeviceListener(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V

    return-void
.end method

.method public setShareCallback(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MirrorShareCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$11;

    invoke-direct {v0, p0, p3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$11;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MirrorShareCallback;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mirror/IMirrorShareCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    const-string v0, "shareCallback"

    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p3, "tag"

    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "setShareCallback"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;

    const-string p1, "local miui+ not support"

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startRemoteMainMirrorDisplay(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remoteDeviceId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mRelayAppCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startShare(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;
        }
    .end annotation

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "deviceId"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isStart"

    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "startShare"

    invoke-static {p1, p3, p2, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "enable"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;

    const-string p1, "local miui+ not support"

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$MiuiSynergyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takePhotoCancel(Landroid/app/Activity;)I
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->takePhotoCancel(Landroid/app/Activity;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public takePhotoCancel(Landroid/app/Activity;Ljava/lang/String;)I
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const-string v1, "displayId"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :try_start_0
    const-string p2, "takePhotoCancel"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public takePhotoOnSynergy(Landroid/app/Activity;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;)I
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->takePhotoOnSynergy(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;)I

    move-result p0

    return p0
.end method

.method public takePhotoOnSynergy(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;)I
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const-string v2, "displayId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$4;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$4;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$ChooseFileCallback;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public unRegisterSameAccountApCallback(Landroid/content/Context;)I
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "unRegisterApCallback"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mSameAccountApCallback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public unregisterTakePhotoCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->mTakingPhotoManager:Lcom/xiaomi/mirror/synergy/TakingPhotoManager;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->unregisterTakePhotoCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)I

    move-result p0

    return p0
.end method

.method public updateTitle(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "title"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "updateTitle"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method
