.class Lcom/mi/globallauncher/view/TapTargetView$10;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/view/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)V
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

    .line 595
    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 598
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->listener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-static {p1}, Lcom/mi/globallauncher/view/TapTargetView;->access$000(Lcom/mi/globallauncher/view/TapTargetView;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 600
    :cond_0
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v0, p1, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    .line 601
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v1, v1, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v2, v2, Lcom/mi/globallauncher/view/TapTargetView;->lastTouchX:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v3, v3, Lcom/mi/globallauncher/view/TapTargetView;->lastTouchY:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/mi/globallauncher/view/TapTargetView;->distance(IIII)D

    move-result-wide v0

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->targetCircleRadius:F

    float-to-double v2, p1

    cmpg-double p1, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gtz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 602
    :goto_0
    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v3, v2, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object v4, v4, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v5, v5, Lcom/mi/globallauncher/view/TapTargetView;->lastTouchX:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v6, v6, Lcom/mi/globallauncher/view/TapTargetView;->lastTouchY:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/mi/globallauncher/view/TapTargetView;->distance(IIII)D

    move-result-wide v2

    .line 604
    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v4, v4, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    float-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz p1, :cond_3

    .line 607
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-static {p1, v1}, Lcom/mi/globallauncher/view/TapTargetView;->access$002(Lcom/mi/globallauncher/view/TapTargetView;Z)Z

    .line 608
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->listener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTargetView$Listener;->onTargetClick(Lcom/mi/globallauncher/view/TapTargetView;)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 610
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->listener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTargetView$Listener;->onOuterCircleClick(Lcom/mi/globallauncher/view/TapTargetView;)V

    goto :goto_2

    .line 611
    :cond_4
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-boolean p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->cancelable:Z

    if-eqz p1, :cond_5

    .line 612
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-static {p1, v1}, Lcom/mi/globallauncher/view/TapTargetView;->access$002(Lcom/mi/globallauncher/view/TapTargetView;Z)Z

    .line 613
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->listener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$10;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTargetView$Listener;->onTargetCancel(Lcom/mi/globallauncher/view/TapTargetView;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    :goto_3
    return-void
.end method
