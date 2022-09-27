.class public Lcom/miui/maml/shader/RadialGradientElement;
.super Lcom/miui/maml/shader/ShaderElement;
.source "RadialGradientElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "RadialGradient"


# instance fields
.field private mRx:F

.field private mRxExp:Lcom/miui/maml/data/Expression;

.field private mRy:F

.field private mRyExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/shader/RadialGradientElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "rX"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRxExp:Lcom/miui/maml/data/Expression;

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/shader/RadialGradientElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "rY"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRyExp:Lcom/miui/maml/data/Expression;

    .line 24
    iget-object p1, p0, Lcom/miui/maml/shader/RadialGradientElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {p1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    return-void
.end method

.method private final getRx()F
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRxExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private final getRy()F
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRyExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .locals 8

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mX:F

    .line 34
    iput v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRx:F

    .line 36
    iput v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRy:F

    .line 38
    new-instance v0, Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/miui/maml/shader/RadialGradientElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 39
    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    move-result-object v5

    iget-object v1, p0, Lcom/miui/maml/shader/RadialGradientElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    move-result-object v6

    iget-object v7, p0, Lcom/miui/maml/shader/RadialGradientElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mShader:Landroid/graphics/Shader;

    return-void
.end method

.method public updateShaderMatrix()Z
    .locals 7

    .line 44
    invoke-virtual {p0}, Lcom/miui/maml/shader/RadialGradientElement;->getX()F

    move-result v0

    .line 45
    invoke-virtual {p0}, Lcom/miui/maml/shader/RadialGradientElement;->getY()F

    move-result v1

    .line 46
    invoke-direct {p0}, Lcom/miui/maml/shader/RadialGradientElement;->getRx()F

    move-result v2

    .line 47
    invoke-direct {p0}, Lcom/miui/maml/shader/RadialGradientElement;->getRy()F

    move-result v3

    .line 48
    iget v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mX:F

    cmpl-float v4, v0, v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mY:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRx:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRy:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_1
    :goto_0
    iput v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mX:F

    .line 50
    iput v1, p0, Lcom/miui/maml/shader/RadialGradientElement;->mY:F

    .line 51
    iput v2, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRx:F

    .line 52
    iput v3, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRy:F

    .line 54
    iget-object v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 55
    iget-object v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    neg-float v5, v0

    neg-float v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 56
    iget-object v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    iget-object v2, p0, Lcom/miui/maml/shader/RadialGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v0, 0x1

    return v0
.end method
