.class Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MiuiScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->setQuickScaleEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$1;->this$0:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$1;->this$0:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->access$002(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;F)F

    .line 386
    iget-object v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$1;->this$0:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->access$102(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;F)F

    .line 387
    iget-object p1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$1;->this$0:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->access$202(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;I)I

    return v0
.end method
