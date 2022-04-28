.class Lcom/mi/globallauncher/view/TapTargetView$9$1;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/view/TapTargetView$9;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/globallauncher/view/TapTargetView$9;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/TapTargetView$9;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x2

    .line 546
    new-array v1, v0, [I

    .line 548
    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v2, v2, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v2, v2, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v3, v3, Lcom/mi/globallauncher/view/TapTargetView$9;->val$target:Lcom/mi/globallauncher/view/TapTarget;

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/TapTarget;->bounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 550
    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v2, v2, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {v2, v1}, Lcom/mi/globallauncher/view/TapTargetView;->getLocationOnScreen([I)V

    .line 551
    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v2, v2, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v2, v2, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v1, v3

    neg-int v4, v4

    const/4 v5, 0x1

    aget v1, v1, v5

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 553
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v1, v1, Lcom/mi/globallauncher/view/TapTargetView$9;->val$boundingParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 554
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v1, v1, Lcom/mi/globallauncher/view/TapTargetView$9;->val$context:Landroid/content/Context;

    const-string v2, "window"

    .line 555
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 556
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 557
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 559
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 560
    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v4, v4, Lcom/mi/globallauncher/view/TapTargetView$9;->val$boundingParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 561
    new-array v0, v0, [I

    .line 562
    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v4, v4, Lcom/mi/globallauncher/view/TapTargetView$9;->val$boundingParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 563
    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-boolean v4, v4, Lcom/mi/globallauncher/view/TapTargetView$9;->val$translucentStatusBar:Z

    if-eqz v4, :cond_0

    .line 564
    aget v4, v0, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 566
    :cond_0
    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-boolean v4, v4, Lcom/mi/globallauncher/view/TapTargetView$9;->val$translucentNavigationBar:Z

    if-eqz v4, :cond_1

    .line 567
    aget v0, v0, v5

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v4, v4, Lcom/mi/globallauncher/view/TapTargetView$9;->val$boundingParent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-boolean v0, v0, Lcom/mi/globallauncher/view/TapTargetView$9;->val$layoutNoLimits:Z

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->topBoundary:I

    .line 574
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->bottomBoundary:I

    goto :goto_0

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Lcom/mi/globallauncher/view/TapTargetView;->topBoundary:I

    .line 577
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->bottomBoundary:I

    .line 581
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/TapTargetView;->drawTintedTarget()V

    .line 582
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/TapTargetView;->requestFocus()Z

    .line 583
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/TapTargetView;->calculateDimensions()V

    .line 585
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$9$1;->this$1:Lcom/mi/globallauncher/view/TapTargetView$9;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetView$9;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-static {v0}, Lcom/mi/globallauncher/view/TapTargetView;->access$300(Lcom/mi/globallauncher/view/TapTargetView;)V

    return-void
.end method
