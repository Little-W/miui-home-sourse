.class public Lcom/miui/maml/elements/PaintScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "PaintScreenElement.java"


# static fields
.field private static DEFAULT_WEIGHT:F = 1.0f

.field public static final TAG_NAME:Ljava/lang/String; = "Paint"


# instance fields
.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mCachedPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorParser:Lcom/miui/maml/util/ColorParser;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPendingMouseUp:Z

.field private mWeight:F

.field private mWeightExp:Lcom/miui/maml/data/Expression;

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/PaintScreenElement;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 52
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 53
    sget p1, Lcom/miui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/PaintScreenElement;->scale(D)F

    move-result p1

    sput p1, Lcom/miui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    .line 54
    sget p1, Lcom/miui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    iput p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeight:F

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 59
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 63
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    sget v0, Lcom/miui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 66
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 67
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iput-boolean p2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mTouchable:Z

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/PaintScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "weight"

    .line 76
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeightExp:Lcom/miui/maml/data/Expression;

    .line 77
    invoke-static {p2, p1}, Lcom/miui/maml/util/ColorParser;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/util/ColorParser;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 78
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    const-string v0, "xfermode"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mXfermode:Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 8

    .line 114
    invoke-virtual {p0}, Lcom/miui/maml/elements/PaintScreenElement;->getWidth()F

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/miui/maml/elements/PaintScreenElement;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/PaintScreenElement;->getLeft(FF)F

    move-result v0

    .line 117
    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/PaintScreenElement;->getTop(FF)F

    move-result v1

    .line 118
    invoke-virtual {p0}, Lcom/miui/maml/elements/PaintScreenElement;->getAbsoluteLeft()F

    move-result v3

    .line 119
    invoke-virtual {p0}, Lcom/miui/maml/elements/PaintScreenElement;->getAbsoluteTop()F

    move-result v4

    .line 122
    iget-boolean v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    if-eqz v5, :cond_0

    .line 123
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 124
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    neg-float v6, v3

    neg-float v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 126
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 127
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    const/4 v5, 0x0

    .line 128
    iput-boolean v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    .line 133
    :cond_0
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 134
    iget-boolean v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPressed:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeight:F

    cmpl-float v2, v5, v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mAlpha:I

    if-lez v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeight:F

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    iget v6, p0, Lcom/miui/maml/elements/PaintScreenElement;->mAlpha:I

    invoke-static {v5, v6}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-float v2, v3

    add-float/2addr v2, v0

    neg-float v0, v4

    add-float/2addr v0, v1

    .line 140
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 143
    iget-object v1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 144
    iget-object v1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method protected doTick(J)V
    .locals 0

    .line 151
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 152
    invoke-virtual {p0}, Lcom/miui/maml/elements/PaintScreenElement;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeightExp:Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/PaintScreenElement;->scale(D)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeight:F

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    invoke-virtual {p1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mColor:I

    return-void
.end method

.method public finish()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 107
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 109
    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public init()V
    .locals 4

    .line 83
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 84
    invoke-virtual {p0}, Lcom/miui/maml/elements/PaintScreenElement;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const-string v0, "screen_width"

    .line 86
    invoke-virtual {p0}, Lcom/miui/maml/elements/PaintScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/PaintScreenElement;->scale(D)F

    move-result v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/PaintScreenElement;->getHeight()F

    move-result v2

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    const-string v1, "screen_height"

    .line 90
    invoke-virtual {p0}, Lcom/miui/maml/elements/PaintScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/PaintScreenElement;->scale(D)F

    move-result v2

    :cond_1
    float-to-double v0, v0

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 93
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getTargetDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 94
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method protected onActionCancel()V
    .locals 1

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    return-void
.end method

.method protected onActionDown(FF)V
    .locals 1

    .line 164
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    .line 165
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 166
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method protected onActionMove(FF)V
    .locals 1

    .line 171
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    .line 172
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method protected onActionUp()V
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionUp()V

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    return-void
.end method

.method public reset(J)V
    .locals 1

    .line 99
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 100
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 101
    iput-boolean v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPressed:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 188
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 189
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method
