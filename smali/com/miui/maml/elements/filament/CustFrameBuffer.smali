.class public Lcom/miui/maml/elements/filament/CustFrameBuffer;
.super Lcom/miui/maml/elements/filament/CustElement;
.source "CustFrameBuffer.java"


# instance fields
.field private mColor:Lcom/google/android/filament/Texture;

.field private mTarget:Lcom/google/android/filament/RenderTarget;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/elements/filament/CustElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getTexture()Lcom/google/android/filament/Texture;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mColor:Lcom/google/android/filament/Texture;

    return-object v0
.end method

.method public init(Lcom/google/android/filament/Engine;Lcom/miui/maml/ResourceManager;Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/miui/maml/elements/filament/CustElement;->init(Lcom/google/android/filament/Engine;Lcom/miui/maml/ResourceManager;Landroid/view/View;)V

    .line 25
    iget-object p1, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mFilamentView:Lcom/google/android/filament/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/filament/View;->setPostProcessingEnabled(Z)V

    return-void
.end method

.method public onDestroy(Lcom/google/android/filament/Engine;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mColor:Lcom/google/android/filament/Texture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyTexture(Lcom/google/android/filament/Texture;)V

    .line 32
    iput-object v1, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mColor:Lcom/google/android/filament/Texture;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mTarget:Lcom/google/android/filament/RenderTarget;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyRenderTarget(Lcom/google/android/filament/RenderTarget;)V

    .line 36
    iput-object v1, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mTarget:Lcom/google/android/filament/RenderTarget;

    .line 38
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/filament/CustElement;->onDestroy(Lcom/google/android/filament/Engine;)V

    return-void
.end method

.method public onResize(II)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mColor:Lcom/google/android/filament/Texture;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mEngine:Lcom/google/android/filament/Engine;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mColor:Lcom/google/android/filament/Texture;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->destroyTexture(Lcom/google/android/filament/Texture;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mTarget:Lcom/google/android/filament/RenderTarget;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mEngine:Lcom/google/android/filament/Engine;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mTarget:Lcom/google/android/filament/RenderTarget;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->destroyRenderTarget(Lcom/google/android/filament/RenderTarget;)V

    .line 52
    :cond_1
    new-instance v0, Lcom/google/android/filament/Texture$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/Texture$Builder;-><init>()V

    .line 53
    invoke-virtual {v0, p1}, Lcom/google/android/filament/Texture$Builder;->width(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/filament/Texture$Builder;->height(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/filament/Texture$Builder;->levels(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object p1

    const/16 p2, 0x11

    .line 54
    invoke-virtual {p1, p2}, Lcom/google/android/filament/Texture$Builder;->usage(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/android/filament/Texture$InternalFormat;->RGBA16F:Lcom/google/android/filament/Texture$InternalFormat;

    .line 55
    invoke-virtual {p1, p2}, Lcom/google/android/filament/Texture$Builder;->format(Lcom/google/android/filament/Texture$InternalFormat;)Lcom/google/android/filament/Texture$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mEngine:Lcom/google/android/filament/Engine;

    .line 56
    invoke-virtual {p1, p2}, Lcom/google/android/filament/Texture$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mColor:Lcom/google/android/filament/Texture;

    .line 57
    new-instance p1, Lcom/google/android/filament/RenderTarget$Builder;

    invoke-direct {p1}, Lcom/google/android/filament/RenderTarget$Builder;-><init>()V

    sget-object p2, Lcom/google/android/filament/RenderTarget$AttachmentPoint;->COLOR:Lcom/google/android/filament/RenderTarget$AttachmentPoint;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mColor:Lcom/google/android/filament/Texture;

    .line 58
    invoke-virtual {p1, p2, v0}, Lcom/google/android/filament/RenderTarget$Builder;->texture(Lcom/google/android/filament/RenderTarget$AttachmentPoint;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mEngine:Lcom/google/android/filament/Engine;

    .line 59
    invoke-virtual {p1, p2}, Lcom/google/android/filament/RenderTarget$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/RenderTarget;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mTarget:Lcom/google/android/filament/RenderTarget;

    .line 60
    iget-object p1, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mFilamentView:Lcom/google/android/filament/View;

    iget-object p2, p0, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mTarget:Lcom/google/android/filament/RenderTarget;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/View;->setRenderTarget(Lcom/google/android/filament/RenderTarget;)V

    return-void
.end method
