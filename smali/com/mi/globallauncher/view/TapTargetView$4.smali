.class Lcom/mi/globallauncher/view/TapTargetView$4;
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

    .line 296
    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$4;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 5

    .line 299
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$4;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, v1}, Lcom/mi/globallauncher/view/TapTargetView;->delayedLerp(FF)F

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView$4;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v3, v0, v2

    iget v4, v1, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulseRadius:F

    .line 301
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView$4;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    sub-float/2addr v2, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulseAlpha:I

    .line 302
    iget v0, v1, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$4;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {v2, p1}, Lcom/mi/globallauncher/view/TapTargetView;->halfwayLerp(F)F

    move-result p1

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$4;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v2, v2, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PULSE_RADIUS:I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, v1, Lcom/mi/globallauncher/view/TapTargetView;->targetCircleRadius:F

    .line 304
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$4;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$4;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v0, v0, Lcom/mi/globallauncher/view/TapTargetView;->calculatedOuterCircleRadius:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$4;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v0, p1, Lcom/mi/globallauncher/view/TapTargetView;->calculatedOuterCircleRadius:I

    int-to-float v0, v0

    iput v0, p1, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$4;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/TapTargetView;->calculateDrawingBounds()V

    .line 309
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$4;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v0, p1, Lcom/mi/globallauncher/view/TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTargetView;->invalidateViewAndOutline(Landroid/graphics/Rect;)V

    return-void
.end method
