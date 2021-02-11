.class public Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;
.super Ljava/lang/Object;
.source "BoomValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/uninstall/BoomValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spark"
.end annotation


# static fields
.field private static final RADIUS:I


# instance fields
.field private mAlpha:F

.field private mAlphaDelay:F

.field private mColor:I

.field private mEndLocation:[F

.field private mGroupIndex:I

.field private mIndex:I

.field private mInitScale:F

.field private mMaxScale:F

.field private mMoveDelay:I

.field private mMoveDuration:I

.field private mScale:F

.field private mScaleDecreaseDelay:F

.field private mScaleDecreaseDuration:F

.field private mScaleIncreaseDuration:F

.field private mStartLocation:[F

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41000000    # 8.0f

    .line 87
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->RADIUS:I

    return-void
.end method

.method public constructor <init>(III[ILjava/util/Random;)V
    .locals 6

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mMoveDelay:I

    .line 114
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mIndex:I

    .line 115
    iput p2, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mColor:I

    .line 117
    iget p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mIndex:I

    const/4 p2, 0x3

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mGroupIndex:I

    .line 119
    iget p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mGroupIndex:I

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 120
    iput v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mInitScale:F

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 122
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    invoke-static {v0, p1, v2}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mInitScale:F

    .line 125
    :goto_0
    iget p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mIndex:I

    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mGroupIndex:I

    sub-int/2addr p1, v0

    div-int/2addr p1, p2

    const/high16 v2, 0x40a00000    # 5.0f

    if-nez v0, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 127
    iget v3, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mInitScale:F

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    mul-float/2addr p1, v0

    mul-float/2addr p1, v2

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScaleDecreaseDelay:F

    goto :goto_1

    :cond_1
    int-to-float p1, p1

    const v0, 0x3f4ccccd    # 0.8f

    .line 129
    iget v3, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mInitScale:F

    sub-float/2addr v0, v3

    mul-float/2addr p1, v0

    mul-float/2addr p1, v2

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScaleDecreaseDelay:F

    :goto_1
    const/high16 p1, 0x43960000    # 300.0f

    .line 132
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScaleDecreaseDuration:F

    .line 133
    iget p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScaleDecreaseDelay:F

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScaleIncreaseDuration:F

    .line 134
    iget p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScaleIncreaseDuration:F

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->calcScaleWhenIncrease(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mMaxScale:F

    .line 136
    iget p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScaleDecreaseDelay:F

    add-float/2addr p1, v2

    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mGroupIndex:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move p2, v1

    :goto_2
    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mAlphaDelay:F

    .line 138
    iget p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mGroupIndex:I

    const/high16 p2, 0x41f00000    # 30.0f

    if-nez p1, :cond_3

    const/high16 p1, 0x42a00000    # 80.0f

    .line 139
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result p1

    float-to-int p1, p1

    add-int/lit16 p1, p1, 0xc8

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mMoveDuration:I

    goto :goto_3

    :cond_3
    if-ne p1, v3, :cond_4

    const/high16 p1, 0x43200000    # 160.0f

    .line 141
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result p1

    float-to-int p1, p1

    add-int/lit16 p1, p1, 0xc8

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mMoveDuration:I

    goto :goto_3

    :cond_4
    const/high16 p1, 0x438c0000    # 280.0f

    .line 143
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result p2

    invoke-static {v2, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result p1

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mMoveDuration:I

    .line 146
    :goto_3
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    const p2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, p2

    int-to-float p2, p3

    const/high16 p3, 0x40800000    # 4.0f

    const/high16 v0, 0x41800000    # 16.0f

    .line 147
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result p3

    div-float p3, p2, p3

    invoke-direct {p0, p4, p3, p1}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->calLocation([IFF)[F

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mStartLocation:[F

    .line 150
    iget p3, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mGroupIndex:I

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    if-nez p3, :cond_5

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 151
    iget p3, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mInitScale:F

    float-to-double v4, p3

    sub-double/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400a666666666666L    # 3.3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p3, v0

    add-float/2addr p3, p2

    goto :goto_4

    :cond_5
    if-ne p3, v3, :cond_6

    const/high16 p3, 0x3f800000    # 1.0f

    .line 153
    iget p5, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mInitScale:F

    sub-float/2addr p3, p5

    float-to-double v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p3, v0

    add-float/2addr p3, p2

    goto :goto_4

    :cond_6
    const/high16 p3, 0x42480000    # 50.0f

    const/high16 v0, 0x43060000    # 134.0f

    .line 155
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result p5

    invoke-static {p3, v0, p5}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result p3

    add-float/2addr p3, p2

    .line 157
    :goto_4
    invoke-direct {p0, p4, p3, p1}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->calLocation([IFF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mEndLocation:[F

    return-void
.end method

.method private calLocation([IFF)[F
    .locals 7

    const/4 v0, 0x2

    .line 169
    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 170
    aget v2, p1, v1

    int-to-float v2, v2

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float p3, v5

    mul-float/2addr p3, p2

    add-float/2addr v2, p3

    aput v2, v0, v1

    const/4 p3, 0x1

    .line 171
    aget p1, p1, p3

    int-to-float p1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    aput p1, v0, p3

    return-object v0
.end method

.method private calcScaleWhenDecrease(F)F
    .locals 4

    .line 180
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mMaxScale:F

    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mInitScale:F

    sget-object v2, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    iget v3, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScaleDecreaseDelay:F

    sub-float/2addr p1, v3

    iget v3, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScaleDecreaseDuration:F

    div-float/2addr p1, v3

    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result p1

    return p1
.end method

.method private calcScaleWhenIncrease(F)F
    .locals 4

    .line 176
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mInitScale:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v0

    sget-object v2, Lcom/miui/home/launcher/common/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result p1

    return p1
.end method

.method private getMoveRatio(F)F
    .locals 2

    .line 190
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mMoveDelay:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mMoveDuration:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p1

    .line 191
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mIndex:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    .line 192
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :goto_0
    return p1
.end method

.method private getRadius()F
    .locals 2

    .line 165
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScale:F

    sget v1, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->RADIUS:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private updateAlpha(F)V
    .locals 5

    .line 208
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mAlphaDelay:F

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    .line 209
    iput v2, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mAlpha:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    add-float v3, v0, v1

    cmpl-float v3, p1, v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 211
    iput v4, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mAlpha:F

    goto :goto_0

    :cond_1
    sub-float/2addr p1, v0

    div-float/2addr p1, v1

    .line 213
    invoke-static {v2, v4, p1}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mAlpha:F

    :goto_0
    return-void
.end method

.method private updateLocation(F)V
    .locals 3

    .line 184
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->getMoveRatio(F)F

    move-result p1

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mStartLocation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mEndLocation:[F

    aget v1, v2, v1

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mX:F

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mStartLocation:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mEndLocation:[F

    aget v1, v2, v1

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mY:F

    return-void
.end method

.method private updateScale(F)V
    .locals 2

    .line 196
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScaleIncreaseDuration:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->calcScaleWhenIncrease(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScale:F

    goto :goto_0

    .line 198
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScaleDecreaseDelay:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    .line 199
    iget p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mMaxScale:F

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScale:F

    goto :goto_0

    .line 200
    :cond_1
    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScaleDecreaseDuration:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 201
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->calcScaleWhenDecrease(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScale:F

    goto :goto_0

    .line 203
    :cond_2
    iget p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mInitScale:F

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mScale:F

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 3

    .line 218
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_0

    .line 220
    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mX:F

    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mY:F

    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->getRadius()F

    move-result v2

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getDisappearTime()F
    .locals 2

    .line 161
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->mAlphaDelay:F

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public update(F)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->updateLocation(F)V

    .line 228
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->updateScale(F)V

    .line 229
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->updateAlpha(F)V

    return-void
.end method
