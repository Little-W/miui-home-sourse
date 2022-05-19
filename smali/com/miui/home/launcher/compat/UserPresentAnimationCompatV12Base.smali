.class public abstract Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;
.source "UserPresentAnimationCompatV12Base.java"

# interfaces
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field protected final LOCATION:[I

.field private final mAnimationValue:[F

.field private final mCameraTranslationZ:F

.field private final mDelayDistanceRatio:F

.field private final mDelayRandomRatio:F

.field private mMinDelay:I

.field protected mPivot:[I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;FFF)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->LOCATION:[I

    const v0, 0x7fffffff

    .line 20
    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mMinDelay:I

    const/4 v0, 0x3

    .line 25
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mAnimationValue:[F

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->changePivot()V

    .line 31
    iput p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mCameraTranslationZ:F

    .line 32
    iput p3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mDelayDistanceRatio:F

    .line 33
    iput p4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mDelayRandomRatio:F

    .line 34
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method private changePivot()V
    .locals 6

    const/4 v0, 0x2

    .line 51
    new-array v1, v0, [I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x0

    aput v2, v1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    div-double/2addr v2, v4

    double-to-int v0, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    iput-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mPivot:[I

    return-void
.end method


# virtual methods
.method protected conversionValueFrom3DTo2D(IIF)[F
    .locals 2

    int-to-float p1, p1

    int-to-float p2, p2

    .line 76
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/util/CameraLite;->to2D(FFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 77
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    .line 78
    iget p1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 79
    invoke-static {p2, p3}, Lcom/miui/home/launcher/util/CameraLite;->valueTo2D(FF)F

    move-result p2

    .line 80
    iget-object p3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mAnimationValue:[F

    const/4 v0, 0x0

    aput v1, p3, v0

    const/4 v0, 0x1

    .line 81
    aput p1, p3, v0

    const/4 p1, 0x2

    .line 82
    aput p2, p3, p1

    return-object p3
.end method

.method public abstract endAnimation(Landroid/view/View;)V
.end method

.method public onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->changePivot()V

    return-void
.end method

.method public prepareAnimation()V
    .locals 4

    .line 39
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    .line 40
    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mMinDelay:I

    .line 42
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->prepareAnimation()V

    return-void
.end method

.method protected prepareUserPresentAnimation(Landroid/view/View;)V
    .locals 13

    if-eqz p1, :cond_0

    const v0, 0x7f0a02d7

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->endAnimation(Landroid/view/View;)V

    .line 58
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->LOCATION:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 59
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->LOCATION:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 60
    iget-object v3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->LOCATION:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v4

    add-int/2addr v3, v6

    .line 61
    iget-object v6, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mPivot:[I

    aget v7, v6, v2

    sub-int v7, v1, v7

    int-to-float v7, v7

    aget v6, v6, v5

    sub-int v6, v3, v6

    int-to-float v6, v6

    invoke-static {v7, v6}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result v6

    int-to-float v6, v6

    .line 62
    iget v7, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mDelayDistanceRatio:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    iget v10, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mDelayRandomRatio:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v6, v6

    .line 63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v0, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 64
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mMinDelay:I

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mMinDelay:I

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mPivot:[I

    aget v6, v0, v2

    sub-int/2addr v1, v6

    .line 66
    aget v0, v0, v5

    sub-int/2addr v3, v0

    const v0, 0x7f0a02d5

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0a02d6

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 69
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mCameraTranslationZ:F

    invoke-virtual {p0, v1, v3, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->conversionValueFrom3DTo2D(IIF)[F

    move-result-object v0

    .line 70
    aget v8, v0, v4

    aget v9, v0, v4

    const v10, 0x3e19999a    # 0.15f

    aget v11, v0, v2

    aget v12, v0, v5

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v12}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->setViewPrepareInfo(Landroid/view/View;FFFFF)V

    .line 71
    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mNumOfAnimatedView:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mNumOfAnimatedView:I

    :cond_0
    return-void
.end method

.method protected setViewPrepareInfo(Landroid/view/View;FFFFF)V
    .locals 0

    .line 88
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 90
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->ignoreTranslation(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 92
    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationX(F)V

    .line 94
    :cond_0
    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method final showUserPresentAnimation(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a02d7

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->prepareUserPresentAnimation(Landroid/view/View;)V

    .line 103
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    .line 106
    invoke-virtual {p1, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 107
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mMinDelay:I

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1
    const/16 v0, 0x12c

    .line 108
    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v0

    .line 109
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->ignoreTranslation(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->showUserPresentAnimation(Landroid/view/View;IZ)V

    return-void
.end method

.method abstract showUserPresentAnimation(Landroid/view/View;IZ)V
.end method
