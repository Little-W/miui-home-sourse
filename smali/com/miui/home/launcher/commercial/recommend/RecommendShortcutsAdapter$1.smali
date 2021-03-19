.class Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecommendShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->hideLoadingViewWithAnim(Lcom/miui/home/launcher/ShortcutIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

.field final synthetic val$loadingView:Landroid/widget/FrameLayout;

.field final synthetic val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;Lcom/miui/home/launcher/ShortcutIcon;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;->val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p3, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;->val$loadingView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;->val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->stopLoading()V

    .line 116
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;->val$loadingView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter$1;->val$loadingView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
