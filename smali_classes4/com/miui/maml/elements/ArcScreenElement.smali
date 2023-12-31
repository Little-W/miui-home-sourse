.class public Lcom/miui/maml/elements/ArcScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "ArcScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Arc"


# instance fields
.field private mAngle:F

.field private mAngleExp:Lcom/miui/maml/data/Expression;

.field private mArcPath:Landroid/graphics/Path;

.field private mClose:Z

.field mOvalRect:Landroid/graphics/RectF;

.field private mSweep:F

.field private mSweepExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 33
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "startAngle"

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ArcScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAngleExp:Lcom/miui/maml/data/Expression;

    const-string v0, "sweep"

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ArcScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweepExp:Lcom/miui/maml/data/Expression;

    const-string p2, "close"

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ArcScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mClose:Z

    .line 37
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    iput-object p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 38
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    iput-object p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;->doTick(J)V

    .line 70
    invoke-virtual {p0}, Lcom/miui/maml/elements/ArcScreenElement;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    .line 75
    iget-object p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAngleExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAngle:F

    .line 76
    iget-object p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweepExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweep:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 4

    .line 43
    invoke-virtual {p0}, Lcom/miui/maml/elements/ArcScreenElement;->getWidth()F

    move-result p2

    .line 44
    invoke-virtual {p0}, Lcom/miui/maml/elements/ArcScreenElement;->getHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p2, v1

    const/4 v3, 0x0

    sub-float v2, v3, v2

    div-float v1, v0, v1

    sub-float/2addr v3, v1

    .line 48
    iget-object v1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 49
    iget-object v1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 50
    iput v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p2

    .line 51
    iput v2, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    .line 52
    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 53
    iget p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweep:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    .line 54
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-boolean p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mClose:Z

    if-eqz p2, :cond_1

    .line 57
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 59
    :cond_1
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAngle:F

    iget v2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweep:F

    iget-boolean v3, p0, Lcom/miui/maml/elements/ArcScreenElement;->mClose:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 60
    iget-boolean p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mClose:Z

    if-eqz p2, :cond_2

    .line 61
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 63
    :cond_2
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method
