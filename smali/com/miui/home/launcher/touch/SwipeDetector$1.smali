.class final Lcom/miui/home/launcher/touch/SwipeDetector$1;
.super Lcom/miui/home/launcher/touch/SwipeDetector$Direction;
.source "SwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/touch/SwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/SwipeDetector$Direction;-><init>()V

    return-void
.end method


# virtual methods
.method getActiveTouchSlop(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F
    .locals 0

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget p2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method getDisplacement(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F
    .locals 0

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p2, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    return p1
.end method
