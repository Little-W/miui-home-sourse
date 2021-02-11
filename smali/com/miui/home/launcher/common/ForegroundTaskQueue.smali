.class public Lcom/miui/home/launcher/common/ForegroundTaskQueue;
.super Ljava/lang/Object;
.source "ForegroundTaskQueue.java"


# instance fields
.field private mMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->mMessageList:Ljava/util/List;

    return-void
.end method

.method private handleTask(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 24
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->isResumed(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->mMessageList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public addTask(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->mMessageList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->mMessageList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->handleTask(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleRemainingTasksOnResume(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1

    .line 15
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->isResumed(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->mMessageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 17
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->mMessageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
