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

    .line 2340
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;)Z
    .locals 4

    .line 2361
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$700(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 2362
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$600(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    const/4 v2, 0x4

    if-nez v0, :cond_1

    .line 2363
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 2364
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/miui/home/launcher/ScreenView;->access$802(Lcom/miui/home/launcher/ScreenView;Z)Z

    .line 2366
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$600(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2367
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->getActualScaleProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onPinching(F)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public onScaleBegin(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;)Z
    .locals 1

    .line 2347
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView;->scaleBegin()V

    .line 2348
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$600(Lcom/miui/home/launcher/ScreenView;)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p0}, Lcom/miui/home/launcher/ScreenView;->access$600(Lcom/miui/home/launcher/ScreenView;)I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public onScaleEnd(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;)V
    .locals 2

    .line 2353
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$600(Lcom/miui/home/launcher/ScreenView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2354
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->finishCurrentGesture()V

    .line 2355
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->getActualScaleProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onPinchingEnd(F)V

    :cond_0
    return-void
.end method
