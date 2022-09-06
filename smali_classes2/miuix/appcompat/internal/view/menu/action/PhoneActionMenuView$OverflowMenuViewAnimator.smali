.class Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;
.super Ljava/lang/Object;
.source "PhoneActionMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuViewAnimator"
.end annotation


# instance fields
.field private mCollapseAnimator:Landroid/animation/AnimatorSet;

.field private mExpandAnimator:Landroid/animation/AnimatorSet;

.field private overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$1;)V
    .locals 0

    .line 472
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)V

    return-void
.end method

.method private setContentViewImportantForAccessibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 599
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 601
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public ensureAnimators(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 8

    .line 481
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 483
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 485
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    const-string v2, "Value"

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 486
    new-array v2, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->show()Landroid/animation/Animator;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 487
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 488
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 489
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 490
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 492
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 493
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    const-string v6, "Value"

    new-array v7, v3, [F

    fill-array-data v7, :array_1

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 494
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 495
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 496
    new-instance p1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 497
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 498
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 500
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result p1

    if-nez p1, :cond_0

    .line 501
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 502
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public hide(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 0

    .line 515
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->ensureAnimators(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 516
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 517
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 518
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 585
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    move-result-object p1

    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 586
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    move-result-object p1

    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    move-result-object p1

    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 590
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    move-result-object p1

    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne p1, v0, :cond_3

    .line 591
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setValue(F)V

    const/4 p1, 0x1

    .line 592
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    goto :goto_1

    .line 587
    :cond_2
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setValue(F)V

    const/4 p1, 0x0

    .line 588
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 594
    :cond_3
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 566
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$100(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 567
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$100(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 568
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    invoke-static {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$202(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    const/4 p1, 0x0

    .line 569
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    goto :goto_0

    .line 570
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$100(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 571
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    invoke-static {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$202(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    const/4 p1, 0x1

    .line 572
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 573
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$300(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 574
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$500(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$400(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 578
    :cond_1
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 607
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    move-result-object p1

    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne p1, v0, :cond_0

    .line 608
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getPresenter()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    :cond_0
    return-void
.end method

.method public reverse()V
    .locals 4

    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    :try_start_0
    const-string v0, "android.animation.AnimatorSet"

    .line 533
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "reverse"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 538
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PhoneActionMenuView"

    const-string v2, "reverse: "

    .line 541
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 545
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 548
    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    return-void

    .line 556
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 557
    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public show(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 0

    .line 508
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->ensureAnimators(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 509
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 510
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 511
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
