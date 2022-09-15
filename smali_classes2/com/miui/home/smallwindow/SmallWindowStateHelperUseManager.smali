.class public Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;
.super Lcom/miui/home/smallwindow/SmallWindowStateHelper;
.source "SmallWindowStateHelperUseManager.java"


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

.field private mGetDisplayIdMethod:Ljava/lang/reflect/Method;

.field private mIsFold:Z

.field private mIsInSmallWindowState:Z

.field private mIsPad:Z

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;-><init>()V

    .line 23
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mAllSmallWindowInfoSet:Ljava/util/Set;

    .line 25
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mMiniSmallWindowInfoSet:Ljava/util/Set;

    .line 27
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mNormalSmallWindowInfoSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsInSmallWindowState:Z

    return p0
.end method

.method static synthetic access$102(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsInSmallWindowState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)I
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->getDisplayId()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mAllSmallWindowInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mMiniSmallWindowInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mNormalSmallWindowInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->addNormalSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->addMiniSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    return-void
.end method

.method private addMiniSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mMiniSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNormalSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mNormalSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getDisplayId()I
    .locals 4

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_0

    return v1

    .line 127
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mGetDisplayIdMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDisplayId"

    .line 129
    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mGetDisplayIdMethod:Ljava/lang/reflect/Method;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mGetDisplayIdMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mContext:Landroid/content/Context;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "SmallWindowStateHelper"

    const-string v3, "getDisplayId error"

    .line 133
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private updateSmallWindowPackageName()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mBackgroundExecutor:Lcom/miui/home/smallwindow/BackgroundExecutor;

    new-instance v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;

    invoke-direct {v1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/smallwindow/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateState(Z)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowState()V

    .line 66
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowPackageName()V

    .line 67
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mSmallWindowStateCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;

    .line 68
    invoke-interface {v1, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;->onEnterOrExitSmallWindow(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mAllSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canEnterMiniSmallWindow()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mMiniSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public canEnterSmallWindow(Ljava/lang/String;I)Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsFold:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsPad:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->isInSmallWindowMode()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 175
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->isPkgInSmallWindowMode(Ljava/lang/String;I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
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

    .line 187
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mAllSmallWindowInfoSet:Ljava/util/Set;

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

    .line 197
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mNormalSmallWindowInfoSet:Ljava/util/Set;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->init(Landroid/content/Context;)V

    .line 35
    new-instance p1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;

    invoke-direct {p1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V

    .line 57
    invoke-static {p1}, Lmiui/app/MiuiFreeFormManager;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowState()V

    .line 59
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowPackageName()V

    .line 60
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsFold:Z

    .line 61
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    iput-boolean p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsPad:Z

    return-void
.end method

.method public isInSmallWindowMode()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsInSmallWindowState:Z

    return v0
.end method

.method public isLastValidSmallWindowPackageName(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isPkgInSmallWindowMode(Ljava/lang/String;I)Z
    .locals 3

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->isInSmallWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mAllSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 159
    iget-object v2, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    if-ne v1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public updateSmallWindowState()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mBackgroundExecutor:Lcom/miui/home/smallwindow/BackgroundExecutor;

    new-instance v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;

    invoke-direct {v1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/smallwindow/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
