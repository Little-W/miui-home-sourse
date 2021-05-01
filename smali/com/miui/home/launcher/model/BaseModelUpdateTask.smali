.class public abstract Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.super Ljava/lang/Object;
.source "BaseModelUpdateTask.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;


# instance fields
.field mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

.field mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

.field mModel:Lcom/miui/home/launcher/LauncherModel;

.field private mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$scheduleCallbackTask$327(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getCallback()Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v0

    if-ne p1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {p2, p1}, Lcom/miui/home/launcher/LauncherModel$CallbackTask;->execute(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindAppWidgetRemoved(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$2;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    :cond_0
    return-void
.end method

.method public bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$8;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindCategoryAdded()V
    .locals 1

    .line 107
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$3;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 1

    .line 143
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$7;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$7;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 1

    .line 134
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$6;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 1

    .line 116
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$4;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 1

    .line 125
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$5;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$5;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;I)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindScreenAdded(JII)V
    .locals 7

    .line 161
    new-instance v6, Lcom/miui/home/launcher/model/BaseModelUpdateTask$9;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$9;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;JII)V

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindScreenRemoved(J)V
    .locals 1

    .line 170
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$10;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;J)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindScreenTrim()V
    .locals 1

    .line 179
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$11;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$11;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindUpdatedApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$1;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    :cond_0
    return-void
.end method

.method public abstract execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
.end method

.method public init(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 49
    iput-object p2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    .line 50
    iput-object p3, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    .line 51
    iput-object p4, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public run()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V

    return-void
.end method

.method public final scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getCallback()Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$d8Q2JZ-laGAtayKdPqpXesff8-Q;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$d8Q2JZ-laGAtayKdPqpXesff8-Q;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
