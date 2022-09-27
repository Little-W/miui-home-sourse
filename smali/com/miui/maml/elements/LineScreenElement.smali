.class public Lcom/miui/maml/elements/LineScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "LineScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Line"


# instance fields
.field private mEndXExp:Lcom/miui/maml/data/Expression;

.field private mEndYExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 22
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "x1"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/LineScreenElement;->mEndXExp:Lcom/miui/maml/data/Expression;

    .line 23
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string/jumbo v0, "y1"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/LineScreenElement;->mEndYExp:Lcom/miui/maml/data/Expression;

    return-void
.end method

.method private final getEndX()F
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/miui/maml/elements/LineScreenElement;->mEndXExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 34
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/LineScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method private final getEndY()F
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/miui/maml/elements/LineScreenElement;->mEndYExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 39
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/LineScreenElement;->scale(D)F

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 7

    .line 29
    invoke-direct {p0}, Lcom/miui/maml/elements/LineScreenElement;->getEndX()F

    move-result p2

    invoke-virtual {p0}, Lcom/miui/maml/elements/LineScreenElement;->getX()F

    move-result v0

    sub-float v4, p2, v0

    invoke-direct {p0}, Lcom/miui/maml/elements/LineScreenElement;->getEndY()F

    move-result p2

    invoke-virtual {p0}, Lcom/miui/maml/elements/LineScreenElement;->getY()F

    move-result v0

    sub-float v5, p2, v0

    iget-object v6, p0, Lcom/miui/maml/elements/LineScreenElement;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
