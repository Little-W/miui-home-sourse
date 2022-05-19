.class public Lcom/xiaomi/mirror/synergy/RelayIconHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
    }
.end annotation


# static fields
.field private static final URI_UPDATE:Landroid/net/Uri;

.field private static final URI_VISIBLE:Landroid/net/Uri;


# instance fields
.field private mAliveBinder:Landroid/os/IBinder;

.field private mCallback:Lcom/xiaomi/mirror/synergy/RelayIconCallback;

.field private volatile mIsRegister:Z

.field private mUpdateObserver:Landroid/database/ContentObserver;

.field private mVisibleObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mirror_relay_icon_visible"

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_VISIBLE:Landroid/net/Uri;

    const-string v0, "mirror_relay_icon_update"

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_UPDATE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Lcom/xiaomi/mirror/synergy/RelayIconCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mCallback:Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    return-object p0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_VISIBLE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->checkRemoteProcess(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_UPDATE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->getRelayIcon(Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    move-result-object p0

    return-object p0
.end method

.method private checkRemoteProcess(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getAliveBinder(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private getRelayIcon(Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "getUpdateIcon"

    invoke-static {p1, v1, p2, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const-string v2, "description"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "remote_device_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method private notifyUpdateIcon(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "notifyUpdateIcon"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private performRelayIconClick(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "performRelayIconClick"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mCallback:Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onIconHide()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    :cond_1
    return-void
.end method

.method public performIconClick(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->performRelayIconClick(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public registerCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/RelayIconCallback;Landroid/os/Handler;)V
    .locals 3

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mCallback:Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z

    new-instance p2, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;

    invoke-direct {p2, p0, p3, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;-><init>(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mVisibleObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_VISIBLE:Landroid/net/Uri;

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mVisibleObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p2, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;

    invoke-direct {p2, p0, p3, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;-><init>(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_UPDATE:Landroid/net/Uri;

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p3, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->checkRemoteProcess(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->notifyUpdateIcon(Landroid/content/Context;)V

    return-void
.end method

.method public unRegisterCallback(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mVisibleObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mVisibleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    :cond_2
    return-void
.end method
