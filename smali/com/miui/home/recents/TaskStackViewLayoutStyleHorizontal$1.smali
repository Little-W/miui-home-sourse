.class Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;
.super Ljava/lang/Object;
.source "TaskStackViewLayoutStyleHorizontal.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->createScaleDismissAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$newScale:F

.field final synthetic val$startAlpha:F

.field final synthetic val$startScale:F

.field final synthetic val$startTransY:F

.field final synthetic val$targetTransYOffset:F

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;FFFFF)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$v:Landroid/view/View;

    iput p2, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$startScale:F

    iput p3, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$newScale:F

    iput p4, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$startAlpha:F

    iput p5, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$startTransY:F

    iput p6, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$targetTransYOffset:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 99
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 100
    iget-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 101
    iget v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$startScale:F

    sub-float p1, v0, p1

    iget v1, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$newScale:F

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 102
    iget-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$v:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$startAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 103
    iget-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$v:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$startTransY:F

    iget v2, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$targetTransYOffset:F

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 104
    iget-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;->val$v:Landroid/view/View;

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method
