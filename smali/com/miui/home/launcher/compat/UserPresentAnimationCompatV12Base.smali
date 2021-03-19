.class public abstract Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;
.source "UserPresentAnimationCompatV12Base.java"


# static fields
.field private static final LOCATION:[I

.field private static final MATRIX_VALUE:[F


# instance fields
.field private final mCamera:Landroid/graphics/Camera;

.field private final mCameraTranslationZ:F

.field private final mDelayDistanceRatio:F

.field private final mDelayRandomRatio:F

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMinDelay:I

.field private final mPivot:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 13
    new-array v0, v0, [F

    sput-object v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->MATRIX_VALUE:[F

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [I

    sput-object v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->LOCATION:[I

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;FFFF)V
    .locals 3

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const p1, 0x7fffffff

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mMinDelay:I

    .line 28
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mCamera:Landroid/graphics/Camera;

    .line 29
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    .line 30
    new-array v0, p1, [I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    div-int/2addr v1, p1

    const/4 p1, 0x0

    aput v1, v0, p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    const/4 v1, 0x1

    aput p1, v0, v1

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mPivot:[I

    .line 31
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->getLocationX()F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mPivot:[I

    aget v1, v2, v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->px2in(F)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 32
    iput p3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mCameraTranslationZ:F

    .line 33
    iput p4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mDelayDistanceRatio:F

    .line 34
    iput p5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mDelayRandomRatio:F

    return-void
.end method


# virtual methods
.method public abstract endAnimation(Landroid/view/View;)V
.end method

.method final prepareUserPresentAnimation(Landroid/view/View;)V
    .locals 12

    if-eqz p1, :cond_1

    const v0, 0x7f0a01f1

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->endAnimation(Landroid/view/View;)V

    .line 42
    sget-object v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->LOCATION:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 43
    sget-object v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->LOCATION:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 44
    sget-object v3, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->LOCATION:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v4

    add-int/2addr v3, v6

    .line 45
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

    .line 46
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

    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v0, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 48
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mMinDelay:I

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mMinDelay:I

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mCamera:Landroid/graphics/Camera;

    iget-object v6, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mPivot:[I

    aget v7, v6, v2

    sub-int/2addr v1, v7

    int-to-float v1, v1

    aget v5, v6, v5

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mCameraTranslationZ:F

    invoke-virtual {v0, v1, v3, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->mMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->MATRIX_VALUE:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 57
    sget-object v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->MATRIX_VALUE:[F

    aget v0, v0, v2

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRangeAnimatorParams(F)F

    move-result v0

    .line 58
    sget-object v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->MATRIX_VALUE:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRangeAnimatorParams(F)F

    move-result v1

    .line 59
    sget-object v2, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->MATRIX_VALUE:[F

    aget v2, v2, v4

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRangeAnimatorParams(F)F

    move-result v2

    .line 60
    sget-object v3, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->MATRIX_VALUE:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-static {v3}, Lcom/miui/home/launcher/common/Utilities;->boundToRangeAnimatorParams(F)F

    move-result v3

    const/4 v4, 0x0

    .line 62
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 64
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->ignoreTranslation(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 68
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method final showUserPresentAnimation(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a01f1

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->prepareUserPresentAnimation(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 79
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

    .line 81
    invoke-virtual {p1, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 82
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

    .line 84
    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v0

    .line 86
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->ignoreTranslation(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->showUserPresentAnimation(Landroid/view/View;IZ)V

    return-void
.end method

.method abstract showUserPresentAnimation(Landroid/view/View;IZ)V
.end method
