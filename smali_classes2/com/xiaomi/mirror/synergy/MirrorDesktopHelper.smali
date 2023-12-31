.class public Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final HANDLER_TIMEOUT_MILLIS:J = 0x3e8L

.field public static final MSG_MIRROR_DESKTOP_CONFIG_CHANGED:I = 0x389

.field public static final MSG_MIRROR_DESKTOP_OPEN_OR_CLOSE:I = 0x38a

.field public static final MSG_MIRROR_DESKTOP_SHOW_OR_HIDE:I = 0x387

.field public static final MSG_MIRROR_DEVICE_LIST_CLEAR:I = 0x386

.field public static final MSG_MIRROR_DEVICE_LIST_UPDATE:I = 0x385

.field public static final MSG_MIRROR_SEAT_CHANGED:I = 0x388

.field public static final TIMEOUT_MILLIS:J = 0x1388L

.field private static final URI_MIRROR_CONFIGURATION:Landroid/net/Uri;

.field private static final URI_MIRROR_DESKTOP_VISIBILITY:Landroid/net/Uri;

.field private static final URI_MIRROR_DEVICE_UPDATE:Landroid/net/Uri;

.field private static final URI_MIRROR_OPEN_OR_CLOSE:Landroid/net/Uri;

.field private static final URI_MIRROR_SETTINGS_SEAT:Landroid/net/Uri;


# instance fields
.field private mAliveBinder:Landroid/os/IBinder;

.field private mConfigurationObserver:Landroid/database/ContentObserver;

.field private mContextRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopOpenObserver:Landroid/database/ContentObserver;

.field private mDesktopVisibilityObserver:Landroid/database/ContentObserver;

.field private mDeviceUpdateObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRegister:Z

.field private final mMessageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMirrorDesktopCallback:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field private mSeatObserver:Landroid/database/ContentObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "mirror_desktop_device_visibility"

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->URI_MIRROR_DESKTOP_VISIBILITY:Landroid/net/Uri;

    const-string v0, "mirror_open_or_close"

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->URI_MIRROR_OPEN_OR_CLOSE:Landroid/net/Uri;

    const-string v0, "mirror_device_update"

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->URI_MIRROR_DEVICE_UPDATE:Landroid/net/Uri;

    const-string v0, "mirror_configuration"

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->URI_MIRROR_CONFIGURATION:Landroid/net/Uri;

    const-string v0, "pref_key_mirror_seat"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->URI_MIRROR_SETTINGS_SEAT:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMessageQueue:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mIsRegister:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$1;-><init>(Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->sendMessageToCallback(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->checkRemoteProcess()V

    return-void
.end method

.method private checkRemoteProcess()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mAliveBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mContextRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mContextRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getAliveBinder(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mAliveBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private enqueueMessage(I)V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMessageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v4, v4, v1

    if-ltz v4, :cond_1

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    const/16 v4, 0x385

    if-eq p1, v4, :cond_3

    const/16 v4, 0x386

    if-ne p1, v4, :cond_0

    :cond_3
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x385

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x386

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMessageQueue:Ljava/util/LinkedList;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private handleMessage(I)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->isContextValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mirrorDesktopOpenOrClose()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mirrorDesktopConfigChanged()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mirrorSeatChanged()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mirrorDesktopShowOrHide()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mirrorDeviceListClear()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mirrorDeviceListUpdate()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleQueue()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMessageQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMessageQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->handleMessage(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isContextValid()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mContextRef:Ljava/lang/ref/SoftReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDesktopCallbackValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mIsRegister:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMirrorDesktopCallback:Ljava/lang/ref/SoftReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mirrorDesktopConfigChanged()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mContextRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->queryMirrorDesktopInfo(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorDesktopInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMirrorDesktopCallback:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;

    invoke-interface {p0, v0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;->onMirrorDesktopConfigChanged(Lcom/xiaomi/mirror/MirrorDesktopInfo;)V

    return-void
.end method

.method private mirrorDesktopOpenOrClose()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mContextRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->URI_MIRROR_OPEN_OR_CLOSE:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInt(Landroid/content/Context;Landroid/net/Uri;I)I

    move-result v0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMirrorDesktopCallback:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-interface {p0, v1}, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;->onMirrorDeskOpenOrClose(Z)V

    return-void
.end method

.method private mirrorDesktopShowOrHide()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mContextRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->URI_MIRROR_DESKTOP_VISIBILITY:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInt(Landroid/content/Context;Landroid/net/Uri;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mContextRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->queryMirrorDesktopInfo(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorDesktopInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMirrorDesktopCallback:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;

    invoke-interface {p0, v0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;->onMirrorDesktopShow(Lcom/xiaomi/mirror/MirrorDesktopInfo;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMirrorDesktopCallback:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;

    invoke-interface {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;->onMirrorDesktopHide()V

    :goto_0
    return-void
.end method

.method private mirrorDeviceListClear()V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMirrorDesktopCallback:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;->onDeviceListUpdate(Ljava/util/List;)V

    return-void
.end method

.method private mirrorDeviceListUpdate()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mContextRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->queryMirrorDesktopDevices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMirrorDesktopCallback:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;

    invoke-interface {p0, v0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;->onDeviceListUpdate(Ljava/util/List;)V

    return-void
.end method

.method private mirrorSeatChanged()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mContextRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "pref_key_mirror_seat"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mirror/SystemSettingsUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMirrorDesktopCallback:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;

    invoke-interface {p0, v0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;->onMirrorSeatChanged(I)V

    return-void
.end method

.method private sendMessageToCallback(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMessageQueue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->isDesktopCallbackValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->handleQueue()V

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->handleMessage(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->enqueueMessage(I)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private unlinkToDeath()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mAliveBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mAliveBinder:Landroid/os/IBinder;

    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    const/16 v0, 0x386

    invoke-direct {p0, v0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->sendMessageToCallback(I)V

    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->unlinkToDeath()V

    return-void
.end method

.method public performExitMirrorClick(Landroid/content/Context;)V
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "performExitMirrorClick"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public performMirrorDeviceIconClick(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "performMirrorDeviceIconClick"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerMirrorDesktopCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;Landroid/os/Handler;)V
    .locals 4

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMirrorDesktopCallback:Ljava/lang/ref/SoftReference;

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mContextRef:Ljava/lang/ref/SoftReference;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMessageQueue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mContextRef:Ljava/lang/ref/SoftReference;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMirrorDesktopCallback:Ljava/lang/ref/SoftReference;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mIsRegister:Z

    new-instance p2, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$2;

    invoke-direct {p2, p0, p3}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$2;-><init>(Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mDeviceUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->URI_MIRROR_DEVICE_UPDATE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mDeviceUpdateObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p2, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$3;

    invoke-direct {p2, p0, p3}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$3;-><init>(Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mDesktopVisibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->URI_MIRROR_DESKTOP_VISIBILITY:Landroid/net/Uri;

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mDesktopVisibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p2, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$4;

    invoke-direct {p2, p0, p3}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$4;-><init>(Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mDesktopOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->URI_MIRROR_OPEN_OR_CLOSE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mDesktopOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p2, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$5;

    invoke-direct {p2, p0, p3}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$5;-><init>(Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mConfigurationObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->URI_MIRROR_CONFIGURATION:Landroid/net/Uri;

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mConfigurationObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p2, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$6;

    invoke-direct {p2, p0, p3}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$6;-><init>(Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mSeatObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->URI_MIRROR_SETTINGS_SEAT:Landroid/net/Uri;

    iget-object p3, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mSeatObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v3, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->checkRemoteProcess()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unRegisterMirrorDesktopCallback(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMessageQueue:Ljava/util/LinkedList;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mIsRegister:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mMirrorDesktopCallback:Ljava/lang/ref/SoftReference;

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mContextRef:Ljava/lang/ref/SoftReference;

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mDeviceUpdateObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mDeviceUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mDesktopVisibilityObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mDesktopVisibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mConfigurationObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mConfigurationObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->unlinkToDeath()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
