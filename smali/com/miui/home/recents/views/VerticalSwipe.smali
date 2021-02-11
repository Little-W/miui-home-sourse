.class public Lcom/miui/home/recents/views/VerticalSwipe;
.super Ljava/lang/Object;
.source "VerticalSwipe.java"


# instance fields
.field private mCurAlpha:F

.field private mCurScale:F

.field private mCurTransY:F

.field private mTaskViewHeight:F

.field private mTaskViewWidth:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p2, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mTaskViewHeight:F

    .line 16
    iput p1, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mTaskViewWidth:F

    return-void
.end method

.method private afterFrictionValue(FF)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p2

    .line 36
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v1, p1, p1

    mul-float v2, v1, p1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    sub-float/2addr v2, v1

    add-float/2addr v2, p1

    mul-float/2addr v0, v2

    mul-float/2addr v0, p2

    return v0
.end method


# virtual methods
.method public calculate(F)V
    .locals 5

    .line 20
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    neg-float v3, v0

    .line 21
    invoke-direct {p0, v3, v2}, Lcom/miui/home/recents/views/VerticalSwipe;->afterFrictionValue(FF)F

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-gez v1, :cond_1

    .line 23
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    div-float/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v2, v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput v3, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurScale:F

    .line 24
    iget v3, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mTaskViewHeight:F

    iget v4, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurScale:F

    mul-float/2addr v3, v4

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, p1, v4}, Lcom/miui/home/recents/views/VerticalSwipe;->afterFrictionValue(FF)F

    move-result v4

    if-gez v1, :cond_2

    .line 28
    iget p1, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mTaskViewHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    add-float/2addr p1, v4

    div-float/2addr v3, v1

    sub-float/2addr p1, v3

    goto :goto_2

    :cond_2
    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr p1, v1

    :goto_2
    iput p1, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurTransY:F

    add-float/2addr v0, v2

    .line 30
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurAlpha:F

    return-void
.end method

.method public getCurAlpha()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurAlpha:F

    return v0
.end method

.method public getCurScale()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurScale:F

    return v0
.end method

.method public getCurTransY()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurTransY:F

    return v0
.end method
