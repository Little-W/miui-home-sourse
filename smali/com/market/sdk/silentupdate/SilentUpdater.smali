.class public Lcom/market/sdk/silentupdate/SilentUpdater;
.super Ljava/lang/Object;
.source "SilentUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/silentupdate/SilentUpdater$Builder;,
        Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;
    }
.end annotation


# static fields
.field private static final ACTION_DOWNLOAD:Ljava/lang/String; = "com.xiaomi.market.service.AppDownloadService"

.field public static final CODE_ALREADY_NEW:I = -0x5

.field public static final CODE_CTA_REFUSE:I = -0x6

.field public static final CODE_DENIED:I = -0x4

.field public static final CODE_DOWNLOAD_FAIL:I = -0x2

.field public static final CODE_DOWNLOAD_INSTALLING:I = 0x5

.field public static final CODE_DOWNLOAD_START:I = 0x1

.field public static final CODE_DOWNLOAD_SUCCESS:I = 0x2

.field public static final CODE_EXISTS:I = -0x1

.field public static final CODE_INSTALL_FAIL:I = -0x3

.field public static final CODE_INSTALL_START:I = 0x3

.field public static final CODE_INSTALL_SUCCESS:I = 0x4

.field public static final CODE_TARGET_VERSION_MISSING:I = -0x7

.field public static final ERROR_INSTALL_DELAYED:I = 0x13

.field private static final OP_CANCEL:I = 0x4

.field private static final OP_PAUSE:I = 0x2

.field private static final OP_RESUME:I = 0x3

.field private static final OP_UPDATE:I = 0x1

.field public static final PKG_DISCOVER:Ljava/lang/String; = "com.xiaomi.discover"

.field public static final PKG_MARKET:Ljava/lang/String; = "com.xiaomi.market"

.field public static final PKG_MIPICKS:Ljava/lang/String; = "com.xiaomi.mipicks"

.field public static final PROGRESS_STATUS_CANCEL:I = -0x64

.field public static final PROGRESS_STATUS_CONNECTING:I = -0x5

.field public static final PROGRESS_STATUS_DOWNLOADING:I = -0x2

.field public static final PROGRESS_STATUS_INSTALLING:I = -0x4

.field public static final PROGRESS_STATUS_NONE:I = 0x0

.field public static final PROGRESS_STATUS_PAUSED:I = -0x3

.field public static final PROGRESS_STATUS_PENDING:I = -0x1

.field private static final REF_PREFIX:Ljava/lang/String; = "selfupdatesdk_"


# instance fields
.field private actionQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private callback:Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

.field private final callbackWrapper:Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;

.field private final conn:Landroid/content/ServiceConnection;

.field private deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private extras:Landroid/os/Bundle;

.field private forceUpdate:Z

.field private hideUpdate:Z

.field private showUserAgreementIfNeeded:Z

.field private targetPkg:Ljava/lang/String;

.field private versionCode:I

.field private wifiOnly:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->actionQueue:Ljava/util/List;

    .line 87
    new-instance v0, Lcom/market/sdk/silentupdate/SilentUpdater$1;

    invoke-direct {v0, p0}, Lcom/market/sdk/silentupdate/SilentUpdater$1;-><init>(Lcom/market/sdk/silentupdate/SilentUpdater;)V

    iput-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 94
    new-instance v0, Lcom/market/sdk/silentupdate/SilentUpdater$2;

    invoke-direct {v0, p0}, Lcom/market/sdk/silentupdate/SilentUpdater$2;-><init>(Lcom/market/sdk/silentupdate/SilentUpdater;)V

    iput-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->conn:Landroid/content/ServiceConnection;

    .line 117
    new-instance v0, Lcom/market/sdk/silentupdate/SilentUpdater$3;

    invoke-direct {v0, p0}, Lcom/market/sdk/silentupdate/SilentUpdater$3;-><init>(Lcom/market/sdk/silentupdate/SilentUpdater;)V

    iput-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->callbackWrapper:Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/market/sdk/silentupdate/SilentUpdater$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/market/sdk/silentupdate/SilentUpdater;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/xiaomi/market/IAppDownloadManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/market/sdk/silentupdate/SilentUpdater;Lcom/xiaomi/market/IAppDownloadManager;)Lcom/xiaomi/market/IAppDownloadManager;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/market/sdk/silentupdate/SilentUpdater;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$1000(Ljava/lang/String;I)Z
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/market/sdk/silentupdate/SilentUpdater;->isSupportedInPkg(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1102(Lcom/market/sdk/silentupdate/SilentUpdater;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->targetPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/market/sdk/silentupdate/SilentUpdater;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->extras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/market/sdk/silentupdate/SilentUpdater;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->forceUpdate:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/market/sdk/silentupdate/SilentUpdater;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->wifiOnly:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/market/sdk/silentupdate/SilentUpdater;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->hideUpdate:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/market/sdk/silentupdate/SilentUpdater;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->showUserAgreementIfNeeded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->callbackWrapper:Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/market/sdk/silentupdate/SilentUpdater;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/market/sdk/silentupdate/SilentUpdater;->processActions()V

    return-void
.end method

.method static synthetic access$400(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->callback:Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/market/sdk/silentupdate/SilentUpdater;Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;)Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->callback:Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/market/sdk/silentupdate/SilentUpdater;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/market/sdk/silentupdate/SilentUpdater;->unbindService()V

    return-void
.end method

.method static synthetic access$702(Lcom/market/sdk/silentupdate/SilentUpdater;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/market/sdk/silentupdate/SilentUpdater;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/market/sdk/silentupdate/SilentUpdater;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->versionCode:I

    return p1
.end method

.method private bindService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/silentupdate/CheckedException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->targetPkg:Ljava/lang/String;

    invoke-static {v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->isSilentUpdateAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.market.service.AppDownloadService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->targetPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 313
    iget-object v2, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    .line 306
    :cond_0
    new-instance v0, Lcom/market/sdk/silentupdate/CheckedException;

    const-string v1, "SilentUpdate check failed\uff0cThis operation is not supported"

    invoke-direct {v0, v1}, Lcom/market/sdk/silentupdate/CheckedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized enqueAction(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/silentupdate/CheckedException;
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->actionQueue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    if-nez p1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/market/sdk/silentupdate/SilentUpdater;->bindService()V

    goto :goto_0

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/market/sdk/silentupdate/SilentUpdater;->processActions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleCancel()V
    .locals 3

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/market/IAppDownloadManager;->cancel(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private handlePause()V
    .locals 3

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/market/IAppDownloadManager;->pause(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private handleResume()V
    .locals 3

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/market/IAppDownloadManager;->resume(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private handleUpdate()V
    .locals 7

    .line 268
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 269
    invoke-static {}, Lcom/market/sdk/silentupdate/SigGenerator;->generateNonce()Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selfupdatesdk_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    :try_start_0
    iget-object v3, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appKey:Ljava/lang/String;

    invoke-static {v1, v3, v4, v2, v5}, Lcom/market/sdk/silentupdate/SigGenerator;->getSignatureString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "packageName"

    .line 274
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "senderPackageName"

    .line 275
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ref"

    .line 276
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nonce"

    .line 277
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appSignature"

    .line 278
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appClientId"

    .line 279
    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appId:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ext_targetVersionCode"

    .line 280
    iget v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->versionCode:I

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "show_cta"

    .line 281
    iget-boolean v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->showUserAgreementIfNeeded:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ext_abTestIdentifier"

    .line 282
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->getAbTestIdentifier()Lcom/market/sdk/AbTestIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market/sdk/AbTestIdentifier;->ordinal()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    iget-boolean v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->forceUpdate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "marketClientControlParam_force_update"

    .line 284
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->hideUpdate:Z

    if-eqz v0, :cond_1

    const-string v0, "marketClientControlParam_hide_download"

    .line 287
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    :cond_1
    iget-boolean v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->wifiOnly:Z

    if-eqz v0, :cond_2

    const-string v0, "marketClientControlParam_download_wifi_only"

    .line 290
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 293
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 294
    iget-object v2, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 298
    :cond_4
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    invoke-interface {v0, v4}, Lcom/xiaomi/market/IAppDownloadManager;->download(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static isCancelAvailable()Z
    .locals 1

    .line 381
    invoke-static {}, Lcom/market/sdk/silentupdate/SilentUpdater;->isPauseAavailable()Z

    move-result v0

    return v0
.end method

.method public static isPauseAavailable()Z
    .locals 2

    .line 369
    invoke-static {}, Lcom/market/sdk/utils/Client;->isInternationalMiui()Z

    move-result v0

    const v1, 0x1d3502

    if-eqz v0, :cond_2

    const-string v0, "com.xiaomi.mipicks"

    .line 370
    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->isSupportedInPkg(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.xiaomi.discover"

    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->isSupportedInPkg(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const-string v0, "com.xiaomi.market"

    .line 372
    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->isSupportedInPkg(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isResumeAavailable()Z
    .locals 1

    .line 377
    invoke-static {}, Lcom/market/sdk/silentupdate/SilentUpdater;->isPauseAavailable()Z

    move-result v0

    return v0
.end method

.method public static isSilentUpdateAvailable()Z
    .locals 2

    .line 361
    invoke-static {}, Lcom/market/sdk/utils/Client;->isInternationalMiui()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const-string v0, "com.xiaomi.mipicks"

    .line 362
    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->isSupportedInPkg(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.xiaomi.discover"

    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->isSupportedInPkg(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const-string v0, "com.xiaomi.market"

    .line 364
    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->isSupportedInPkg(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isSilentUpdateAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 385
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Lcom/market/sdk/silentupdate/SilentUpdater;->isSilentUpdateAvailable()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, -0x1

    .line 388
    invoke-static {p0, v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->isSupportedInPkg(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static isSupportedInPkg(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 394
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 395
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v1, p1, :cond_0

    return v0

    .line 399
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.xiaomi.market.service.AppDownloadService"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 402
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 405
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 406
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_2
    :goto_0
    return v0

    :catch_0
    return v0
.end method

.method private declared-synchronized processActions()V
    .locals 2

    monitor-enter p0

    .line 221
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->actionQueue:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 234
    :pswitch_0
    invoke-direct {p0}, Lcom/market/sdk/silentupdate/SilentUpdater;->handleCancel()V

    goto :goto_0

    .line 231
    :pswitch_1
    invoke-direct {p0}, Lcom/market/sdk/silentupdate/SilentUpdater;->handleResume()V

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-direct {p0}, Lcom/market/sdk/silentupdate/SilentUpdater;->handlePause()V

    goto :goto_0

    .line 225
    :pswitch_3
    invoke-direct {p0}, Lcom/market/sdk/silentupdate/SilentUpdater;->handleUpdate()V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->actionQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized removeAction(I)V
    .locals 2

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->actionQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 203
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 208
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private unbindService()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    if-eqz v0, :cond_0

    .line 319
    :try_start_0
    invoke-interface {v0}, Lcom/xiaomi/market/IAppDownloadManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 320
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/silentupdate/CheckedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 187
    invoke-direct {p0, v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->removeAction(I)V

    const/4 v0, 0x2

    .line 188
    invoke-direct {p0, v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->removeAction(I)V

    const/4 v0, 0x3

    .line 189
    invoke-direct {p0, v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->removeAction(I)V

    const/4 v0, 0x4

    .line 190
    invoke-direct {p0, v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->enqueAction(I)V

    return-void
.end method

.method public forceUpdate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/silentupdate/CheckedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater;->forceUpdate:Z

    .line 171
    invoke-virtual {p0}, Lcom/market/sdk/silentupdate/SilentUpdater;->update()V

    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/silentupdate/CheckedException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 179
    invoke-direct {p0, v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->enqueAction(I)V

    return-void
.end method

.method public resume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/silentupdate/CheckedException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 198
    invoke-direct {p0, v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->enqueAction(I)V

    return-void
.end method

.method public update()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/silentupdate/CheckedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 163
    invoke-direct {p0, v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->enqueAction(I)V

    return-void
.end method
