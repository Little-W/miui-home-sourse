.class Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;
.super Lcom/miui/home/launcher/anim/AnimationSuccessListener;
.source "AllAppsTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;->this$0:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-direct {p0}, Lcom/miui/home/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;->this$0:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->access$300(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)V

    const/4 p1, 0x0

    .line 183
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;->this$0:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->access$200(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)V

    return-void
.end method
