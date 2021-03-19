.class public Lcom/miui/home/recents/views/VerticalSwipe;
.super Ljava/lang/Object;
.source "VerticalSwipe.java"


# instance fields
.field private mCanLockTaskView:Z

.field private mCurAlpha:F

.field private mCurScale:F

.field private mCurTransY:F

.field private mTaskViewHeight:F

.field private mTaskViewWidth:F


# direct methods
.method public constructor <init>(FFZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mTaskViewHeight:F

    .line 19
    iput p1, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mTaskViewWidth:F

    .line 20
    iput-boolean p3, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCanLockTaskView:Z

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

    .line 49
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p2

    .line 50
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

.method public static getAsScreenHeightWhenDismiss()I
    .locals 1

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public calculate(F)V
    .locals 6

    .line 24
    invoke-static {}, Lcom/miui/home/recents/views/VerticalSwipe;->getAsScreenHeightWhenDismiss()I

    move-result v0

    int-to-float v0, v0

    div-float v1, p1, v0

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    neg-float v4, v1

    .line 26
    invoke-direct {p0, v4, v3}, Lcom/miui/home/recents/views/VerticalSwipe;->afterFrictionValue(FF)F

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-gez v2, :cond_1

    .line 28
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    div-float/2addr v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v4, v3, v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput v4, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurScale:F

    .line 29
    iget v4, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mTaskViewHeight:F

    iget v5, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurScale:F

    mul-float/2addr v4, v5

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/VerticalSwipe;->afterFrictionValue(FF)F

    move-result v0

    if-gez v2, :cond_2

    .line 34
    iget p1, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mTaskViewHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr p1, v0

    div-float/2addr v4, v2

    sub-float/2addr p1, v4

    iput p1, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurTransY:F

    goto :goto_3

    .line 36
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCanLockTaskView:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_2

    :cond_3
    const/high16 v0, 0x40c00000    # 6.0f

    :goto_2
    div-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurTransY:F

    :goto_3
    add-float/2addr v1, v3

    .line 39
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurAlpha:F

    return-void
.end method

.method public getCurAlpha()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurAlpha:F

    return v0
.end method

.method public getCurScale()F
    .locals 1

    .line 55
    iget v0, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurScale:F

    return v0
.end method

.method public getCurTransY()F
    .locals 1

    .line 59
    iget v0, p0, Lcom/miui/home/recents/views/VerticalSwipe;->mCurTransY:F

    return v0
.end method
