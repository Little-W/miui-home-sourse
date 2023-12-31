.class public Lcom/xiaomi/mirror/synergy/RelayIconHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;,
        Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
    }
.end annotation


# static fields
.field private static final URI_RELAY_RESULT:Landroid/net/Uri;

.field private static final URI_UPDATE:Landroid/net/Uri;

.field private static final URI_VISIBLE:Landroid/net/Uri;


# instance fields
.field private mAliveBinder:Landroid/os/IBinder;

.field private volatile mIsRegister:Z

.field private mRefCallback:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/xiaomi/mirror/synergy/RelayIconCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRelayResultObserver:Landroid/database/ContentObserver;

.field private mUpdateObserver:Landroid/database/ContentObserver;

.field private mVisibleObserver:Landroid/database/ContentObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "mirror_relay_icon_visible"

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_VISIBLE:Landroid/net/Uri;

    const-string v0, "mirror_relay_icon_update"

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_UPDATE:Landroid/net/Uri;

    const-string v0, "mirror_relay_result"

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_RELAY_RESULT:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public static synthetic access$200()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_VISIBLE:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->checkRemoteProcess(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$400()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_UPDATE:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->getRelayIcon(Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_RELAY_RESULT:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->getRelayResult(Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;

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

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
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

.method private getRelayIcon(Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
    .locals 8

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "uri"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "getUpdateIcon"

    invoke-static {p1, v0, p2, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string p1, "value"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "icon"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/graphics/Bitmap;

    const-string p1, "description"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "remote_device_name"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "remote_device_type"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string p1, "remote_device_id"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "remote_support_handoff"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    new-instance p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p2
.end method

.method private getRelayResult(Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "uri"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "getRelayResult"

    invoke-static {p1, v0, p2, p0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string p1, "value"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;

    const-string v0, "relay_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, p0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;-><init>(I)V

    goto :goto_0

    :cond_1
    const-string p1, "relay_error_code"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "relay_error_message"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;

    invoke-direct {v0, p1, p0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p2
.end method

.method private notifyUpdateIcon(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "notifyUpdateIcon"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private performRelayIconClick(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "performRelayIconClick"

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


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/synergy/RelayIconCallback;

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

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;

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

    sget-object v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_UPDATE:Landroid/net/Uri;

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p2, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;

    invoke-direct {p2, p0, p3, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;-><init>(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRelayResultObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_RELAY_RESULT:Landroid/net/Uri;

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRelayResultObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p3, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->checkRemoteProcess(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->notifyUpdateIcon(Landroid/content/Context;)V

    return-void
.end method

.method public unRegisterCallback(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mVisibleObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mVisibleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mVisibleObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mUpdateObserver:Landroid/database/ContentObserver;

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRelayResultObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRelayResultObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRelayResultObserver:Landroid/database/ContentObserver;

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_3

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mAliveBinder:Landroid/os/IBinder;

    :cond_3
    return-void
.end method
