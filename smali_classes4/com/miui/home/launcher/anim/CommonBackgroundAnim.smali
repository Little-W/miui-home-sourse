.class public Lcom/miui/home/launcher/anim/CommonBackgroundAnim;
.super Ljava/lang/Object;
.source "CommonBackgroundAnim.java"


# instance fields
.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mBgRadius:F

.field private mBgRectF:Landroid/graphics/RectF;

.field private mBgdPaint:Landroid/graphics/Paint;

.field private mNormalBgColor:I

.field private mRectTemp:Landroid/graphics/Rect;

.field private mTargetBgColor:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p2, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mNormalBgColor:I

    .line 34
    iput p3, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mTargetBgColor:I

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mTargetView:Landroid/view/View;

    .line 36
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->initParam()V

    return-void
.end method

.method private checkTargetViewIsNull()V
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mTargetView:Landroid/view/View;

    if-eqz p0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "CommonBackgroundAnim must has a target view!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initParam()V
    .locals 2

    .line 44
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mRectTemp:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mBgRectF:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mBgdPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mBgdPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mBgdPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mNormalBgColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->drawBackground(Landroid/graphics/Canvas;FFFF)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;FFFF)V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->checkTargetViewIsNull()V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mTargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mBgRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    .line 62
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    iget-object v1, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    .line 63
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p4

    int-to-float p4, p4

    iget-object v1, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, p5

    .line 64
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p5

    int-to-float p5, p5

    .line 61
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 65
    iget-object p2, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mBgRectF:Landroid/graphics/RectF;

    iget p3, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mBgRadius:F

    iget-object p0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mBgdPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setBgRadius(F)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mBgRadius:F

    return-void
.end method

.method public setBgdPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mBgdPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mTargetView:Landroid/view/View;

    return-void
.end method

.method public updateBackgroundColor(F)V
    .locals 4

    .line 70
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->checkTargetViewIsNull()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mBgdPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mNormalBgColor:I

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mTargetBgColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 72
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object p0, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateStartEndColor(II)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mNormalBgColor:I

    .line 90
    iput p2, p0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->mTargetBgColor:I

    return-void
.end method
