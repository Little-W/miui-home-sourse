.class Lcom/miui/home/recents/NavStubView$27;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->performHomeToHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$startAlpha:F

.field final synthetic val$startScale:F


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;FF)V
    .locals 0

    .line 6941
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$27;->this$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/NavStubView$27;->val$startAlpha:F

    iput p3, p0, Lcom/miui/home/recents/NavStubView$27;->val$startScale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 6944
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 6945
    iget v0, p0, Lcom/miui/home/recents/NavStubView$27;->val$startAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 6946
    iget v2, p0, Lcom/miui/home/recents/NavStubView$27;->val$startScale:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    .line 6947
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$27;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0, v0, v2}, Lcom/miui/home/recents/NavStubView;->access$9400(Lcom/miui/home/recents/NavStubView;FF)V

    return-void
.end method
