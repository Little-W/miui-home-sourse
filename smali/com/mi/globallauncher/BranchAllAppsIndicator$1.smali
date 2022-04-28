.class Lcom/mi/globallauncher/BranchAllAppsIndicator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BranchAllAppsIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/BranchAllAppsIndicator;->showDrawerBounceAnimation(Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/BranchAllAppsIndicator;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/BranchAllAppsIndicator;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator$1;->this$0:Lcom/mi/globallauncher/BranchAllAppsIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
