.class public final Lcom/miui/maml/shader/ShadersElement;
.super Ljava/lang/Object;
.source "ShadersElement.java"


# static fields
.field public static final FILL_TAG_NAME:Ljava/lang/String; = "FillShaders"

.field public static final STROKE_TAG_NAME:Ljava/lang/String; = "StrokeShaders"


# instance fields
.field private mShaderElement:Lcom/miui/maml/shader/ShaderElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShadersElement;->loadShaderElements(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method

.method private loadShaderElements(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 4

    .line 25
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 27
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_2

    .line 32
    :cond_0
    check-cast v1, Lorg/w3c/dom/Element;

    .line 33
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LinearGradient"

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    new-instance v2, Lcom/miui/maml/shader/LinearGradientElement;

    invoke-direct {v2, v1, p2}, Lcom/miui/maml/shader/LinearGradientElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v2, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    goto :goto_1

    :cond_1
    const-string v3, "RadialGradient"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    new-instance v2, Lcom/miui/maml/shader/RadialGradientElement;

    invoke-direct {v2, v1, p2}, Lcom/miui/maml/shader/RadialGradientElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v2, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    goto :goto_1

    :cond_2
    const-string v3, "SweepGradient"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 39
    new-instance v2, Lcom/miui/maml/shader/SweepGradientElement;

    invoke-direct {v2, v1, p2}, Lcom/miui/maml/shader/SweepGradientElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v2, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    goto :goto_1

    :cond_3
    const-string v3, "BitmapShader"

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    new-instance v2, Lcom/miui/maml/shader/BitmapShaderElement;

    invoke-direct {v2, v1, p2}, Lcom/miui/maml/shader/BitmapShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v2, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    .line 43
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public getShader()Landroid/graphics/Shader;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getShader()Landroid/graphics/Shader;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public updateShader()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/maml/shader/ShadersElement;->mShaderElement:Lcom/miui/maml/shader/ShaderElement;

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->updateShader()V

    :cond_0
    return-void
.end method
