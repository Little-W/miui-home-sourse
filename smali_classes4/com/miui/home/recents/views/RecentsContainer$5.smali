.class Lcom/miui/home/recents/views/RecentsContainer$5;
.super Ljava/lang/Object;
.source "RecentsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsContainer;->deepClean()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;

.field final synthetic val$tasks:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;Ljava/util/ArrayList;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->val$tasks:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 481
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->val$tasks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string p0, "RecentsContainer"

    const-string v0, "deepClean, tasks==null"

    .line 482
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 485
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 488
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->val$tasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 489
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v5, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v5}, Lcom/miui/home/recents/views/RecentsContainer;->access$400(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/RecentsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskId()I

    move-result v5

    if-eq v4, v5, :cond_3

    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v5, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    .line 490
    invoke-static {v5}, Lcom/miui/home/recents/views/RecentsContainer;->access$400(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/RecentsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskId()I

    move-result v5

    if-eq v4, v5, :cond_3

    :cond_2
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v5, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    .line 491
    invoke-static {v5}, Lcom/miui/home/recents/views/RecentsContainer;->access$400(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/RecentsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 492
    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 493
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v4, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v4, v5}, Lcom/miui/home/recents/views/RecentsContainer;->access$500(Lcom/miui/home/recents/views/RecentsContainer;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 496
    iget-object v4, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v4, v3}, Lcom/miui/home/recents/views/RecentsContainer;->access$500(Lcom/miui/home/recents/views/RecentsContainer;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 498
    :cond_4
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v4, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v4, v3}, Lcom/miui/home/recents/views/RecentsContainer;->access$500(Lcom/miui/home/recents/views/RecentsContainer;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 504
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v3}, Lcom/miui/home/recents/views/RecentsContainer;->access$400(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v0, v1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doOneKeyClean(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 506
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$600(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 507
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$600(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$600(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer$5;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {p0}, Lcom/miui/home/recents/views/RecentsContainer;->access$600(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    return-void
.end method
