.class public Lcom/miui/home/launcher/allapps/anim/RevealDrawable;
.super Ljava/lang/Object;
.source "RevealDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;
    }
.end annotation


# instance fields
.field private final mBeginRadius:I

.field private mColor:I

.field private mDuring:I

.field private final mEndRadius:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsAnimationRunning:Z

.field private mLastAnimFrameTime:J

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressListener:Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;

.field private mTotalFrameTime:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FFIII)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 24
    iput v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mDuring:I

    .line 35
    iput p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->x:F

    .line 36
    iput p2, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->y:F

    .line 37
    iput p4, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mEndRadius:I

    .line 38
    iput p3, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mBeginRadius:I

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mIsAnimationRunning:Z

    .line 40
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p1, 0x3e4ccccd    # 0.2f

    .line 42
    invoke-static {p5, p1}, Lcom/miui/home/launcher/graphics/IconPalette;->setColorAlpha(IF)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mColor:I

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mTotalFrameTime:I

    .line 44
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mLastAnimFrameTime:J

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mIsAnimationRunning:Z

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mProgressListener:Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;

    if-eqz p0, :cond_0

    .line 87
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;->onRevealCancel()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 48
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mIsAnimationRunning:Z

    if-eqz v0, :cond_4

    .line 49
    iget v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mTotalFrameTime:I

    iget v1, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mDuring:I

    if-ge v0, v1, :cond_3

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mProgressListener:Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;->onRevealBegin()V

    .line 53
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mLastAnimFrameTime:J

    sub-long/2addr v0, v2

    .line 54
    iget v2, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mTotalFrameTime:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mTotalFrameTime:I

    .line 55
    iget v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mTotalFrameTime:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mDuring:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 57
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    .line 58
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :cond_1
    sub-float/2addr v1, v0

    .line 60
    iget v2, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mBeginRadius:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mEndRadius:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 61
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mColor:I

    invoke-static {v4, v1}, Lcom/miui/home/launcher/graphics/IconPalette;->setColorAlpha(IF)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget v1, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->x:F

    iget v3, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->y:F

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 63
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mProgressListener:Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;

    if-eqz p1, :cond_2

    .line 64
    invoke-interface {p1, v0}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;->onProgress(F)V

    .line 66
    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mLastAnimFrameTime:J

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mIsAnimationRunning:Z

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mProgressListener:Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;

    if-eqz p0, :cond_4

    .line 70
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;->onRevealEnd()V

    :cond_4
    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mIsAnimationRunning:Z

    return p0
.end method

.method public setDuring(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mDuring:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setRevealListener(Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->mProgressListener:Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;

    return-void
.end method
