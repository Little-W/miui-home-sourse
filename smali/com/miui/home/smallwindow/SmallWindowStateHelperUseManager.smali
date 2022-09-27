.class public Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;
.super Lcom/miui/home/smallwindow/SmallWindowStateHelper;
.source "SmallWindowStateHelperUseManager.java"


# instance fields
.field private mGetDisplayIdMethod:Ljava/lang/reflect/Method;

.field private mIsInSmallWindowState:Z

.field private mSmallWindowInfoSet:Ljava/util/Set;
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

    .line 22
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mSmallWindowInfoSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowPackageName()V

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
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mSmallWindowInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method private getDisplayId()I
    .locals 4

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_0

    return v1

    .line 105
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mGetDisplayIdMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDisplayId"

    .line 107
    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mGetDisplayIdMethod:Ljava/lang/reflect/Method;

    .line 109
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

    .line 111
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private updateSmallWindowPackageName()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mBackgroundExecutor:Lcom/miui/home/smallwindow/BackgroundExecutor;

    new-instance v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;

    invoke-direct {v1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$3;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/smallwindow/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public canEnterSmallWindow()Z
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->isInSmallWindowMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getForegroundSmallWindows()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mSmallWindowInfoSet:Ljava/util/Set;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->init(Landroid/content/Context;)V

    .line 28
    new-instance p1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;

    invoke-direct {p1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V

    .line 50
    invoke-static {p1}, Lmiui/app/MiuiFreeFormManager;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowState()V

    .line 52
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowPackageName()V

    return-void
.end method

.method public isInSmallWindowMode()Z
    .locals 1

    .line 135
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

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->isInSmallWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 125
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

    .line 56
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mBackgroundExecutor:Lcom/miui/home/smallwindow/BackgroundExecutor;

    new-instance v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;

    invoke-direct {v1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/smallwindow/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
