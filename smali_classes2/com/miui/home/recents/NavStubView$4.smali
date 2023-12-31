.class Lcom/miui/home/recents/NavStubView$4;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->lambda$resetTaskView$6()V
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

.field final synthetic val$taskViewRadius:I

.field final synthetic val$tv:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;FLcom/miui/home/recents/views/TaskView;FIF)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/NavStubView$4;->val$startFullscreenProgress:F

    iput-object p3, p0, Lcom/miui/home/recents/NavStubView$4;->val$tv:Lcom/miui/home/recents/views/TaskView;

    iput p4, p0, Lcom/miui/home/recents/NavStubView$4;->val$startRadius:F

    iput p5, p0, Lcom/miui/home/recents/NavStubView$4;->val$taskViewRadius:I

    iput p6, p0, Lcom/miui/home/recents/NavStubView$4;->val$startRatio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1011
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 1012
    iget v0, p0, Lcom/miui/home/recents/NavStubView$4;->val$startFullscreenProgress:F

    const/4 v1, 0x0

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 1013
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$4;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 1014
    iget v0, p0, Lcom/miui/home/recents/NavStubView$4;->val$startRadius:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView$4;->val$taskViewRadius:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 1015
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$4;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 1016
    iget v1, p0, Lcom/miui/home/recents/NavStubView$4;->val$startRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 1017
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$4;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    .line 1018
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$4;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->getSecondThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    return-void
.end method
