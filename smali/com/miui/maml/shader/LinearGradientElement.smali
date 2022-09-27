.class public Lcom/miui/maml/shader/LinearGradientElement;
.super Lcom/miui/maml/shader/ShaderElement;
.source "LinearGradientElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "LinearGradient"


# instance fields
.field private mEndX:F

.field private mEndXExp:Lcom/miui/maml/data/Expression;

.field private mEndY:F

.field private mEndYExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 22
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "x1"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndXExp:Lcom/miui/maml/data/Expression;

    .line 23
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string/jumbo v0, "y1"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndYExp:Lcom/miui/maml/data/Expression;

    .line 25
    iget-object p1, p0, Lcom/miui/maml/shader/LinearGradientElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {p1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    return-void
.end method

.method private final getEndX()F
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndXExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/shader/LinearGradientElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private final getEndY()F
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndYExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/shader/LinearGradientElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .locals 9

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mX:F

    .line 35
    iput v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    iput v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndX:F

    .line 37
    iput v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndY:F

    .line 39
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/miui/maml/shader/LinearGradientElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 40
    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    move-result-object v6

    iget-object v1, p0, Lcom/miui/maml/shader/LinearGradientElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    move-result-object v7

    iget-object v8, p0, Lcom/miui/maml/shader/LinearGradientElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mShader:Landroid/graphics/Shader;

    return-void
.end method

.method public updateShaderMatrix()Z
    .locals 12

    .line 45
    invoke-virtual {p0}, Lcom/miui/maml/shader/LinearGradientElement;->getX()F

    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/miui/maml/shader/LinearGradientElement;->getY()F

    move-result v1

    .line 47
    invoke-direct {p0}, Lcom/miui/maml/shader/LinearGradientElement;->getEndX()F

    move-result v2

    .line 48
    invoke-direct {p0}, Lcom/miui/maml/shader/LinearGradientElement;->getEndY()F

    move-result v3

    .line 49
    iget v4, p0, Lcom/miui/maml/shader/LinearGradientElement;->mX:F

    cmpl-float v4, v0, v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    iget v4, p0, Lcom/miui/maml/shader/LinearGradientElement;->mY:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndX:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndY:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    return v5

    .line 50
    :cond_1
    :goto_0
    iput v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mX:F

    .line 51
    iput v1, p0, Lcom/miui/maml/shader/LinearGradientElement;->mY:F

    .line 52
    iput v2, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndX:F

    .line 53
    iput v3, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndY:F

    .line 55
    iget-object v4, p0, Lcom/miui/maml/shader/LinearGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 56
    iget-object v6, p0, Lcom/miui/maml/shader/LinearGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x4

    new-array v7, v4, [F

    fill-array-data v7, :array_0

    const/4 v8, 0x0

    new-array v9, v4, [F

    aput v0, v9, v5

    const/4 v0, 0x1

    aput v1, v9, v0

    const/4 v1, 0x2

    aput v2, v9, v1

    const/4 v1, 0x3

    aput v3, v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    return v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
