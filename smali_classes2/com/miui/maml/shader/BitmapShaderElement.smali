.class public Lcom/miui/maml/shader/BitmapShaderElement;
.super Lcom/miui/maml/shader/ShaderElement;
.source "BitmapShaderElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapShader"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mTileModeX:Landroid/graphics/Shader$TileMode;

.field private mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 25
    iget-object p2, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    const-string v0, "src"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 26
    invoke-direct {p0, p1}, Lcom/miui/maml/shader/BitmapShaderElement;->resolveTileMode(Lorg/w3c/dom/Element;)V

    .line 28
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iget-object v1, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mShader:Landroid/graphics/Shader;

    return-void
.end method

.method private resolveTileMode(Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "tile"

    .line 32
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 34
    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 39
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/miui/maml/shader/BitmapShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 40
    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/miui/maml/shader/BitmapShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/shader/BitmapShaderElement;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-void
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .locals 0

    return-void
.end method

.method public updateShader()V
    .locals 0

    return-void
.end method

.method public updateShaderMatrix()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
