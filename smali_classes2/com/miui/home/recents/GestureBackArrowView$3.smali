.class Lcom/miui/home/recents/GestureBackArrowView$3;
.super Ljava/lang/Object;
.source "GestureBackArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/GestureBackArrowView;->changeScale(FFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureBackArrowView;

.field final synthetic val$isAdjustWithScale:Z

.field final synthetic val$start:F


# direct methods
.method constructor <init>(Lcom/miui/home/recents/GestureBackArrowView;ZF)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView$3;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    iput-boolean p2, p0, Lcom/miui/home/recents/GestureBackArrowView$3;->val$isAdjustWithScale:Z

    iput p3, p0, Lcom/miui/home/recents/GestureBackArrowView$3;->val$start:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 297
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView$3;->val$isAdjustWithScale:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView$3;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    iget v1, p0, Lcom/miui/home/recents/GestureBackArrowView$3;->val$start:F

    invoke-static {v0}, Lcom/miui/home/recents/GestureBackArrowView;->access$500(Lcom/miui/home/recents/GestureBackArrowView;)F

    move-result v2

    invoke-static {v2}, Lcom/miui/home/recents/GesturesBackController;->convertOffset(F)F

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/miui/home/recents/GestureBackArrowView$3;->val$start:F

    sub-float/2addr v2, v3

    .line 299
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 298
    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureBackArrowView;->access$402(Lcom/miui/home/recents/GestureBackArrowView;F)F

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView$3;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/recents/GestureBackArrowView;->access$402(Lcom/miui/home/recents/GestureBackArrowView;F)F

    .line 303
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView$3;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureBackArrowView;->invalidate()V

    return-void
.end method
