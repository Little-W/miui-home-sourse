.class Lcom/mi/globallauncher/view/TapTargetView$8;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 8

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v3, v2, Lcom/mi/globallauncher/view/TapTargetView;->calculatedOuterCircleRadius:I

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    sub-float v0, v1, v0

    iget-object v3, v2, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget v3, v3, Lcom/mi/globallauncher/view/TapTarget;->outerCircleAlpha:F

    mul-float/2addr v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleAlpha:I

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v2, v2, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v2, v2, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v3, v3, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v5, v5, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v6, v6, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    sub-float v3, v1, p1

    iget v5, v2, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iput v5, v2, Lcom/mi/globallauncher/view/TapTargetView;->targetCircleRadius:F

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    mul-float v5, v3, v4

    float-to-int v5, v5

    iput v5, v2, Lcom/mi/globallauncher/view/TapTargetView;->targetCircleAlpha:I

    add-float/2addr p1, v1

    iget v1, v2, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iput p1, v2, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulseRadius:F

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v1, p1, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulseAlpha:I

    int-to-float v1, v1

    mul-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, p1, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulseAlpha:I

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p1, Lcom/mi/globallauncher/view/TapTargetView;->textAlpha:I

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/TapTargetView;->calculateDrawingBounds()V

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView$8;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView;->invalidateViewAndOutline(Landroid/graphics/Rect;)V

    return-void
.end method
