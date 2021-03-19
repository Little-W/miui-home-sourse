.class Lcom/miui/home/recents/views/RecentsContainer$9;
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


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 655
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$700(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 658
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 659
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 661
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v2}, Lcom/miui/home/recents/views/RecentsContainer;->access$700(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 662
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v5, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v5}, Lcom/miui/home/recents/views/RecentsContainer;->access$700(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/RecentsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 664
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 665
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 667
    :goto_1
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 668
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 673
    :cond_3
    invoke-static {v1, v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doOneKeyClean(Ljava/util/List;Ljava/util/List;)V

    .line 675
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$800(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 676
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$800(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$800(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v2}, Lcom/miui/home/recents/views/RecentsContainer;->access$800(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method
