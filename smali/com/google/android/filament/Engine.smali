.class public Lcom/google/android/filament/Engine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Engine$Backend;
    }
.end annotation


# instance fields
.field private final mLightManager:Lcom/google/android/filament/LightManager;

.field private mNativeObject:J

.field private final mRenderableManager:Lcom/google/android/filament/RenderableManager;

.field private final mTransformManager:Lcom/google/android/filament/TransformManager;


# direct methods
.method private constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Engine;->mNativeObject:J

    new-instance v0, Lcom/google/android/filament/TransformManager;

    invoke-static {p1, p2}, Lcom/google/android/filament/Engine;->nGetTransformManager(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TransformManager;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/Engine;->mTransformManager:Lcom/google/android/filament/TransformManager;

    new-instance v0, Lcom/google/android/filament/LightManager;

    invoke-static {p1, p2}, Lcom/google/android/filament/Engine;->nGetLightManager(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/LightManager;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/Engine;->mLightManager:Lcom/google/android/filament/LightManager;

    new-instance v0, Lcom/google/android/filament/RenderableManager;

    invoke-static {p1, p2}, Lcom/google/android/filament/Engine;->nGetRenderableManager(J)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/google/android/filament/RenderableManager;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/Engine;->mRenderableManager:Lcom/google/android/filament/RenderableManager;

    return-void
.end method

.method private static assertDestroy(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Object couldn\'t be destoyed (double destroy()?)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Engine;->mNativeObject:J

    return-void
.end method

.method public static create()Lcom/google/android/filament/Engine;
    .locals 4

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v0, v1}, Lcom/google/android/filament/Engine;->nCreateEngine(JJ)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Engine;

    invoke-direct {v0, v2, v3}, Lcom/google/android/filament/Engine;-><init>(J)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t create Engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/google/android/filament/Engine$Backend;)Lcom/google/android/filament/Engine;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine$Backend;->ordinal()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nCreateEngine(JJ)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/Engine;

    invoke-direct {p0, v0, v1}, Lcom/google/android/filament/Engine;-><init>(J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create Engine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Ljava/lang/Object;)Lcom/google/android/filament/Engine;
    .locals 4

    invoke-static {}, Lcom/google/android/filament/Platform;->get()Lcom/google/android/filament/Platform;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/filament/Platform;->validateSharedContext(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/filament/Platform;->get()Lcom/google/android/filament/Platform;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/filament/Platform;->getSharedContextNativeHandle(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/filament/Engine;->nCreateEngine(JJ)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/Engine;

    invoke-direct {p0, v0, v1}, Lcom/google/android/filament/Engine;-><init>(J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create Engine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid shared context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nCreateCamera(J)J
.end method

.method private static native nCreateCameraWithEntity(JI)J
.end method

.method private static native nCreateEngine(JJ)J
.end method

.method private static native nCreateFence(J)J
.end method

.method private static native nCreateRenderer(J)J
.end method

.method private static native nCreateScene(J)J
.end method

.method private static native nCreateSwapChain(JLjava/lang/Object;J)J
.end method

.method private static native nCreateSwapChainFromRawPointer(JJJ)J
.end method

.method private static native nCreateSwapChainHeadless(JIIJ)J
.end method

.method private static native nCreateView(J)J
.end method

.method private static native nDestroyCamera(JJ)V
.end method

.method private static native nDestroyColorGrading(JJ)Z
.end method

.method private static native nDestroyEngine(J)V
.end method

.method private static native nDestroyEntity(JI)V
.end method

.method private static native nDestroyFence(JJ)Z
.end method

.method private static native nDestroyIndexBuffer(JJ)Z
.end method

.method private static native nDestroyIndirectLight(JJ)Z
.end method

.method private static native nDestroyMaterial(JJ)Z
.end method

.method private static native nDestroyMaterialInstance(JJ)Z
.end method

.method private static native nDestroyRenderTarget(JJ)Z
.end method

.method private static native nDestroyRenderer(JJ)Z
.end method

.method private static native nDestroyScene(JJ)Z
.end method

.method private static native nDestroySkybox(JJ)Z
.end method

.method private static native nDestroyStream(JJ)Z
.end method

.method private static native nDestroySwapChain(JJ)Z
.end method

.method private static native nDestroyTexture(JJ)Z
.end method

.method private static native nDestroyVertexBuffer(JJ)Z
.end method

.method private static native nDestroyView(JJ)Z
.end method

.method private static native nFlushAndWait(J)V
.end method

.method private static native nGetBackend(J)J
.end method

.method private static native nGetCameraComponent(JI)J
.end method

.method private static native nGetLightManager(J)J
.end method

.method private static native nGetRenderableManager(J)J
.end method

.method private static native nGetTransformManager(J)J
.end method


# virtual methods
.method public createCamera()Lcom/google/android/filament/Camera;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateCamera(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/Camera;

    invoke-direct {p0, v0, v1}, Lcom/google/android/filament/Camera;-><init>(J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create Camera"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createCamera(I)Lcom/google/android/filament/Camera;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nCreateCameraWithEntity(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Camera;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/Camera;-><init>(J)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t create Camera"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createFence()Lcom/google/android/filament/Fence;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateFence(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/Fence;

    invoke-direct {p0, v0, v1}, Lcom/google/android/filament/Fence;-><init>(J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create Fence"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createRenderer()Lcom/google/android/filament/Renderer;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateRenderer(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/filament/Renderer;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/filament/Renderer;-><init>(Lcom/google/android/filament/Engine;J)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create Renderer"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createScene()Lcom/google/android/filament/Scene;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateScene(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/Scene;

    invoke-direct {p0, v0, v1}, Lcom/google/android/filament/Scene;-><init>(J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create Scene"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createSwapChain(IIJ)Lcom/google/android/filament/SwapChain;
    .locals 6

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Engine;->nCreateSwapChainHeadless(JIIJ)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/android/filament/SwapChain;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/google/android/filament/SwapChain;-><init>(JLjava/lang/Object;)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t create SwapChain"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createSwapChain(Ljava/lang/Object;)Lcom/google/android/filament/SwapChain;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/filament/Engine;->createSwapChain(Ljava/lang/Object;J)Lcom/google/android/filament/SwapChain;

    move-result-object p0

    return-object p0
.end method

.method public createSwapChain(Ljava/lang/Object;J)Lcom/google/android/filament/SwapChain;
    .locals 2

    invoke-static {}, Lcom/google/android/filament/Platform;->get()Lcom/google/android/filament/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/filament/Platform;->validateSurface(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/Engine;->nCreateSwapChain(JLjava/lang/Object;J)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/SwapChain;

    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/filament/SwapChain;-><init>(JLjava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t create SwapChain"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid surface "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createSwapChainFromNativeSurface(Lcom/google/android/filament/NativeSurface;J)Lcom/google/android/filament/SwapChain;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/NativeSurface;->getNativeObject()J

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Engine;->nCreateSwapChainFromRawPointer(JJJ)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/SwapChain;

    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/filament/SwapChain;-><init>(JLjava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t create SwapChain"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createView()Lcom/google/android/filament/View;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateView(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/View;

    invoke-direct {p0, v0, v1}, Lcom/google/android/filament/View;-><init>(J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create View"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public destroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nDestroyEngine(J)V

    invoke-direct {p0}, Lcom/google/android/filament/Engine;->clearNativeObject()V

    return-void
.end method

.method public destroyCamera(Lcom/google/android/filament/Camera;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Camera;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyCamera(JJ)V

    invoke-virtual {p1}, Lcom/google/android/filament/Camera;->clearNativeObject()V

    return-void
.end method

.method public destroyEntity(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nDestroyEntity(JI)V

    return-void
.end method

.method public destroyFence(Lcom/google/android/filament/Fence;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Fence;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyFence(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Fence;->clearNativeObject()V

    return-void
.end method

.method public destroyIndexBuffer(Lcom/google/android/filament/IndexBuffer;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/IndexBuffer;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyIndexBuffer(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/IndexBuffer;->clearNativeObject()V

    return-void
.end method

.method public destroyIndirectLight(Lcom/google/android/filament/IndirectLight;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/IndirectLight;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyIndirectLight(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/IndirectLight;->clearNativeObject()V

    return-void
.end method

.method public destroyMaterial(Lcom/google/android/filament/Material;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyMaterial(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Material;->clearNativeObject()V

    return-void
.end method

.method public destroyMaterialInstance(Lcom/google/android/filament/MaterialInstance;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyMaterialInstance(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/MaterialInstance;->clearNativeObject()V

    return-void
.end method

.method public destroyRenderTarget(Lcom/google/android/filament/RenderTarget;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyRenderTarget(JJ)Z

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget;->clearNativeObject()V

    return-void
.end method

.method public destroyRenderer(Lcom/google/android/filament/Renderer;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Renderer;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyRenderer(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Renderer;->clearNativeObject()V

    return-void
.end method

.method public destroyScene(Lcom/google/android/filament/Scene;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyScene(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->clearNativeObject()V

    return-void
.end method

.method public destroySkybox(Lcom/google/android/filament/ColorGrading;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyColorGrading(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading;->clearNativeObject()V

    return-void
.end method

.method public destroySkybox(Lcom/google/android/filament/Skybox;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Skybox;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroySkybox(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Skybox;->clearNativeObject()V

    return-void
.end method

.method public destroyStream(Lcom/google/android/filament/Stream;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Stream;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyStream(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Stream;->clearNativeObject()V

    return-void
.end method

.method public destroySwapChain(Lcom/google/android/filament/SwapChain;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/SwapChain;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroySwapChain(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/SwapChain;->clearNativeObject()V

    return-void
.end method

.method public destroyTexture(Lcom/google/android/filament/Texture;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyTexture(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->clearNativeObject()V

    return-void
.end method

.method public destroyVertexBuffer(Lcom/google/android/filament/VertexBuffer;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/VertexBuffer;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyVertexBuffer(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/VertexBuffer;->clearNativeObject()V

    return-void
.end method

.method public destroyView(Lcom/google/android/filament/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyView(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->assertDestroy(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/View;->clearNativeObject()V

    return-void
.end method

.method public flushAndWait()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nFlushAndWait(J)V

    return-void
.end method

.method public getBackend()Lcom/google/android/filament/Engine$Backend;
    .locals 3

    invoke-static {}, Lcom/google/android/filament/Engine$Backend;->values()[Lcom/google/android/filament/Engine$Backend;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Engine;->nGetBackend(J)J

    move-result-wide v1

    long-to-int p0, v1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getCameraComponent(I)Lcom/google/android/filament/Camera;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nGetCameraComponent(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/filament/Camera;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/Camera;-><init>(J)V

    return-object v0
.end method

.method public getLightManager()Lcom/google/android/filament/LightManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/Engine;->mLightManager:Lcom/google/android/filament/LightManager;

    return-object p0
.end method

.method public getNativeObject()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Engine;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling method on destroyed Engine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRenderableManager()Lcom/google/android/filament/RenderableManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/Engine;->mRenderableManager:Lcom/google/android/filament/RenderableManager;

    return-object p0
.end method

.method public getTransformManager()Lcom/google/android/filament/TransformManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/Engine;->mTransformManager:Lcom/google/android/filament/TransformManager;

    return-object p0
.end method

.method public isValid()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Engine;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
