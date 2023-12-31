.class public Lcom/miui/maml/shader/SweepGradientElement;
.super Lcom/miui/maml/shader/ShaderElement;
.source "SweepGradientElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SweepGradient"


# instance fields
.field private mAngle:F

.field private mAngleExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 19
    invoke-virtual {p0}, Lcom/miui/maml/shader/SweepGradientElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "rotation"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngleExp:Lcom/miui/maml/data/Expression;

    .line 21
    iget-object p0, p0, Lcom/miui/maml/shader/SweepGradientElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    return-void
.end method

.method private final getAngle()F
    .locals 2

    .line 56
    iget-object p0, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngleExp:Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .locals 4

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/miui/maml/shader/SweepGradientElement;->mX:F

    .line 29
    iput v0, p0, Lcom/miui/maml/shader/SweepGradientElement;->mY:F

    .line 30
    iput v0, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngle:F

    .line 32
    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v2, p0, Lcom/miui/maml/shader/SweepGradientElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    move-result-object v2

    iget-object v3, p0, Lcom/miui/maml/shader/SweepGradientElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v3}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    move-result-object v3

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v1, p0, Lcom/miui/maml/shader/SweepGradientElement;->mShader:Landroid/graphics/Shader;

    return-void
.end method

.method public updateShaderMatrix()Z
    .locals 6

    .line 37
    invoke-virtual {p0}, Lcom/miui/maml/shader/SweepGradientElement;->getX()F

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/miui/maml/shader/SweepGradientElement;->getY()F

    move-result v1

    .line 39
    invoke-direct {p0}, Lcom/miui/maml/shader/SweepGradientElement;->getAngle()F

    move-result v2

    .line 40
    iget v3, p0, Lcom/miui/maml/shader/SweepGradientElement;->mX:F

    cmpl-float v3, v0, v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/miui/maml/shader/SweepGradientElement;->mY:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngle:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 41
    :cond_1
    :goto_0
    iput v0, p0, Lcom/miui/maml/shader/SweepGradientElement;->mX:F

    .line 42
    iput v1, p0, Lcom/miui/maml/shader/SweepGradientElement;->mY:F

    .line 43
    iput v2, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngle:F

    .line 45
    iget-object v3, p0, Lcom/miui/maml/shader/SweepGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 46
    iget-object v3, p0, Lcom/miui/maml/shader/SweepGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    neg-float v4, v0

    neg-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 47
    iget-object v3, p0, Lcom/miui/maml/shader/SweepGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 48
    iget-object p0, p0, Lcom/miui/maml/shader/SweepGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 p0, 0x1

    return p0
.end method
