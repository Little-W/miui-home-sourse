.class Lcom/mi/globallauncher/view/TapTargetView$1;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/view/TapTargetView;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 8

    .line 240
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v0, v0, Lcom/mi/globallauncher/view/TapTargetView;->calculatedOuterCircleRadius:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 241
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v1, v1, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    .line 245
    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {v4}, Lcom/mi/globallauncher/view/TapTargetView;->calculateDrawingBounds()V

    .line 248
    :cond_1
    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v4, v4, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget v4, v4, Lcom/mi/globallauncher/view/TapTarget;->outerCircleAlpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    .line 249
    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iput v0, v6, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    mul-float v7, v0, v4

    .line 250
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v6, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleAlpha:I

    .line 251
    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v4, v4, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 252
    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v4, v4, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v6, v6, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v3, v6, v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v6, v6, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v2, v6, v2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v6, v6, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 254
    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    mul-float v3, v0, v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/mi/globallauncher/view/TapTargetView;->targetCircleAlpha:I

    if-eqz v1, :cond_2

    .line 257
    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v3, v2, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v3, v0

    iput v3, v2, Lcom/mi/globallauncher/view/TapTargetView;->targetCircleRadius:F

    goto :goto_1

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v2, v0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iput v2, v0, Lcom/mi/globallauncher/view/TapTargetView;->targetCircleRadius:F

    .line 260
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v2, v0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulseRadius:F

    mul-float/2addr v2, p1

    iput v2, v0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulseRadius:F

    .line 263
    :goto_1
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, p1, v2}, Lcom/mi/globallauncher/view/TapTargetView;->delayedLerp(FF)F

    move-result p1

    mul-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, v0, Lcom/mi/globallauncher/view/TapTargetView;->textAlpha:I

    if-eqz v1, :cond_3

    .line 266
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/TapTargetView;->calculateDrawingBounds()V

    .line 269
    :cond_3
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$1;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v0, p1, Lcom/mi/globallauncher/view/TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTargetView;->invalidateViewAndOutline(Landroid/graphics/Rect;)V

    return-void
.end method
