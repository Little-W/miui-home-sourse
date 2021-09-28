.class Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateToShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 13

    .line 873
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 875
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 879
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    const/4 v0, 0x2

    .line 883
    new-array v0, v0, [F

    .line 884
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$800(Lmiuix/popupwidget/internal/widget/ArrowPopupView;[F)V

    .line 886
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f19999a    # 0.6f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v2, 0x0

    aget v8, v0, v2

    const/4 v9, 0x0

    const/4 v12, 0x1

    aget v10, v0, v12

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-static {v1, v11}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$002(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 892
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 895
    :cond_2
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 898
    :goto_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$900(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 899
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 900
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->startAnimation(Landroid/view/animation/Animation;)V

    return v12
.end method
