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
    .locals 5

    const-string v0, "SmallWindowStateHelper"

    .line 76
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$3;

    invoke-direct {v2, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$3;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 98
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    const/16 p0, -0x2710

    .line 100
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get smallWindow userId success "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get smallWindow userId error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 104
    invoke-virtual {v1, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    :goto_0
    return p0
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
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->canEnterSmallWindow(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public canEnterSmallWindow(Ljava/lang/String;I)Z
    .locals 0

    .line 175
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->isInSmallWindowMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getAllSmallWindows()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mAllSmallWindowInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method public getNormalSmallWindows()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mNormalSmallWindowInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method public init(Landroid/content/Context;ZZZZ)V
    .locals 0

    .line 39
    invoke-super/range {p0 .. p5}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->init(Landroid/content/Context;ZZZZ)V

    .line 40
    new-instance p2, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Landroid/os/Handler;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p4, "freeform_window_state"

    invoke-static {p4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p3, p4, p5, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    new-instance p2, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$2;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$2;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Landroid/os/Handler;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "freeform_package_name"

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3, p5, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->updateSmallWindowStateInBackground()V

    .line 69
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->updateSmallWindowPackageNameInBackground()V

    return-void
.end method

.method public isInSmallWindowMode()Z
    .locals 1

    .line 170
    iget p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mLastValidSmallWindowPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
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

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateSmallWindowState()V
    .locals 4

    const-string v0, "SmallWindowStateHelper"

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "freeform_window_state"

    const/4 v3, -0x1

    .line 121
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowState:I

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmallWindowState, mSmallWindowState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "updateSmallWindowState error"

    .line 127
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
