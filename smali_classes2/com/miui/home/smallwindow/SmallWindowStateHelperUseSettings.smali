.class public Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;
.super Lcom/miui/home/smallwindow/SmallWindowStateHelper;
.source "SmallWindowStateHelperUseSettings.java"


# instance fields
.field private mAllSmallWindowInfoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastValidSmallWindowPackageName:Ljava/lang/String;

.field private mMiniSmallWindowInfoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalSmallWindowInfoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallWindowPackageName:Ljava/lang/String;

.field private mSmallWindowState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowPackageName:Ljava/lang/String;

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mLastValidSmallWindowPackageName:Ljava/lang/String;

    .line 33
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mAllSmallWindowInfoSet:Ljava/util/Set;

    .line 34
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mMiniSmallWindowInfoSet:Ljava/util/Set;

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mNormalSmallWindowInfoSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->updateSmallWindowPackageNameInBackground()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mLastValidSmallWindowPackageName:Ljava/lang/String;

    return-object p1
.end method

.method private getSmallWindowUserId()I
    .locals 6

    .line 76
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$3;

    invoke-direct {v1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$3;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 98
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1f4

    const/16 v3, -0x2710

    .line 100
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v1, "SmallWindowStateHelper"

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get smallWindow userId success "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SmallWindowStateHelper"

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get smallWindow userId error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    :goto_0
    return v3
.end method

.method private updateSmallWindowPackageNameInBackground()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mBackgroundExecutor:Lcom/miui/home/smallwindow/BackgroundExecutor;

    new-instance v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$5;

    invoke-direct {v1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$5;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/smallwindow/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public canEnterMiniSmallWindow()Z
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->canEnterSmallWindow()Z

    move-result v0

    return v0
.end method

.method public canEnterSmallWindow()Z
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->isInSmallWindowMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getAllSmallWindows()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mAllSmallWindowInfoSet:Ljava/util/Set;

    return-object v0
.end method

.method public getNormalSmallWindows()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mNormalSmallWindowInfoSet:Ljava/util/Set;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 39
    invoke-super {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->init(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Landroid/os/Handler;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "freeform_window_state"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    new-instance v0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$2;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Landroid/os/Handler;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "freeform_package_name"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->updateSmallWindowStateInBackground()V

    .line 69
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->updateSmallWindowPackageNameInBackground()V

    return-void
.end method

.method public isInSmallWindowMode()Z
    .locals 2

    .line 165
    iget v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastValidSmallWindowPackageName(Ljava/lang/String;)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mLastValidSmallWindowPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mLastValidSmallWindowPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPkgInSmallWindowMode(Ljava/lang/String;I)Z
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->isInSmallWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->getSmallWindowUserId()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateSmallWindowState()V
    .locals 3

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "freeform_window_state"

    const/4 v2, -0x1

    .line 121
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowState:I

    const-string v0, "SmallWindowStateHelper"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmallWindowState, mSmallWindowState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SmallWindowStateHelper"

    const-string v2, "updateSmallWindowState error"

    .line 127
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateSmallWindowStateInBackground()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mBackgroundExecutor:Lcom/miui/home/smallwindow/BackgroundExecutor;

    new-instance v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$4;

    invoke-direct {v1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$4;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/smallwindow/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
