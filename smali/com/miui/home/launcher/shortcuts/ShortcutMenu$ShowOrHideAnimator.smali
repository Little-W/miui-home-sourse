.class Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;
.super Lcom/miui/home/launcher/common/DirectionState;
.source "ShortcutMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/ShortcutMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowOrHideAnimator"
.end annotation


# instance fields
.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;FF)V
    .locals 2

    .line 481
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    .line 482
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/common/DirectionState;-><init>(FF)V

    .line 479
    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 483
    iget-object p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 484
    iget-object p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/miui/home/launcher/shortcuts/-$$Lambda$ShortcutMenu$ShowOrHideAnimator$i7CFXFzjKuvhQ0yMrElSiS5nl1w;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/shortcuts/-$$Lambda$ShortcutMenu$ShowOrHideAnimator$i7CFXFzjKuvhQ0yMrElSiS5nl1w;-><init>(Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 490
    iget-object p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator$1;

    invoke-direct {p3, p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator$1;-><init>(Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;Lcom/miui/home/launcher/shortcuts/ShortcutMenu;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 485
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 486
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getEnd()F

    move-result v1

    div-float v1, p1, v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->access$000(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;F)V

    .line 487
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setScaleX(F)V

    .line 488
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public getCurrent()F
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getScaleX()F

    move-result v0

    return v0
.end method

.method protected onDirectionChanged()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 511
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getCurrent()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getStart()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->resetVisibility()V

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getCurrent()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getEnd()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getEnd()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->access$000(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;F)V

    .line 515
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getEnd()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setScaleX(F)V

    .line 516
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getEnd()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setScaleY(F)V

    .line 517
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onGoToEnd()V
    .locals 4

    const-string v0, "ShortcutMenu"

    const-string v1, "show ShortcutMenu"

    .line 523
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 526
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getCurrent()F

    move-result v3

    aput v3, v2, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getEnd()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 527
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onGoToStart()V
    .locals 4

    .line 532
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 533
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getCurrent()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getStart()F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 534
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public resetVisibility()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getStart()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->access$000(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;F)V

    .line 502
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getStart()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setScaleX(F)V

    .line 503
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getStart()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setScaleY(F)V

    .line 504
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setVisibility(I)V

    .line 505
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->resetDirection()V

    return-void
.end method
