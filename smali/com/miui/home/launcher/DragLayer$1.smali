.class Lcom/miui/home/launcher/DragLayer$1;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffsetAnimate(FFFF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragLayer;

.field final synthetic val$mWpOffsetXDelta:F

.field final synthetic val$mWpOffsetYDelta:F

.field final synthetic val$xOffset:F

.field final synthetic val$xStep:F

.field final synthetic val$xStepDelta:F

.field final synthetic val$yOffset:F

.field final synthetic val$yStep:F

.field final synthetic val$yStepDelta:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragLayer;FFFFFFFF)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer$1;->this$0:Lcom/miui/home/launcher/DragLayer;

    iput p2, p0, Lcom/miui/home/launcher/DragLayer$1;->val$xStep:F

    iput p3, p0, Lcom/miui/home/launcher/DragLayer$1;->val$xStepDelta:F

    iput p4, p0, Lcom/miui/home/launcher/DragLayer$1;->val$yStep:F

    iput p5, p0, Lcom/miui/home/launcher/DragLayer$1;->val$yStepDelta:F

    iput p6, p0, Lcom/miui/home/launcher/DragLayer$1;->val$xOffset:F

    iput p7, p0, Lcom/miui/home/launcher/DragLayer$1;->val$mWpOffsetXDelta:F

    iput p8, p0, Lcom/miui/home/launcher/DragLayer$1;->val$yOffset:F

    iput p9, p0, Lcom/miui/home/launcher/DragLayer$1;->val$mWpOffsetYDelta:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 471
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 472
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$1;->this$0:Lcom/miui/home/launcher/DragLayer;

    iget v1, p0, Lcom/miui/home/launcher/DragLayer$1;->val$xStep:F

    iget v2, p0, Lcom/miui/home/launcher/DragLayer$1;->val$xStepDelta:F

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/DragLayer$1;->val$yStep:F

    iget v3, p0, Lcom/miui/home/launcher/DragLayer$1;->val$yStepDelta:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/home/launcher/DragLayer$1;->val$xOffset:F

    iget v4, p0, Lcom/miui/home/launcher/DragLayer$1;->val$mWpOffsetXDelta:F

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/miui/home/launcher/DragLayer$1;->val$yOffset:F

    iget v5, p0, Lcom/miui/home/launcher/DragLayer$1;->val$mWpOffsetYDelta:F

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset(FFFF)Z

    return-void
.end method
