.class public final Lcom/miui/maml/elements/filament/CustModelViewer;
.super Ljava/lang/Object;
.source "CustModelViewer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustModelViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustModelViewer.kt\ncom/miui/maml/elements/filament/CustModelViewer\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,108:1\n181#2,2:109\n*E\n*S KotlinDebug\n*F\n+ 1 CustModelViewer.kt\ncom/miui/maml/elements/filament/CustModelViewer\n*L\n63#1,2:109\n*E\n"
.end annotation


# instance fields
.field private displayHelper:Lcom/google/android/filament/android/DisplayHelper;

.field private final engine:Lcom/google/android/filament/Engine;

.field private final:Lcom/miui/maml/elements/filament/CustFinal;

.field private frameBuffers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/filament/CustFrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final renderer:Lcom/google/android/filament/Renderer;

.field private surfaceView:Landroid/view/SurfaceView;

.field private swapChain:Lcom/google/android/filament/SwapChain;

.field private textureView:Landroid/view/TextureView;

.field private final uiHelper:Lcom/google/android/filament/android/UiHelper;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;)V
    .locals 1

    const-string v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/filament/CustModelViewer;-><init>(Lcom/google/android/filament/Engine;)V

    .line 36
    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->surfaceView:Landroid/view/SurfaceView;

    .line 37
    new-instance p2, Lcom/google/android/filament/android/DisplayHelper;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/filament/android/DisplayHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->displayHelper:Lcom/google/android/filament/android/DisplayHelper;

    .line 38
    iget-object p2, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    new-instance v0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;-><init>(Lcom/miui/maml/elements/filament/CustModelViewer;)V

    check-cast v0, Lcom/google/android/filament/android/UiHelper$RendererCallback;

    invoke-virtual {p2, v0}, Lcom/google/android/filament/android/UiHelper;->setRenderCallback(Lcom/google/android/filament/android/UiHelper$RendererCallback;)V

    .line 39
    iget-object p2, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/android/UiHelper;->attachTo(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 35
    invoke-static {}, Lcom/google/android/filament/Engine;->create()Lcom/google/android/filament/Engine;

    move-result-object p2

    const-string p3, "Engine.create()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/filament/CustModelViewer;-><init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;)V
    .locals 1

    const-string v0, "textureView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/filament/CustModelViewer;-><init>(Lcom/google/android/filament/Engine;)V

    .line 44
    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->textureView:Landroid/view/TextureView;

    .line 45
    new-instance p2, Lcom/google/android/filament/android/DisplayHelper;

    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/filament/android/DisplayHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->displayHelper:Lcom/google/android/filament/android/DisplayHelper;

    .line 46
    iget-object p2, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    new-instance v0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;-><init>(Lcom/miui/maml/elements/filament/CustModelViewer;)V

    check-cast v0, Lcom/google/android/filament/android/UiHelper$RendererCallback;

    invoke-virtual {p2, v0}, Lcom/google/android/filament/android/UiHelper;->setRenderCallback(Lcom/google/android/filament/android/UiHelper$RendererCallback;)V

    .line 47
    iget-object p2, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/android/UiHelper;->attachTo(Landroid/view/TextureView;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 43
    invoke-static {}, Lcom/google/android/filament/Engine;->create()Lcom/google/android/filament/Engine;

    move-result-object p2

    const-string p3, "Engine.create()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/filament/CustModelViewer;-><init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->engine:Lcom/google/android/filament/Engine;

    .line 18
    new-instance p1, Lcom/google/android/filament/android/UiHelper;

    sget-object v0, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->DONT_CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    invoke-direct {p1, v0}, Lcom/google/android/filament/android/UiHelper;-><init>(Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;)V

    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    .line 28
    iget-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->engine:Lcom/google/android/filament/Engine;

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->createRenderer()Lcom/google/android/filament/Renderer;

    move-result-object p1

    const-string v0, "engine.createRenderer()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    .line 29
    iget-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    invoke-virtual {p1}, Lcom/google/android/filament/Renderer;->getClearOptions()Lcom/google/android/filament/Renderer$ClearOptions;

    move-result-object p1

    const-string v0, "renderer.clearOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p1, Lcom/google/android/filament/Renderer$ClearOptions;->clear:Z

    .line 31
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/Renderer;->setClearOptions(Lcom/google/android/filament/Renderer$ClearOptions;)V

    .line 32
    iget-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/android/UiHelper;->setOpaque(Z)V

    return-void
.end method

.method public static final synthetic access$getDisplayHelper$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Lcom/google/android/filament/android/DisplayHelper;
    .locals 1

    .line 14
    iget-object p0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->displayHelper:Lcom/google/android/filament/android/DisplayHelper;

    if-nez p0, :cond_0

    const-string v0, "displayHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getRenderer$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Lcom/google/android/filament/Renderer;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    return-object p0
.end method

.method public static final synthetic access$getSurfaceView$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Landroid/view/SurfaceView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static final synthetic access$getSwapChain$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Lcom/google/android/filament/SwapChain;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->swapChain:Lcom/google/android/filament/SwapChain;

    return-object p0
.end method

.method public static final synthetic access$getTextureView$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Landroid/view/TextureView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method public static final synthetic access$getUiHelper$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Lcom/google/android/filament/android/UiHelper;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    return-object p0
.end method

.method public static final synthetic access$setDisplayHelper$p(Lcom/miui/maml/elements/filament/CustModelViewer;Lcom/google/android/filament/android/DisplayHelper;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->displayHelper:Lcom/google/android/filament/android/DisplayHelper;

    return-void
.end method

.method public static final synthetic access$setSurfaceView$p(Lcom/miui/maml/elements/filament/CustModelViewer;Landroid/view/SurfaceView;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->surfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method public static final synthetic access$setSwapChain$p(Lcom/miui/maml/elements/filament/CustModelViewer;Lcom/google/android/filament/SwapChain;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->swapChain:Lcom/google/android/filament/SwapChain;

    return-void
.end method

.method public static final synthetic access$setTextureView$p(Lcom/miui/maml/elements/filament/CustModelViewer;Landroid/view/TextureView;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->textureView:Landroid/view/TextureView;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {v0}, Lcom/google/android/filament/android/UiHelper;->detach()V

    return-void
.end method

.method public final getEngine()Lcom/google/android/filament/Engine;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->engine:Lcom/google/android/filament/Engine;

    return-object v0
.end method

.method public final getFinal()Lcom/miui/maml/elements/filament/CustFinal;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->final:Lcom/miui/maml/elements/filament/CustFinal;

    return-object v0
.end method

.method public final getFrameBuffers()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/filament/CustFrameBuffer;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->frameBuffers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public final render(J)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {v0}, Lcom/google/android/filament/android/UiHelper;->isReadyToRender()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->swapChain:Lcom/google/android/filament/SwapChain;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/filament/Renderer;->beginFrame(Lcom/google/android/filament/SwapChain;J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 63
    iget-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->frameBuffers:Landroid/util/ArrayMap;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/util/Map;

    .line 109
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/elements/filament/CustFrameBuffer;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    invoke-virtual {p2, v0}, Lcom/miui/maml/elements/filament/CustFrameBuffer;->doFrame(Lcom/google/android/filament/Renderer;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->final:Lcom/miui/maml/elements/filament/CustFinal;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/filament/CustFinal;->doFrame(Lcom/google/android/filament/Renderer;)V

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    invoke-virtual {p1}, Lcom/google/android/filament/Renderer;->endFrame()V

    :cond_3
    return-void
.end method

.method public final setFinal(Lcom/miui/maml/elements/filament/CustFinal;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->final:Lcom/miui/maml/elements/filament/CustFinal;

    return-void
.end method

.method public final setFrameBuffers(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/filament/CustFrameBuffer;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer;->frameBuffers:Landroid/util/ArrayMap;

    return-void
.end method
