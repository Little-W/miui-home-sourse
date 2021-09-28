.class Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "SceneScreen.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/SceneScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;Lcom/miui/home/launcher/upsidescene/SceneScreen$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$200(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 91
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {v2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->isBeingDragged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    const v2, 0x3f733333    # 0.95f

    cmpg-float v2, v0, v2

    :cond_1
    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onPinchIn(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1

    :cond_2
    const v2, 0x3fa66666    # 1.3f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onPinchOut(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->isBeingDragged()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->finishCurrentGesture()V

    .line 82
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$102(Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)Z

    return-void
.end method
