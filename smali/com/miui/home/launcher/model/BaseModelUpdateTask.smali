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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$scheduleCallbackTask$0(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getCallback()Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v0

    if-ne p1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 81
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

    .line 110
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$3;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    :cond_0
    return-void
.end method

.method public bindCategoryAdded()V
    .locals 1

    .line 121
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$4;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 1

    .line 157
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$8;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 1

    .line 148
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$7;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$7;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 1

    .line 130
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$5;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 1

    .line 139
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$6;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$6;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;I)V

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

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$2;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    :cond_0
    return-void
.end method

.method public bindUpdatedShortcuts(Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/model/BaseModelUpdateTask$1;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    :cond_0
    return-void
.end method

.method public abstract execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
.end method

.method public init(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 51
    iput-object p2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    .line 52
    iput-object p3, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    .line 53
    iput-object p4, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public run()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V

    return-void
.end method

.method public final scheduleCallbackTask(Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getCallback()Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$oMhNt2u8rUe2Am9wiFk92E4FOzc;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/home/launcher/model/-$$Lambda$BaseModelUpdateTask$oMhNt2u8rUe2Am9wiFk92E4FOzc;-><init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
