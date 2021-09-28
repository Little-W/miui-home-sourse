.class public Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;
.super Lcom/miui/home/smallwindow/SmallWindowStateHelper;
.source "SmallWindowStateHelperUseSettings.java"


# instance fields
.field private mLastValidSmallWindowPackageName:Ljava/lang/String;

.field private mSmallWindowPackageName:Ljava/lang/String;

.field private mSmallWindowState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowPackageName:Ljava/lang/String;

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mLastValidSmallWindowPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->updateSmallWindowPackageNameInBackground()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mLastValidSmallWindowPackageName:Ljava/lang/String;

    return-object p1
.end method

.method private updateSmallWindowPackageNameInBackground()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mBackgroundExecutor:Lcom/miui/home/smallwindow/BackgroundExecutor;

    new-instance v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$4;

    invoke-direct {v1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$4;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/smallwindow/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public canEnterSmallWindow()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->isInSmallWindowMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 24
    invoke-super {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->init(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Landroid/os/Handler;)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "freeform_window_state"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    new-instance v0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$2;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Landroid/os/Handler;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "freeform_package_name"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->updateSmallWindowStateInBackground()V

    .line 54
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->updateSmallWindowPackageNameInBackground()V

    return-void
.end method

.method public isInSmallWindowMode()Z
    .locals 2

    .line 110
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

    .line 100
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mLastValidSmallWindowPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mLastValidSmallWindowPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPkgInSmallWindowMode(Ljava/lang/String;)Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->isInSmallWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateSmallWindowState()V
    .locals 3

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "freeform_window_state"

    const/4 v2, -0x1

    .line 69
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowState:I

    const-string v0, "SmallWindowStateHelper"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmallWindowState, mSmallWindowState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SmallWindowStateHelper"

    const-string v2, "updateSmallWindowState error"

    .line 75
    :goto_0
    return-void
.end method

.method public updateSmallWindowStateInBackground()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mBackgroundExecutor:Lcom/miui/home/smallwindow/BackgroundExecutor;

    new-instance v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$3;

    invoke-direct {v1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$3;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/smallwindow/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
