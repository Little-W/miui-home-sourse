.class Lcom/miui/home/recents/RecentsViewStateController$1;
.super Ljava/lang/Object;
.source "RecentsViewStateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/RecentsViewStateController;->setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/RecentsViewStateController;

.field final synthetic val$recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/RecentsViewStateController;Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/miui/home/recents/RecentsViewStateController$1;->this$0:Lcom/miui/home/recents/RecentsViewStateController;

    iput-object p2, p0, Lcom/miui/home/recents/RecentsViewStateController$1;->val$recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController$1;->this$0:Lcom/miui/home/recents/RecentsViewStateController;

    iget-object v0, v0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsExitRecentsAnimating(Z)V

    .line 112
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController$1;->this$0:Lcom/miui/home/recents/RecentsViewStateController;

    invoke-static {v0}, Lcom/miui/home/recents/RecentsViewStateController;->access$000(Lcom/miui/home/recents/RecentsViewStateController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController$1;->val$recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    :cond_0
    return-void
.end method
