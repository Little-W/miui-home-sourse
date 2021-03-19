.class public final Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;
.super Ljava/lang/Object;
.source "CustModelViewer.kt"

# interfaces
.implements Lcom/google/android/filament/android/UiHelper$RendererCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/filament/CustModelViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SurfaceCallback"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustModelViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustModelViewer.kt\ncom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,108:1\n1#2:109\n181#3,2:110\n*E\n*S KotlinDebug\n*F\n+ 1 CustModelViewer.kt\ncom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback\n*L\n95#1,2:110\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/filament/CustModelViewer;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/filament/CustModelViewer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetachedFromSurface()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-static {v0}, Lcom/miui/maml/elements/filament/CustModelViewer;->access$getDisplayHelper$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Lcom/google/android/filament/android/DisplayHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/android/DisplayHelper;->detach()V

    .line 87
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-static {v0}, Lcom/miui/maml/elements/filament/CustModelViewer;->access$getSwapChain$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Lcom/google/android/filament/SwapChain;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-virtual {v1}, Lcom/miui/maml/elements/filament/CustModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/filament/Engine;->destroySwapChain(Lcom/google/android/filament/SwapChain;)V

    .line 89
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/CustModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->flushAndWait()V

    .line 90
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    const/4 v1, 0x0

    check-cast v1, Lcom/google/android/filament/SwapChain;

    invoke-static {v0, v1}, Lcom/miui/maml/elements/filament/CustModelViewer;->access$setSwapChain$p(Lcom/miui/maml/elements/filament/CustModelViewer;Lcom/google/android/filament/SwapChain;)V

    :cond_0
    return-void
.end method

.method public onNativeWindowChanged(Landroid/view/Surface;)V
    .locals 4

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-static {v0}, Lcom/miui/maml/elements/filament/CustModelViewer;->access$getSwapChain$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Lcom/google/android/filament/SwapChain;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-virtual {v1}, Lcom/miui/maml/elements/filament/CustModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/filament/Engine;->destroySwapChain(Lcom/google/android/filament/SwapChain;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/CustModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-static {v2}, Lcom/miui/maml/elements/filament/CustModelViewer;->access$getUiHelper$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Lcom/google/android/filament/android/UiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/android/UiHelper;->getSwapChainFlags()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/filament/Engine;->createSwapChain(Ljava/lang/Object;J)Lcom/google/android/filament/SwapChain;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/elements/filament/CustModelViewer;->access$setSwapChain$p(Lcom/miui/maml/elements/filament/CustModelViewer;Lcom/google/android/filament/SwapChain;)V

    .line 81
    iget-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-static {p1}, Lcom/miui/maml/elements/filament/CustModelViewer;->access$getSurfaceView$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Landroid/view/SurfaceView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-static {v0}, Lcom/miui/maml/elements/filament/CustModelViewer;->access$getDisplayHelper$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Lcom/google/android/filament/android/DisplayHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-static {v1}, Lcom/miui/maml/elements/filament/CustModelViewer;->access$getRenderer$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Lcom/google/android/filament/Renderer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/android/DisplayHelper;->attach(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-static {p1}, Lcom/miui/maml/elements/filament/CustModelViewer;->access$getTextureView$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Landroid/view/TextureView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-static {v0}, Lcom/miui/maml/elements/filament/CustModelViewer;->access$getDisplayHelper$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Lcom/google/android/filament/android/DisplayHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-static {v1}, Lcom/miui/maml/elements/filament/CustModelViewer;->access$getRenderer$p(Lcom/miui/maml/elements/filament/CustModelViewer;)Lcom/google/android/filament/Renderer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/TextureView;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/android/DisplayHelper;->attach(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V

    :cond_2
    return-void
.end method

.method public onResized(II)V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/CustModelViewer;->getFrameBuffers()Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/Map;

    .line 110
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/filament/CustFrameBuffer;

    invoke-virtual {v3, p1, p2}, Lcom/miui/maml/elements/filament/CustFrameBuffer;->onResize(II)V

    .line 97
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/filament/CustFrameBuffer;

    iget-object v3, v3, Lcom/miui/maml/elements/filament/CustFrameBuffer;->mFilamentView:Lcom/google/android/filament/View;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/google/android/filament/Viewport;

    invoke-direct {v4, v1, v1, p1, p2}, Lcom/google/android/filament/Viewport;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/google/android/filament/View;->setViewport(Lcom/google/android/filament/Viewport;)V

    .line 98
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/filament/CustFrameBuffer;

    iget-object v4, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-virtual {v4}, Lcom/miui/maml/elements/filament/CustModelViewer;->getFrameBuffers()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/maml/elements/filament/CustFrameBuffer;->checkOffscreenUniform(Landroid/util/ArrayMap;)V

    .line 99
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/filament/CustFrameBuffer;

    invoke-virtual {v2}, Lcom/miui/maml/elements/filament/CustFrameBuffer;->refreshUniform()V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/CustModelViewer;->getFrameBuffers()Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-virtual {v2}, Lcom/miui/maml/elements/filament/CustModelViewer;->getFinal()Lcom/miui/maml/elements/filament/CustFinal;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lcom/miui/maml/elements/filament/CustFinal;->checkOffscreenUniform(Landroid/util/ArrayMap;)V

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/CustModelViewer;->getFinal()Lcom/miui/maml/elements/filament/CustFinal;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/CustFinal;->refreshUniform()V

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustModelViewer$SurfaceCallback;->this$0:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/CustModelViewer;->getFinal()Lcom/miui/maml/elements/filament/CustFinal;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/miui/maml/elements/filament/CustFinal;->mFilamentView:Lcom/google/android/filament/View;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/google/android/filament/Viewport;

    invoke-direct {v2, v1, v1, p1, p2}, Lcom/google/android/filament/Viewport;-><init>(IIII)V

    invoke-virtual {v0, v2}, Lcom/google/android/filament/View;->setViewport(Lcom/google/android/filament/Viewport;)V

    :cond_4
    return-void
.end method
