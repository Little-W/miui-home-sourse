.class public Lcom/miui/home/launcher/progress/ProgressManager;
.super Landroid/content/BroadcastReceiver;
.source "ProgressManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/progress/ProgressManager$_lancet;
    }
.end annotation


# static fields
.field public static final START_SERVICE_SUPPORTED_SERVER_NAMES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mObservingUri:Z

.field private static sProgressManager:Lcom/miui/home/launcher/progress/ProgressManager;


# instance fields
.field private mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

.field private mCheckProgressTask:Ljava/lang/Runnable;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mQueryCheckCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/progress/ProgressManager;->START_SERVICE_SUPPORTED_SERVER_NAMES:Ljava/util/ArrayList;

    .line 61
    sget-object v0, Lcom/miui/home/launcher/progress/ProgressManager;->START_SERVICE_SUPPORTED_SERVER_NAMES:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/miui/home/launcher/progress/ProgressManager;->START_SERVICE_SUPPORTED_SERVER_NAMES:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mQueryCheckCode:J

    .line 257
    new-instance v0, Lcom/miui/home/launcher/progress/ProgressManager$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/progress/ProgressManager$1;-><init>(Lcom/miui/home/launcher/progress/ProgressManager;)V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mCheckProgressTask:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/progress/ProgressManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->checkProgress()V

    return-void
.end method

.method static synthetic access$001(Lcom/miui/home/launcher/progress/ProgressManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/progress/ProgressManager;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/miui/home/launcher/progress/ProgressManager;->mObservingUri:Z

    return v0
.end method

.method private checkProgress()V
    .locals 2

    .line 221
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 222
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mQueryCheckCode:J

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->shouldCheckProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    .line 224
    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->isStop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->checkProgress(Landroid/content/Context;)V

    .line 227
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->shouldCheckProgress()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 228
    sput-boolean p0, Lcom/miui/home/launcher/progress/ProgressManager;->mObservingUri:Z

    :cond_1
    return-void
.end method

.method public static communicateToServer(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    .line 301
    sget-object v0, Lcom/miui/home/launcher/progress/ProgressManager;->START_SERVICE_SUPPORTED_SERVER_NAMES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 303
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher_ProgressManager"

    const-string v1, "communicateToServer error"

    .line 305
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static generateProgressSharedStatusKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_status"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateProgressSharedStatusKeyWithUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/miui/home/launcher/progress/ProgressManager;->generateProgressSharedStatusKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_usr"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateServiceProgressChangedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shared_value.pro_change."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;
    .locals 1

    .line 70
    sget-object v0, Lcom/miui/home/launcher/progress/ProgressManager;->sProgressManager:Lcom/miui/home/launcher/progress/ProgressManager;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/miui/home/launcher/progress/ProgressManager;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/progress/ProgressManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/progress/ProgressManager;->sProgressManager:Lcom/miui/home/launcher/progress/ProgressManager;

    .line 73
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/progress/ProgressManager;->sProgressManager:Lcom/miui/home/launcher/progress/ProgressManager;

    return-object p0
.end method

.method public static isServerEnableShareProgressStatus(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    .line 173
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".enable_share_progress_status"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "Launcher_ProgressManager"

    .line 105
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.update_progress_key"

    .line 111
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.newhome"

    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 115
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "miui.intent.action.APPLICATION_PROGRESS_UPDATE"

    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz v1, :cond_2

    .line 120
    new-instance v1, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$cavB2cUrT07f26VEF76DFJ2lnAo;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$cavB2cUrT07f26VEF76DFJ2lnAo;-><init>(Lcom/miui/home/launcher/progress/ProgressManager;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->startObservingChecked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static queryProgressSharedValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 233
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/progress/ProgressManager;->generateProgressSharedStatusKeyWithUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/miui/Shell;->getRuntimeSharedValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 237
    invoke-static {p0, p1}, Lcom/miui/home/launcher/progress/ProgressManager;->generateProgressSharedStatusKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/miui/Shell;->getRuntimeSharedValue(Ljava/lang/String;)J

    move-result-wide v0

    :cond_1
    long-to-int p0, v0

    return p0

    :cond_2
    :goto_0
    const/16 p0, -0x64

    return p0
.end method

.method private startObserving()V
    .locals 1

    .line 166
    sget-boolean v0, Lcom/miui/home/launcher/progress/ProgressManager;->mObservingUri:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 167
    sput-boolean v0, Lcom/miui/home/launcher/progress/ProgressManager;->mObservingUri:Z

    .line 168
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mCheckProgressTask:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private startObservingChecked()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->startObserving()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bindAppProgressItem(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Z)Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 200
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->bindProgressItem(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->startObserving()V

    :cond_1
    return p1
.end method

.method public clear()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->clear()V

    :cond_0
    return-void
.end method

.method public getAllAppProgressKeys()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->getAllProgressKeys()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getCheckCode()J
    .locals 2

    .line 243
    iget-wide v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mQueryCheckCode:J

    return-wide v0
.end method

.method public getInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->getInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    return-void
.end method

.method public synthetic lambda$onAppInProgressInstalled$2$ProgressManager(Ljava/lang/String;)V
    .locals 0

    .line 217
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ProgressManager;->removeProgressingInfo(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onReceive$0$ProgressManager()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->startObservingChecked()V

    return-void
.end method

.method public synthetic lambda$onReceive$1$ProgressManager(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->handleProgressUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    .line 122
    new-instance p1, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$0q8qppBQFP8wOT1YJPGg7onFlak;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$0q8qppBQFP8wOT1YJPGg7onFlak;-><init>(Lcom/miui/home/launcher/progress/ProgressManager;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadingProgressFromCloudAppBackup(Landroid/content/Context;Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Runnable;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 268
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->loadingProgressFromCloudAppBackup(Landroid/content/Context;Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public onAppInProgressInstalled(Ljava/lang/String;)V
    .locals 1

    .line 217
    new-instance v0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$Ra5SQOXNFBuurxkOHpZJwwFcro0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$Ra5SQOXNFBuurxkOHpZJwwFcro0;-><init>(Lcom/miui/home/launcher/progress/ProgressManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLauncherPaused()V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->stop()V

    :cond_0
    return-void
.end method

.method public onLauncherResume()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->start()V

    :cond_0
    return-void
.end method

.method public onLoadingFinished()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "launcher_progress_manager_ready"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 158
    iput-wide v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mQueryCheckCode:J

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onLoadingFinished()V

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->startObserving()V

    return-void
.end method

.method public onProgressIconClicked(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz p0, :cond_0

    .line 283
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onProgressIconClicked(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    :cond_0
    return-void
.end method

.method public onProgressIconDeleted(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onProgressIconDeleted(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/progress/ProgressManager$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/progress/ProgressManager;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public queryProgressByBroadcast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryProgressByBroadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mQueryCheckCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher_ProgressManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.APPLICATION_PROGRESS_QUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.update_progress_key"

    .line 252
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-wide v1, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mQueryCheckCode:J

    const-string p0, "android.intent.extra.update_progress_check_code"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 254
    invoke-static {p2, v0, p1}, Lcom/miui/home/launcher/progress/ProgressManager;->communicateToServer(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public recordProgressInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->recordProgressInfo(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeProgressingInfo(Ljava/lang/String;)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->removeProgressingInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 100
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressManager;->mApplicationProcessor:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    if-eqz p0, :cond_0

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V

    :cond_0
    return-void
.end method
