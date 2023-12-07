.class public Lcom/google/android/filament/android/UiHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/android/UiHelper$TextureViewHandler;,
        Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;,
        Lcom/google/android/filament/android/UiHelper$RenderSurface;,
        Lcom/google/android/filament/android/UiHelper$RendererCallback;,
        Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;
    }
.end annotation


# static fields
.field private static final LOGGING:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UiHelper"


# instance fields
.field private mDesiredHeight:I

.field private mDesiredWidth:I

.field private mHasSwapChain:Z

.field private mNativeWindow:Ljava/lang/Object;

.field private mOpaque:Z

.field private mOverlay:Z

.field private mRenderCallback:Lcom/google/android/filament/android/UiHelper$RendererCallback;

.field private mRenderSurface:Lcom/google/android/filament/android/UiHelper$RenderSurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    invoke-direct {p0, v0}, Lcom/google/android/filament/android/UiHelper;-><init>(Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/filament/android/UiHelper;->mOpaque:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/filament/android/UiHelper;->mOverlay:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/filament/android/UiHelper;)Lcom/google/android/filament/android/UiHelper$RendererCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper;->mRenderCallback:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/filament/android/UiHelper;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/filament/android/UiHelper;->createSwapChain(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/filament/android/UiHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/filament/android/UiHelper;->destroySwapChain()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/filament/android/UiHelper;)I
    .locals 0

    iget p0, p0, Lcom/google/android/filament/android/UiHelper;->mDesiredWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/filament/android/UiHelper;)I
    .locals 0

    iget p0, p0, Lcom/google/android/filament/android/UiHelper;->mDesiredHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/filament/android/UiHelper;)Lcom/google/android/filament/android/UiHelper$RenderSurface;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper;->mRenderSurface:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    return-object p0
.end method

.method private attach(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper;->mNativeWindow:Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/filament/android/UiHelper;->destroySwapChain()V

    :cond_1
    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper;->mNativeWindow:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method private createSwapChain(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper;->mRenderCallback:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    invoke-interface {v0, p1}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->onNativeWindowChanged(Landroid/view/Surface;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/filament/android/UiHelper;->mHasSwapChain:Z

    return-void
.end method

.method private destroySwapChain()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper;->mRenderSurface:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/filament/android/UiHelper$RenderSurface;->detach()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper;->mRenderCallback:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    invoke-interface {v0}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->onDetachedFromSurface()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filament/android/UiHelper;->mHasSwapChain:Z

    return-void
.end method


# virtual methods
.method public attachTo(Landroid/view/SurfaceView;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/filament/android/UiHelper;->attach(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/filament/android/UiHelper;->isOpaque()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/filament/android/UiHelper;->isMediaOverlay()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/android/UiHelper;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x3

    :goto_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v1, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;

    invoke-direct {v1, p1}, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Lcom/google/android/filament/android/UiHelper;->mRenderSurface:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    new-instance v1, Lcom/google/android/filament/android/UiHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/filament/android/UiHelper$1;-><init>(Lcom/google/android/filament/android/UiHelper;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget v2, p0, Lcom/google/android/filament/android/UiHelper;->mDesiredWidth:I

    iget p0, p0, Lcom/google/android/filament/android/UiHelper;->mDesiredHeight:I

    invoke-interface {p1, v2, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v1, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-interface {v1, p1, v0, p0, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_2
    return-void
.end method

.method public attachTo(Landroid/view/TextureView;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/filament/android/UiHelper;->attach(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/android/UiHelper;->isOpaque()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    new-instance v0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;-><init>(Lcom/google/android/filament/android/UiHelper;Landroid/view/TextureView;)V

    iput-object v0, p0, Lcom/google/android/filament/android/UiHelper;->mRenderSurface:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    new-instance v0, Lcom/google/android/filament/android/UiHelper$2;

    invoke-direct {v0, p0}, Lcom/google/android/filament/android/UiHelper$2;-><init>(Lcom/google/android/filament/android/UiHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget v1, p0, Lcom/google/android/filament/android/UiHelper;->mDesiredWidth:I

    iget p0, p0, Lcom/google/android/filament/android/UiHelper;->mDesiredHeight:I

    invoke-interface {v0, p1, v1, p0}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/filament/android/UiHelper;->destroySwapChain()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/android/UiHelper;->mNativeWindow:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/filament/android/UiHelper;->mRenderSurface:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    return-void
.end method

.method public getDesiredHeight()I
    .locals 0

    iget p0, p0, Lcom/google/android/filament/android/UiHelper;->mDesiredHeight:I

    return p0
.end method

.method public getDesiredWidth()I
    .locals 0

    iget p0, p0, Lcom/google/android/filament/android/UiHelper;->mDesiredWidth:I

    return p0
.end method

.method public getRenderCallback()Lcom/google/android/filament/android/UiHelper$RendererCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper;->mRenderCallback:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    return-object p0
.end method

.method public getSwapChainFlags()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/android/UiHelper;->isOpaque()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method public isMediaOverlay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/filament/android/UiHelper;->mOverlay:Z

    return p0
.end method

.method public isOpaque()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/filament/android/UiHelper;->mOpaque:Z

    return p0
.end method

.method public isReadyToRender()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/filament/android/UiHelper;->mHasSwapChain:Z

    return p0
.end method

.method public setDesiredSize(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/filament/android/UiHelper;->mDesiredWidth:I

    iput p2, p0, Lcom/google/android/filament/android/UiHelper;->mDesiredHeight:I

    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper;->mRenderSurface:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/google/android/filament/android/UiHelper$RenderSurface;->resize(II)V

    :cond_0
    return-void
.end method

.method public setMediaOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/filament/android/UiHelper;->mOverlay:Z

    return-void
.end method

.method public setOpaque(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/filament/android/UiHelper;->mOpaque:Z

    return-void
.end method

.method public setRenderCallback(Lcom/google/android/filament/android/UiHelper$RendererCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper;->mRenderCallback:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    return-void
.end method
