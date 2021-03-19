.class public Lcom/miui/home/launcher/view/HomeFeedArrowView;
.super Landroid/view/View;
.source "HomeFeedArrowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;,
        Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;,
        Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;
    }
.end annotation


# instance fields
.field private mAnimUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

.field private mAnimUtil:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

.field private mBaseline:F

.field private mCenterX:F

.field private mChangeY:F

.field private mDownAnimator:Landroid/animation/ValueAnimator;

.field private mEndX:F

.field private mFirstAnimUtil:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

.field private mHeight:I

.field private mIsDrawText:Z

.field private mIsStartFirstAnim:Z

.field private mLastViewTransY:F

.field private mLineWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRunnable:Ljava/lang/Runnable;

.field private mStartX:F

.field private mStartY:F

.field private mStrokeWidth:I

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextTransY:F

.field private mTransY:F

.field private mUpAnimator:Landroid/animation/ValueAnimator;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;-><init>(Lcom/miui/home/launcher/view/HomeFeedArrowView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mRunnable:Ljava/lang/Runnable;

    .line 72
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/view/HomeFeedArrowView;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTextTransY:F

    return p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/view/HomeFeedArrowView;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mIsDrawText:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Landroid/graphics/Paint;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTextPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/view/HomeFeedArrowView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->removeArrowView()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/view/HomeFeedArrowView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTransY:F

    return p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/view/HomeFeedArrowView;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTransY:F

    return p1
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/view/HomeFeedArrowView;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mChangeY:F

    return p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Landroid/graphics/Paint;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mIsStartFirstAnim:Z

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mFirstAnimUtil:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUtil:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    return-object p0
.end method

.method private cancelDownUpAnimator()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mUpAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private clear()V
    .locals 3

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mIsDrawText:Z

    .line 258
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->cancelDownUpAnimator()V

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUtil:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->clearAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    invoke-interface {v0, v2}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onAlphaUpdate(F)V

    .line 261
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    invoke-interface {v0, v2, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onTranslateY(FZ)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mFirstAnimUtil:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->clearAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    invoke-interface {v0, v2}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onAlphaUpdate(F)V

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    invoke-interface {v0, v2, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onTranslateY(FZ)V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private drawArrow(Landroid/graphics/Canvas;)V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mStartX:F

    iget v2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mStartY:F

    iget v3, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTransY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 138
    iget v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mStartY:F

    iget v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mChangeY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTransY:F

    sub-float/2addr v0, v1

    .line 139
    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mCenterX:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mEndX:F

    iget v3, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mStartY:F

    iget v4, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTransY:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 142
    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mCenterX:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getArrowAnimator(F)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 194
    new-array v0, v0, [F

    iget v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mChangeY:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 196
    new-instance v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$2;-><init>(Lcom/miui/home/launcher/view/HomeFeedArrowView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private init()V
    .locals 4

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ea

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mHeight:I

    const v1, 0x7f0700eb

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mLineWidth:I

    const v1, 0x7f10023f

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mText:Ljava/lang/String;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x5

    .line 89
    iput v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mStrokeWidth:I

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPath:Landroid/graphics/Path;

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTextPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private removeArrowView()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 240
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private resetView()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 228
    iput-boolean v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mIsDrawText:Z

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->setTranslationY(F)V

    .line 230
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->invalidate()V

    return-void
.end method

.method private startAnim(Z)V
    .locals 2

    .line 234
    iput-boolean p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mIsStartFirstAnim:Z

    .line 235
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public cancelAnimRemoveView(Z)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->clear()V

    if-eqz p1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->removeArrowView()V

    :cond_0
    return-void
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mStrokeWidth:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 129
    iget-boolean v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mIsStartFirstAnim:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mIsDrawText:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mBaseline:F

    iget v3, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTextTransY:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->drawArrow(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 109
    iget p2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 110
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onNewHomeTransProgress(FF)V
    .locals 6

    const v0, 0x3f6e147b    # 0.93f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    if-gtz v1, :cond_2

    sub-float/2addr v0, p1

    const v1, 0x3e19999a    # 0.15f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fedc28f5c28f5c3L    # 0.93

    float-to-double v4, p1

    sub-double/2addr v0, v4

    double-to-float v1, v0

    :goto_0
    cmpl-float p1, v1, v3

    if-ltz p1, :cond_1

    mul-float/2addr v1, v2

    const/high16 p1, 0x3fc00000    # 1.5f

    div-float p1, v1, p1

    goto :goto_1

    :cond_1
    move p1, v3

    goto :goto_1

    :cond_2
    const v0, 0x3f733333    # 0.95f

    sub-float/2addr p1, v0

    cmpl-float v0, p1, v3

    if-ltz v0, :cond_3

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p1, v0

    goto :goto_1

    :cond_3
    move p1, v3

    .line 156
    :goto_1
    iput v3, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTransY:F

    .line 157
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mIsDrawText:Z

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int p1, v1

    .line 160
    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->invalidate()V

    if-nez p1, :cond_4

    return-void

    .line 165
    :cond_4
    iget p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mLastViewTransY:F

    sub-float p1, p2, p1

    cmpl-float p1, p1, v3

    const/4 v1, 0x1

    if-lez p1, :cond_5

    move p1, v1

    goto :goto_2

    :cond_5
    move p1, v0

    .line 166
    :goto_2
    iget v4, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mLastViewTransY:F

    sub-float v4, p2, v4

    cmpg-float v3, v4, v3

    if-gez v3, :cond_6

    move v0, v1

    .line 167
    :cond_6
    iput p2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mLastViewTransY:F

    if-eqz p1, :cond_a

    .line 169
    iget p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mChangeY:F

    const/high16 p2, -0x3ee00000    # -10.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 172
    :cond_7
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->cancelDownUpAnimator()V

    .line 173
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mDownAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_8

    .line 174
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->getArrowAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mDownAnimator:Landroid/animation/ValueAnimator;

    .line 176
    :cond_8
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_9
    :goto_3
    return-void

    :cond_a
    :goto_4
    if-eqz v0, :cond_e

    .line 180
    iget p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mChangeY:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mUpAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    .line 183
    :cond_b
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->cancelDownUpAnimator()V

    .line 184
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mUpAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_c

    .line 185
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->getArrowAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mUpAnimator:Landroid/animation/ValueAnimator;

    .line 187
    :cond_c
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_d
    :goto_5
    return-void

    :cond_e
    :goto_6
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eqz p1, :cond_0

    .line 117
    iput p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mWidth:I

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    .line 118
    iput p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mCenterX:F

    .line 119
    iget p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mWidth:I

    iget p4, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mLineWidth:I

    sub-int/2addr p1, p4

    int-to-float p1, p1

    div-float/2addr p1, p3

    iput p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mStartX:F

    .line 120
    iget p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mStartX:F

    int-to-float p3, p4

    add-float/2addr p1, p3

    iput p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mEndX:F

    .line 121
    iget p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mStrokeWidth:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0xa

    int-to-float p1, p2

    iput p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mStartY:F

    .line 122
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 123
    iget p2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mHeight:I

    add-int/lit8 p2, p2, -0x8

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mBaseline:F

    :cond_0
    return-void
.end method

.method public setAlphaUpdateListener(Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    return-void
.end method

.method public startFirstVersionAnim()V
    .locals 2

    .line 207
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->clear()V

    .line 208
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->resetView()V

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mFirstAnimUtil:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;-><init>(Lcom/miui/home/launcher/view/HomeFeedArrowView;Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mFirstAnimUtil:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mFirstAnimUtil:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->initAnimtor()V

    const/4 v0, 0x1

    .line 213
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->startAnim(Z)V

    return-void
.end method

.method public startSecondVersionAnim()V
    .locals 2

    .line 217
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->clear()V

    .line 218
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->resetView()V

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUtil:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUpdateListener:Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;-><init>(Lcom/miui/home/launcher/view/HomeFeedArrowView;Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUtil:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView;->mAnimUtil:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->initAnimtor()V

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->startAnim(Z)V

    return-void
.end method
