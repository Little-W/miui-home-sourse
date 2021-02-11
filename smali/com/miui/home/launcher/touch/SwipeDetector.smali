.class public Lcom/miui/home/launcher/touch/SwipeDetector;
.super Ljava/lang/Object;
.source "SwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/touch/SwipeDetector$Listener;,
        Lcom/miui/home/launcher/touch/SwipeDetector$Direction;,
        Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;
    }
.end annotation


# static fields
.field public static final VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;


# instance fields
.field protected mActivePointerId:I

.field private mCurrentMillis:J

.field private mDir:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

.field private mDisplacement:F

.field private final mDownPos:Landroid/graphics/PointF;

.field private mIgnoreSlopWhenSettling:Z

.field private mLastDisplacement:F

.field private final mLastPos:Landroid/graphics/PointF;

.field private final mListener:Lcom/miui/home/launcher/touch/SwipeDetector$Listener;

.field private mScrollConditions:I

.field private mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

.field private mSubtractDisplacement:F

.field private final mTouchSlop:F

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/miui/home/launcher/touch/SwipeDetector$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/touch/SwipeDetector$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    return-void
.end method

.method protected constructor <init>(FLcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mActivePointerId:I

    .line 59
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->IDLE:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    iput-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    .line 125
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    .line 126
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    .line 157
    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mTouchSlop:F

    .line 158
    iput-object p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mListener:Lcom/miui/home/launcher/touch/SwipeDetector$Listener;

    .line 159
    iput-object p3, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDir:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V
    .locals 0

    .line 152
    sget p1, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    int-to-float p1, p1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/touch/SwipeDetector;-><init>(FLcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    return-void
.end method

.method public static calculateDuration(FF)J
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    .line 315
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const v0, 0x3e4ccccd    # 0.2f

    .line 316
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x44960000    # 1200.0f

    div-float/2addr v0, p0

    mul-float/2addr v0, p1

    const/high16 p0, 0x42c80000    # 100.0f

    .line 317
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-long p0, p0

    return-wide p0
.end method

.method private static computeDampeningFactor(F)F
    .locals 1

    const v0, 0x417ea5dd

    add-float/2addr v0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method private initializeDragging()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_0

    .line 251
    iput v2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mSubtractDisplacement:F

    .line 253
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 254
    iget v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mTouchSlop:F

    iput v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mSubtractDisplacement:F

    goto :goto_0

    .line 256
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mTouchSlop:F

    neg-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mSubtractDisplacement:F

    :goto_0
    return-void
.end method

.method public static interpolate(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method private reportDragEnd()V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mListener:Lcom/miui/home/launcher/touch/SwipeDetector$Listener;

    iget v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/miui/home/launcher/touch/SwipeDetector$Listener;->onDragEnd(FZ)V

    return-void
.end method

.method private reportDragStart(Z)Z
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mListener:Lcom/miui/home/launcher/touch/SwipeDetector$Listener;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector$Listener;->onDragStart(Z)V

    return v1
.end method

.method private reportDragging()Z
    .locals 3

    .line 271
    iget v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    iget v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastDisplacement:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 272
    iput v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastDisplacement:F

    .line 273
    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mListener:Lcom/miui/home/launcher/touch/SwipeDetector$Listener;

    iget v2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    invoke-interface {v1, v0, v2}, Lcom/miui/home/launcher/touch/SwipeDetector$Listener;->onDrag(FF)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setState(Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;)V
    .locals 2

    .line 99
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->initializeDragging()V

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->IDLE:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->reportDragStart(Z)Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 104
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->reportDragStart(Z)Z

    .line 107
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->reportDragEnd()V

    .line 111
    :cond_2
    iput-object p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    return-void
.end method

.method private shouldScrollStart(Landroid/view/MotionEvent;I)Z
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDir:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/touch/SwipeDetector$Direction;->getActiveTouchSlop(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result p1

    iget p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mTouchSlop:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    .line 170
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    const/4 p2, 0x0

    if-lez p1, :cond_0

    return p2

    .line 175
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mScrollConditions:I

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    iget p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_2

    :cond_1
    iget p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mScrollConditions:I

    and-int/2addr p1, v1

    if-lez p1, :cond_3

    iget p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    :cond_2
    return v1

    :cond_3
    return p2
.end method


# virtual methods
.method public computeVelocity(FJ)F
    .locals 2

    .line 286
    iget-wide v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mCurrentMillis:J

    .line 287
    iput-wide p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mCurrentMillis:J

    .line 289
    iget-wide p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mCurrentMillis:J

    sub-long/2addr p2, v0

    long-to-float p2, p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-lez v0, :cond_0

    div-float p3, p1, p2

    .line 291
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3a83126f    # 0.001f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 292
    iput p3, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {p2}, Lcom/miui/home/launcher/touch/SwipeDetector;->computeDampeningFactor(F)F

    move-result p1

    .line 295
    iget p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    invoke-static {p2, p3, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->interpolate(FFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    .line 297
    :goto_0
    iget p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    return p1
.end method

.method public finishedScrolling()V
    .locals 1

    .line 241
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->IDLE:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->setState(Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;)V

    return-void
.end method

.method public isDraggingOrSettling()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isIdleState()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->IDLE:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 210
    :pswitch_0
    iget v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDir:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    iget-object v2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, v0, v2}, Lcom/miui/home/launcher/touch/SwipeDetector$Direction;->getDisplacement(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    .line 215
    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDir:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    iget-object v2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, v0, v2}, Lcom/miui/home/launcher/touch/SwipeDetector$Direction;->getDisplacement(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result v1

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 215
    invoke-virtual {p0, v1, v4, v5}, Lcom/miui/home/launcher/touch/SwipeDetector;->computeVelocity(FJ)F

    .line 219
    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v2, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->shouldScrollStart(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/touch/SwipeDetector;->setState(Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;)V

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v2, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne v1, v2, :cond_2

    .line 223
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->reportDragging()Z

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 230
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_5

    .line 231
    sget-object p1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->setState(Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;)V

    goto :goto_0

    .line 185
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mActivePointerId:I

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 187
    iget-object p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p1, 0x0

    .line 188
    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastDisplacement:F

    .line 189
    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDisplacement:F

    .line 190
    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mVelocity:F

    .line 192
    iget-object p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mState:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz p1, :cond_5

    .line 193
    sget-object p1, Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->setState(Lcom/miui/home/launcher/touch/SwipeDetector$ScrollState;)V

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 200
    iget v4, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mActivePointerId:I

    if-ne v1, v4, :cond_5

    if-nez v0, :cond_4

    move v2, v3

    .line 202
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    .line 203
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v4, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 204
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 202
    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 206
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mActivePointerId:I

    :cond_5
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDetectableScrollConditions(IZ)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mScrollConditions:I

    .line 164
    iput-boolean p2, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mIgnoreSlopWhenSettling:Z

    return-void
.end method

.method public wasInitialTouchPositive()Z
    .locals 2

    .line 267
    iget v0, p0, Lcom/miui/home/launcher/touch/SwipeDetector;->mSubtractDisplacement:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
