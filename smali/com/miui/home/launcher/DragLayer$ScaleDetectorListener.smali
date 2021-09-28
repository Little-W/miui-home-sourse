.class public Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragLayer;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/DragLayer;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 670
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 671
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/DragLayer;

    invoke-static {v0}, Lcom/miui/home/launcher/DragLayer;->access$100(Lcom/miui/home/launcher/DragLayer;)Lcom/miui/home/launcher/util/TouchController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/DragLayer;

    .line 672
    invoke-static {p1}, Lcom/miui/home/launcher/DragLayer;->access$100(Lcom/miui/home/launcher/DragLayer;)Lcom/miui/home/launcher/util/TouchController;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz p1, :cond_0

    .line 673
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/DragLayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DragLayer;->access$202(Lcom/miui/home/launcher/DragLayer;Z)Z

    .line 674
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/DragLayer;

    invoke-static {p1}, Lcom/miui/home/launcher/DragLayer;->access$100(Lcom/miui/home/launcher/DragLayer;)Lcom/miui/home/launcher/util/TouchController;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/touch/FeedSwipeController;

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener$1;-><init>(Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;)V

    invoke-virtual {p1, v2, v1, v3}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onDragEnd(FZLjava/lang/Runnable;)V

    .line 680
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/DragLayer;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/miui/home/launcher/DragLayer;->access$102(Lcom/miui/home/launcher/DragLayer;Lcom/miui/home/launcher/util/TouchController;)Lcom/miui/home/launcher/util/TouchController;

    return v0

    :cond_0
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 688
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/DragLayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DragLayer;->access$202(Lcom/miui/home/launcher/DragLayer;Z)Z

    .line 689
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/DragLayer;

    invoke-static {p1}, Lcom/miui/home/launcher/DragLayer;->access$300(Lcom/miui/home/launcher/DragLayer;)I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/DragLayer;

    invoke-static {p1}, Lcom/miui/home/launcher/DragLayer;->access$100(Lcom/miui/home/launcher/DragLayer;)Lcom/miui/home/launcher/util/TouchController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/DragLayer;

    invoke-static {p1}, Lcom/miui/home/launcher/DragLayer;->access$100(Lcom/miui/home/launcher/DragLayer;)Lcom/miui/home/launcher/util/TouchController;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
