.class public Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ScreenView;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ScreenView;)V
    .locals 0

    .line 2303
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;)Z
    .locals 4

    .line 2323
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$800(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 2324
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$700(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    const/4 v2, 0x4

    if-nez v0, :cond_1

    .line 2325
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 2326
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/miui/home/launcher/ScreenView;->access$902(Lcom/miui/home/launcher/ScreenView;Z)Z

    .line 2328
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$700(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2329
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->getActualScaleProgress()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView;->onPinching(F)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public onScaleBegin(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;)Z
    .locals 1

    .line 2310
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$700(Lcom/miui/home/launcher/ScreenView;)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$700(Lcom/miui/home/launcher/ScreenView;)I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public onScaleEnd(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;)V
    .locals 2

    .line 2315
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$700(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2316
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->finishCurrentGesture()V

    .line 2317
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->getActualScaleProgress()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView;->onPinchingEnd(F)V

    :cond_0
    return-void
.end method
