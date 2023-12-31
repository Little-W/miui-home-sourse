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

.field private mHasShellFeature:Z

.field private mIsInSmallWindowState:Z

.field private mIsSupportMultipleSmallWindowFeature:Z

.field private mIsSupportMultipleSmallWindows:Z

.field private mIsSupportPin:Z

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

.field private mPipSmallWindowInfoSet:Ljava/util/Set;
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

    .line 23
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mAllSmallWindowInfoSet:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mMiniSmallWindowInfoSet:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mNormalSmallWindowInfoSet:Ljava/util/Set;

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mPipSmallWindowInfoSet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsSupportPin:Z

    .line 36
    iput-boolean v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsSupportMultipleSmallWindowFeature:Z

    .line 37
    iput-boolean v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsSupportMultipleSmallWindows:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->dismissRecent()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;ZI)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateState(ZI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->addNormalSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->addMiniSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->addPipSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->dispatchSmallWindowsStateEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsInSmallWindowState:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsInSmallWindowState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)I
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->getDisplayId()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->freeformCheck(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mAllSmallWindowInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mMiniSmallWindowInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mNormalSmallWindowInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mPipSmallWindowInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->isInPinMode(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result p0

    return p0
.end method

.method private addMiniSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addMiniSmallWindowInfoSet: info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallWindowStateHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mMiniSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNormalSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addNormalSmallWindowInfoSet: info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallWindowStateHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mNormalSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPipSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPipSmallWindowInfoSet: info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallWindowStateHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mPipSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private dismissRecent()V
    .locals 1

    .line 134
    iget-boolean p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mHasShellFeature:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "SmallWindowStateHelper"

    const-string v0, "dismissRecent: addNormalSmallWindowInfoSet"

    .line 137
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/smallwindow/messages/DismissRecentToHome;

    invoke-direct {v0}, Lcom/miui/home/smallwindow/messages/DismissRecentToHome;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchSmallWindowsStateEvent(I)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 144
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/smallwindow/messages/OpenSmallWindowsEvent;

    invoke-direct {p1}, Lcom/miui/home/smallwindow/messages/OpenSmallWindowsEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private freeformCheck(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z
    .locals 1

    .line 88
    invoke-virtual {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInMiniFreeFormMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInFreeFormMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->isInPinMode(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getDisplayId()I
    .locals 4

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_0

    return v1

    .line 154
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mGetDisplayIdMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDisplayId"

    new-array v3, v1, [Ljava/lang/Class;

    .line 156
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mGetDisplayIdMethod:Ljava/lang/reflect/Method;

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mGetDisplayIdMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mContext:Landroid/content/Context;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SmallWindowStateHelper"

    const-string v2, "getDisplayId error"

    .line 160
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private isInPinMode(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z
    .locals 0

    .line 219
    iget-boolean p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsSupportPin:Z

    if-eqz p0, :cond_0

    .line 220
    iget-boolean p0, p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->inPinMode:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateSmallWindowStateAndPackageName(I)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mBackgroundExecutor:Lcom/miui/home/smallwindow/BackgroundExecutor;

    new-instance v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;I)V

    invoke-virtual {v0, v1}, Lcom/miui/home/smallwindow/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateState(ZI)V
    .locals 0

    .line 81
    invoke-direct {p0, p2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowStateAndPackageName(I)V

    .line 82
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mSmallWindowStateCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;

    .line 83
    invoke-interface {p2, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;->onEnterOrExitSmallWindow(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mAllSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canEnterMiniSmallWindow()Z
    .locals 3

    .line 243
    iget-boolean v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mHasShellFeature:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsSupportMultipleSmallWindowFeature:Z

    if-eqz v0, :cond_4

    .line 247
    iget-boolean v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsSupportMultipleSmallWindows:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mMiniSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mPipSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mMiniSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mPipSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-ge p0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    .line 253
    :cond_4
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mMiniSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public canEnterSmallWindow(Ljava/lang/String;I)Z
    .locals 2

    .line 227
    iget-boolean v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mHasShellFeature:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 230
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsSupportMultipleSmallWindowFeature:Z

    if-eqz v0, :cond_4

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->isPkgInSmallWindowMode(Ljava/lang/String;I)Z

    move-result p1

    .line 232
    iget-boolean p2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsSupportMultipleSmallWindows:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    .line 233
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mAllSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 235
    :cond_2
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mAllSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-ge p0, v1, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 238
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->isInSmallWindowMode()Z

    move-result p0

    xor-int/2addr p0, v1

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

    .line 258
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mAllSmallWindowInfoSet:Ljava/util/Set;

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

    .line 268
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mNormalSmallWindowInfoSet:Ljava/util/Set;

    return-object p0
.end method

.method public init(Landroid/content/Context;ZZZZ)V
    .locals 0

    .line 42
    invoke-super/range {p0 .. p5}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->init(Landroid/content/Context;ZZZZ)V

    .line 43
    new-instance p1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;

    invoke-direct {p1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V

    .line 72
    invoke-static {p1}, Lmiui/app/MiuiFreeFormManager;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V

    const/4 p1, -0x1

    .line 73
    invoke-direct {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowStateAndPackageName(I)V

    .line 74
    iput-boolean p2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsSupportMultipleSmallWindowFeature:Z

    .line 75
    iput-boolean p3, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsSupportMultipleSmallWindows:Z

    .line 76
    iput-boolean p4, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsSupportPin:Z

    .line 77
    iput-boolean p5, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mHasShellFeature:Z

    return-void
.end method

.method public isInSmallWindowMode()Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mIsInSmallWindowState:Z

    return p0
.end method

.method public isLastValidSmallWindowPackageName(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPkgInSmallWindowMode(Ljava/lang/String;I)Z
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->isInSmallWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mAllSmallWindowInfoSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 193
    iget-object v1, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    if-ne v0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
