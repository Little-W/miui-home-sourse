.class Lcom/miui/home/recents/ThreeGestureSplitController$5;
.super Ljava/lang/Object;
.source "ThreeGestureSplitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/ThreeGestureSplitController;->initiateSplitSelect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

.field final synthetic val$runningTaskId:I


# direct methods
.method constructor <init>(Lcom/miui/home/recents/ThreeGestureSplitController;I)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/miui/home/recents/ThreeGestureSplitController$5;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    iput p2, p0, Lcom/miui/home/recents/ThreeGestureSplitController$5;->val$runningTaskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/miui/home/recents/ThreeGestureSplitController$5;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    invoke-static {v0}, Lcom/miui/home/recents/ThreeGestureSplitController;->access$400(Lcom/miui/home/recents/ThreeGestureSplitController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    const-string v1, "ThreeGestureSplitController"

    if-nez v0, :cond_0

    const-string p0, "initiateSplitSelect: taskStack is null, return"

    .line 355
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 358
    :cond_0
    iget v2, p0, Lcom/miui/home/recents/ThreeGestureSplitController$5;->val$runningTaskId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "initiateSplitSelect: task is null, return"

    .line 360
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 363
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/RecentsView;

    if-nez v2, :cond_2

    const-string p0, "initiateSplitSelect: recentsView is null, return"

    .line 365
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 368
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController$5;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    invoke-static {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->access$500(Lcom/miui/home/recents/ThreeGestureSplitController;)I

    move-result p0

    invoke-virtual {v2, v0, p0}, Lcom/miui/home/recents/views/RecentsView;->initiateSplitSelect(Lcom/android/systemui/shared/recents/model/Task;I)V

    return-void
.end method
