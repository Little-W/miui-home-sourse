.class Lcom/miui/home/recents/NavStubView$25;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startHomeAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$endAlpha:F

.field final synthetic val$endScale:F

.field final synthetic val$startAlpha:F

.field final synthetic val$startScale:F


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;FFFF)V
    .locals 0

    .line 3447
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$25;->this$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/NavStubView$25;->val$startAlpha:F

    iput p3, p0, Lcom/miui/home/recents/NavStubView$25;->val$endAlpha:F

    iput p4, p0, Lcom/miui/home/recents/NavStubView$25;->val$startScale:F

    iput p5, p0, Lcom/miui/home/recents/NavStubView$25;->val$endScale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 3450
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 3451
    iget v0, p0, Lcom/miui/home/recents/NavStubView$25;->val$startAlpha:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView$25;->val$endAlpha:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 3452
    iget v1, p0, Lcom/miui/home/recents/NavStubView$25;->val$startScale:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView$25;->val$endScale:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 3453
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$25;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v0, v1}, Lcom/miui/home/recents/NavStubView;->access$2900(Lcom/miui/home/recents/NavStubView;FF)V

    return-void
.end method
