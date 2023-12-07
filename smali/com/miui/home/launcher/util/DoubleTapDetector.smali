.class public Lcom/miui/home/launcher/util/DoubleTapDetector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/DoubleTapDetector$OnDoubleTapListener;
    }
.end annotation


# static fields
.field private static final MAX_TIMEOUT_MS:J


# instance fields
.field private mActionDownRawX:F

.field private mActionDownRawY:F

.field private mClickCount:I

.field private mFirstClickRawX:F

.field private mFirstClickRawY:F

.field private mLastClickTime:J

.field private final mListener:Lcom/miui/home/launcher/util/DoubleTapDetector$OnDoubleTapListener;

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/miui/home/launcher/util/DoubleTapDetector;->MAX_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/util/DoubleTapDetector$OnDoubleTapListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mListener:Lcom/miui/home/launcher/util/DoubleTapDetector$OnDoubleTapListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mActionDownRawX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mActionDownRawY:F

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v3, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mActionDownRawX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mTouchSlop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    iget v3, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mActionDownRawY:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mTouchSlop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mLastClickTime:J

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/miui/home/launcher/util/DoubleTapDetector;->MAX_TIMEOUT_MS:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mFirstClickRawY:F

    sub-float v3, p1, v3

    iget v4, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mFirstClickRawX:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    :cond_1
    iput v1, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mClickCount:I

    :cond_2
    iget v3, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mClickCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mClickCount:I

    iget v3, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mClickCount:I

    if-ne v3, v2, :cond_3

    iput v0, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mFirstClickRawX:F

    iput p1, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mFirstClickRawY:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mLastClickTime:J

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mFirstClickRawY:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_4

    iget p1, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mFirstClickRawX:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v7, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mLastClickTime:J

    sub-long/2addr v2, v7

    cmp-long p1, v2, v5

    if-gtz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mListener:Lcom/miui/home/launcher/util/DoubleTapDetector$OnDoubleTapListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/util/DoubleTapDetector$OnDoubleTapListener;->onDoubleTap()V

    :cond_4
    iput v1, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mClickCount:I

    goto :goto_0

    :cond_5
    iput v1, p0, Lcom/miui/home/launcher/util/DoubleTapDetector;->mClickCount:I

    :cond_6
    :goto_0
    return v1
.end method
