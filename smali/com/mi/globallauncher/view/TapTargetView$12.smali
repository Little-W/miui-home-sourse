.class Lcom/mi/globallauncher/view/TapTargetView$12;
.super Landroid/view/ViewOutlineProvider;
.source "TapTargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/view/TapTargetView;->applyTargetOptions(Landroid/content/Context;)V
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

    .line 649
    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$12;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5

    .line 653
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$12;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    if-nez p1, :cond_0

    return-void

    .line 654
    :cond_0
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$12;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    int-to-float p1, p1

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView$12;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v1, v1, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView$12;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v1, v1, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView$12;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v3, v3, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView$12;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v3, v3, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v3, v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$12;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v4, v4, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$12;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v4, v4, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v2, v4, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$12;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v4, v4, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p2, p1, v1, v3, v2}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 657
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$12;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleAlpha:I

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 658
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p1, v1, :cond_1

    .line 659
    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView$12;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_DIM:I

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Outline;->offset(II)V

    :cond_1
    return-void
.end method
