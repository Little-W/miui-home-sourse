.class public Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;
.super Lcom/miui/maml/elements/ImageScreenElement;
.source "SpectrumVisualizerScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SpectrumVisualizer"


# instance fields
.field private mAlphaWidthNum:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDotbar:Ljava/lang/String;

.field private mPanel:Landroid/graphics/Bitmap;

.field private mPanelSrc:Ljava/lang/String;

.field private mResDensity:I

.field private mShadow:Ljava/lang/String;

.field private mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "panelSrc"

    .line 46
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    const-string v0, "dotbarSrc"

    .line 47
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    const-string v0, "shadowSrc"

    .line 48
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/miui/maml/widget/SpectrumVisualizer;

    invoke-virtual {p0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 51
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->setSoftDrawEnabled(Z)V

    .line 52
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    invoke-virtual {v0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->enableUpdate(Z)V

    const-string v0, "alphaWidthNum"

    const/4 v1, -0x1

    .line 53
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->getTop()F

    move-result v2

    iget-object v3, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 99
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->doRender(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public enableUpdate(Z)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    invoke-virtual {v0, p1}, Lcom/miui/maml/widget/SpectrumVisualizer;->enableUpdate(Z)V

    return-void
.end method

.method protected getBitmap(Z)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 2

    .line 104
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 107
    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 108
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 109
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Lcom/miui/maml/widget/SpectrumVisualizer;->draw(Landroid/graphics/Canvas;)V

    .line 110
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    iget v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 111
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 112
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1
.end method

.method public init()V
    .locals 5

    .line 58
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->init()V

    .line 60
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    :goto_1
    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 63
    :goto_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->getWidth()F

    move-result v2

    float-to-int v2, v2

    .line 64
    invoke-virtual {p0}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->getHeight()F

    move-result v3

    float-to-int v3, v3

    if-lez v2, :cond_3

    if-gtz v3, :cond_4

    .line 66
    :cond_3
    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 67
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 68
    iget-object v3, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :cond_4
    if-nez v0, :cond_5

    const-string v0, "SpectrumVisualizer"

    const-string v1, "no dotbar"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_5
    iget-object v4, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 81
    iget v1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    if-ltz v1, :cond_6

    .line 82
    iget-object v4, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    invoke-virtual {v4, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->setAlphaNum(I)V

    .line 84
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    .line 87
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/miui/maml/widget/SpectrumVisualizer;->layout(IIII)V

    .line 88
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    iget v1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 90
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 91
    iget-object v1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    return-void

    :cond_7
    const-string v0, "SpectrumVisualizer"

    const-string v1, "no panel or size"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
