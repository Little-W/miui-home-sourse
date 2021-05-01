.class Lcom/miui/home/recents/NavStubView$3;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->lambda$resetTaskView$234()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$startFullscreenProgress:F

.field final synthetic val$startRadius:F

.field final synthetic val$startRatio:F

.field final synthetic val$tv:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;FLcom/miui/home/recents/views/TaskView;FF)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/NavStubView$3;->val$startFullscreenProgress:F

    iput-object p3, p0, Lcom/miui/home/recents/NavStubView$3;->val$tv:Lcom/miui/home/recents/views/TaskView;

    iput p4, p0, Lcom/miui/home/recents/NavStubView$3;->val$startRadius:F

    iput p5, p0, Lcom/miui/home/recents/NavStubView$3;->val$startRatio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 628
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 629
    iget v0, p0, Lcom/miui/home/recents/NavStubView$3;->val$startFullscreenProgress:F

    const/4 v1, 0x0

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 630
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$3;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 631
    iget v0, p0, Lcom/miui/home/recents/NavStubView$3;->val$startRadius:F

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$7900(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView$3;->val$startRadius:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 632
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$3;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 633
    iget v0, p0, Lcom/miui/home/recents/NavStubView$3;->val$startRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 634
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$3;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    return-void
.end method
