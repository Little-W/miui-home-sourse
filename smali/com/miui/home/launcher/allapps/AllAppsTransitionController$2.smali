.class Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;
.super Lcom/miui/home/launcher/anim/AnimationSuccessListener;
.source "AllAppsTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->getProgressAnimatorListener(Lcom/miui/home/launcher/LauncherState;Z)Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

.field final synthetic val$state:Lcom/miui/home/launcher/LauncherState;

.field final synthetic val$withAnim:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;->this$0:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;->val$state:Lcom/miui/home/launcher/LauncherState;

    iput-boolean p3, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;->val$withAnim:Z

    invoke-direct {p0}, Lcom/miui/home/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;->this$0:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->access$300(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)V

    const/4 p1, 0x0

    .line 190
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;->this$0:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;->val$state:Lcom/miui/home/launcher/LauncherState;

    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;->val$withAnim:Z

    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->access$200(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;Lcom/miui/home/launcher/LauncherState;Z)V

    return-void
.end method
