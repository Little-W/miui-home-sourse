.class public Lcom/miui/launcher/appprediction/GoogleRecommendApp;
.super Ljava/lang/Object;
.source "GoogleRecommendApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppPredictionTag"


# instance fields
.field private isRegister:Z

.field private final mAppPredictionManager:Landroid/app/prediction/AppPredictionManager;

.field private final mCallBack:Landroid/app/prediction/AppPredictor$Callback;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

.field private final mPredictionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/launcher/appprediction/AppPredictionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictor:Landroid/app/prediction/AppPredictor;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictionInfos:Ljava/util/List;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->uiHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$MuFesmYgJlkpuD5qtUgfPbtYN6M;

    invoke-direct {v0, p0}, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$MuFesmYgJlkpuD5qtUgfPbtYN6M;-><init>(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)V

    iput-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mCallBack:Landroid/app/prediction/AppPredictor$Callback;

    .line 44
    iput-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mExecutor:Ljava/util/concurrent/Executor;

    .line 46
    const-class p2, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictionManager;

    iput-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mAppPredictionManager:Landroid/app/prediction/AppPredictionManager;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Landroid/app/prediction/AppPredictor;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    return-object p0
.end method

.method public static synthetic lambda$MuFesmYgJlkpuD5qtUgfPbtYN6M(Lcom/miui/launcher/appprediction/GoogleRecommendApp;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->onTargetsAvailable(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onTargetsAvailable$1(Landroid/app/prediction/AppTarget;Landroid/app/prediction/AppTarget;)I
    .locals 0

    .line 150
    invoke-virtual {p0}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result p0

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private onTargetsAvailable(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataChanged\uff1a"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    sget-object v1, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$qE4BL1RkNkdp5Ykj9HBZ7hODt3Q;->INSTANCE:Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$qE4BL1RkNkdp5Ykj9HBZ7hODt3Q;

    invoke-interface {p1, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/prediction/AppTarget;

    .line 152
    iget-object v2, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictionInfos:Ljava/util/List;

    new-instance v3, Lcom/miui/launcher/appprediction/AppPredictionInfo;

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/launcher/appprediction/AppPredictionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "];"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppPredictionTag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$ZCZeFIK1dOdFk0EVVrq_y67vnNc;

    invoke-direct {v0, p0}, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$ZCZeFIK1dOdFk0EVVrq_y67vnNc;-><init>(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public createAppPredictionSession(I)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mAppPredictionManager:Landroid/app/prediction/AppPredictionManager;

    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Landroid/app/prediction/AppPredictionContext$Builder;

    iget-object v2, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "home"

    .line 53
    invoke-virtual {v1, v2}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v1

    .line 54
    invoke-virtual {v1, p1}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createAppPredictionSession : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppPredictionTag"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getPredictList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/launcher/appprediction/AppPredictionInfo;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictionInfos:Ljava/util/List;

    return-object p0
.end method

.method public isSupportPredict()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mAppPredictionManager:Landroid/app/prediction/AppPredictionManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictionInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$notifyAppTargetEvent$0$GoogleRecommendApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 3

    .line 114
    new-instance v0, Landroid/app/prediction/AppTargetId;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v1, Landroid/app/prediction/AppTarget$Builder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p2}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object p1

    .line 118
    new-instance p2, Landroid/app/prediction/AppTargetEvent$Builder;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    const-string p1, "all-apps"

    .line 119
    invoke-virtual {p2, p1}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {p2, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    .line 122
    const-class p1, Lcom/android/internal/os/BackgroundThread;

    const-class p2, Landroid/os/Handler;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getHandler"

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    .line 123
    new-instance p2, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;

    invoke-direct {p2, p0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;-><init>(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$onTargetsAvailable$2$GoogleRecommendApp()V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    invoke-interface {p0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;->onDataChanged()V

    return-void
.end method

.method public notifyAppTargetEvent(Landroid/os/UserHandle;Landroid/content/ComponentName;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$dfmYa_3up4E3GLrXNg_aneEJLNY;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$dfmYa_3up4E3GLrXNg_aneEJLNY;-><init>(Lcom/miui/launcher/appprediction/GoogleRecommendApp;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerPredictionUpdates()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->isRegister:Z

    if-nez v0, :cond_0

    const-string v0, "AppPredictionTag"

    const-string v1, "registerPredictionUpdates"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    iget-object v1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mCallBack:Landroid/app/prediction/AppPredictor$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    .line 88
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->isRegister:Z

    :cond_0
    return-void
.end method

.method public requestPredictionUpdate()V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    :cond_0
    return-void
.end method

.method public setPredictAppListener(Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    return-void
.end method

.method public unRegisterPredictionUpdates()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->isRegister:Z

    if-eqz v0, :cond_0

    const-string v0, "AppPredictionTag"

    const-string v1, "unRegisterPredictionUpdates"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    iget-object v1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mCallBack:Landroid/app/prediction/AppPredictor$Callback;

    invoke-virtual {v0, v1}, Landroid/app/prediction/AppPredictor;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictor$Callback;)V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->isRegister:Z

    :cond_0
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    return-void
.end method
