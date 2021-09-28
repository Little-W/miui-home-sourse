.class public abstract Lcom/miui/maml/shader/ShaderElement;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/shader/ShaderElement$GradientStops;,
        Lcom/miui/maml/shader/ShaderElement$GradientStop;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ShaderElement"


# instance fields
.field protected mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

.field protected mRoot:Lcom/miui/maml/ScreenElementRoot;

.field protected mShader:Landroid/graphics/Shader;

.field protected mShaderMatrix:Landroid/graphics/Matrix;

.field protected mTileMode:Landroid/graphics/Shader$TileMode;

.field protected mX:F

.field protected mXExp:Lcom/miui/maml/data/Expression;

.field protected mY:F

.field protected mYExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 114
    new-instance v0, Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-direct {v0, p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;-><init>(Lcom/miui/maml/shader/ShaderElement;)V

    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 117
    iput-object p2, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 118
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "x"

    .line 119
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mXExp:Lcom/miui/maml/data/Expression;

    const-string/jumbo v1, "y"

    .line 120
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mYExp:Lcom/miui/maml/data/Expression;

    const-string v0, "tile"

    .line 121
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/shader/ShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 122
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BitmapShader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;->loadGradientStops(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    :cond_0
    return-void
.end method

.method public static getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0

    :cond_0
    const-string v0, "mirror"

    .line 136
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    :cond_1
    const-string v0, "repeat"

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 139
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 141
    :cond_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method private loadGradientStops(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 4

    const-string v0, "GradientStop"

    .line 145
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 147
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 148
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    new-instance v3, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    invoke-direct {v3, p0, v1, p2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;-><init>(Lcom/miui/maml/shader/ShaderElement;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    invoke-virtual {v2, v3}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->add(Lcom/miui/maml/shader/ShaderElement$GradientStop;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {p1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result p1

    if-gtz p1, :cond_1

    const-string p1, "ShaderElement"

    const-string p2, "lost gradient stop."

    .line 151
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {p1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->init()V

    return-void
.end method


# virtual methods
.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method protected getVariables()Lcom/miui/maml/data/Variables;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    return-object v0
.end method

.method public getX()F
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mXExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 159
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getY()F
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mYExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public abstract onGradientStopsChanged()V
.end method

.method public updateShader()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    .line 172
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->updateShaderMatrix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public abstract updateShaderMatrix()Z
.end method
