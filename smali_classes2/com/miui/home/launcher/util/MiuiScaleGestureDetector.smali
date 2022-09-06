.class public Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;
.super Ljava/lang/Object;
.source "MiuiScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mListener:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;

.field private mMinScaleFactor:F

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 133
    iput v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mMinScaleFactor:F

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleMode:I

    .line 179
    iput-object p1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mListener:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;

    .line 181
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 182
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mSpanSlop:I

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 184
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumScalingSpan()I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mMinSpan:I

    .line 186
    :cond_0
    iput-object p3, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x12

    const/4 p3, 0x1

    if-le p1, p2, :cond_1

    .line 190
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_1
    const/16 p2, 0x16

    if-le p1, p2, :cond_2

    .line 194
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->setStylusScaleEnabled(Z)V

    :cond_2
    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleStartX:F

    return p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleStartY:F

    return p1
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleMode:I

    return p1
.end method

.method private inAnchoredScaleMode()Z
    .locals 1

    .line 368
    iget v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getActualScaleProgress()F
    .locals 3

    .line 424
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->getMinScaleFactor()F

    move-result v2

    sub-float v2, v1, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public getMinScaleFactor()F
    .locals 1

    .line 416
    iget v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mMinScaleFactor:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 5

    .line 538
    invoke-direct {p0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 542
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpan:F

    iget v2, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpan:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpan:F

    iget v2, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 545
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 546
    iget v3, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpan:F

    iget v4, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mSpanSlop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    add-float/2addr v1, v2

    goto :goto_1

    :cond_4
    sub-float/2addr v1, v2

    :goto_1
    return v1

    .line 548
    :cond_5
    iget v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpan:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget v1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpan:F

    div-float/2addr v1, v0

    :cond_6
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrTime:J

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 217
    iget-boolean v3, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 221
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 225
    :goto_0
    iget v7, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    if-nez v4, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    if-eq v2, v5, :cond_4

    const/4 v9, 0x3

    if-eq v2, v9, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v9, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v9, v5

    :goto_3
    const/4 v10, 0x0

    if-eqz v2, :cond_5

    if-eqz v9, :cond_8

    .line 234
    :cond_5
    iget-boolean v11, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInProgress:Z

    if-eqz v11, :cond_6

    .line 235
    iget-object v11, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mListener:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v11, v0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;)V

    .line 236
    iput-boolean v6, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInProgress:Z

    .line 237
    iput v10, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInitialSpan:F

    .line 238
    iput v6, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_4

    .line 239
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v9, :cond_7

    .line 240
    iput-boolean v6, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInProgress:Z

    .line 241
    iput v10, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInitialSpan:F

    .line 242
    iput v6, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleMode:I

    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    return v5

    .line 250
    :cond_8
    iget-boolean v11, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInProgress:Z

    if-nez v11, :cond_9

    iget-boolean v11, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v11, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-nez v11, :cond_9

    if-nez v9, :cond_9

    if-eqz v4, :cond_9

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 255
    iput v8, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleMode:I

    .line 256
    iput v10, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInitialSpan:F

    :cond_9
    const/4 v4, 0x6

    if-eqz v2, :cond_b

    if-eq v2, v4, :cond_b

    const/4 v9, 0x5

    if-eq v2, v9, :cond_b

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    move v7, v6

    goto :goto_6

    :cond_b
    :goto_5
    move v7, v5

    :goto_6
    if-ne v2, v4, :cond_c

    move v4, v5

    goto :goto_7

    :cond_c
    move v4, v6

    :goto_7
    if-eqz v4, :cond_d

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    goto :goto_8

    :cond_d
    const/4 v9, -0x1

    :goto_8
    if-eqz v4, :cond_e

    add-int/lit8 v4, v3, -0x1

    goto :goto_9

    :cond_e
    move v4, v3

    .line 271
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 274
    iget v11, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 275
    iget v12, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    cmpg-float v13, v13, v12

    if-gez v13, :cond_f

    .line 277
    iput-boolean v5, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_c

    .line 279
    :cond_f
    iput-boolean v6, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_c

    :cond_10
    move v11, v6

    move v12, v10

    move v13, v12

    :goto_a
    if-ge v11, v3, :cond_12

    if-ne v9, v11, :cond_11

    goto :goto_b

    .line 284
    :cond_11
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v12, v14

    .line 285
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v13, v14

    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_12
    int-to-float v11, v4

    div-float/2addr v12, v11

    div-float v11, v13, v11

    move/from16 v16, v12

    move v12, v11

    move/from16 v11, v16

    :goto_c
    move v13, v10

    move v14, v13

    move v10, v6

    :goto_d
    if-ge v10, v3, :cond_14

    if-ne v9, v10, :cond_13

    goto :goto_e

    .line 298
    :cond_13
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    sub-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v13, v15

    .line 299
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    sub-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v14, v15

    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_14
    int-to-float v1, v4

    div-float/2addr v13, v1

    div-float/2addr v14, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v13, v1

    mul-float/2addr v14, v1

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v14

    goto :goto_f

    :cond_15
    float-to-double v3, v13

    float-to-double v9, v14

    .line 313
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 319
    :goto_f
    iget-boolean v3, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInProgress:Z

    .line 320
    iput v11, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mFocusX:F

    .line 321
    iput v12, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mFocusY:F

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v4

    if-nez v4, :cond_17

    iget-boolean v4, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInProgress:Z

    if-eqz v4, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->getScaleFactor()F

    move-result v4

    iget v9, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mMinScaleFactor:F

    cmpg-float v4, v4, v9

    if-ltz v4, :cond_16

    if-eqz v7, :cond_17

    .line 324
    :cond_16
    iget-object v4, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mListener:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, v0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;)V

    .line 325
    iput-boolean v6, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInProgress:Z

    .line 326
    iput v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInitialSpan:F

    :cond_17
    if-eqz v7, :cond_18

    .line 329
    iput v13, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpanX:F

    iput v13, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpanX:F

    .line 330
    iput v14, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpanY:F

    iput v14, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpanY:F

    .line 331
    iput v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpan:F

    iput v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInitialSpan:F

    .line 334
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v4

    if-eqz v4, :cond_19

    iget v4, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mSpanSlop:I

    goto :goto_10

    :cond_19
    iget v4, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mMinSpan:I

    .line 335
    :goto_10
    iget-boolean v6, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInProgress:Z

    if-nez v6, :cond_1b

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1b

    if-nez v3, :cond_1a

    iget v3, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInitialSpan:F

    sub-float v3, v1, v3

    .line 336
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mSpanSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1b

    .line 337
    :cond_1a
    iput v13, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpanX:F

    iput v13, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpanX:F

    .line 338
    iput v14, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpanY:F

    iput v14, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpanY:F

    .line 339
    iput v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpan:F

    .line 340
    iget-wide v3, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrTime:J

    iput-wide v3, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevTime:J

    .line 341
    iget-object v3, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mListener:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, v0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInProgress:Z

    :cond_1b
    if-ne v2, v8, :cond_1d

    .line 346
    iput v13, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpanX:F

    .line 347
    iput v14, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpanY:F

    .line 348
    iput v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpan:F

    .line 352
    iget-boolean v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mInProgress:Z

    if-eqz v1, :cond_1c

    .line 353
    iget-object v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mListener:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;)Z

    move-result v1

    goto :goto_11

    :cond_1c
    move v1, v5

    :goto_11
    if-eqz v1, :cond_1d

    .line 357
    iget v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpanX:F

    iput v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpanX:F

    .line 358
    iget v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpanY:F

    iput v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpanY:F

    .line 359
    iget v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevSpan:F

    .line 360
    iget-wide v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mCurrTime:J

    iput-wide v1, v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mPrevTime:J

    :cond_1d
    return v5
.end method

.method public setMinScaleFactor(F)V
    .locals 0

    .line 420
    iput p1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mMinScaleFactor:F

    return-void
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 3

    .line 378
    iput-boolean p1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mQuickScaleEnabled:Z

    .line 379
    iget-boolean p1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez p1, :cond_0

    .line 380
    new-instance p1, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$1;-><init>(Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;)V

    .line 391
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0

    .line 411
    iput-boolean p1, p0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->mStylusScaleEnabled:Z

    return-void
.end method
