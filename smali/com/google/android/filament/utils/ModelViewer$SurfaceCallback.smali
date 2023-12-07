.class public final Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/filament/android/UiHelper$RendererCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/ModelViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SurfaceCallback"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModelViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelViewer.kt\ncom/google/android/filament/utils/ModelViewer$SurfaceCallback\n*L\n1#1,350:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/filament/utils/ModelViewer;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/utils/ModelViewer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetachedFromSurface()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {v0}, Lcom/google/android/filament/utils/ModelViewer;->access$getDisplayHelper$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/android/DisplayHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/android/DisplayHelper;->detach()V

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {v0}, Lcom/google/android/filament/utils/ModelViewer;->access$getSwapChain$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/SwapChain;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/ModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/filament/Engine;->destroySwapChain(Lcom/google/android/filament/SwapChain;)V

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/ModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->flushAndWait()V

    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    const/4 v0, 0x0

    check-cast v0, Lcom/google/android/filament/SwapChain;

    invoke-static {p0, v0}, Lcom/google/android/filament/utils/ModelViewer;->access$setSwapChain$p(Lcom/google/android/filament/utils/ModelViewer;Lcom/google/android/filament/SwapChain;)V

    :cond_0
    return-void
.end method

.method public onNativeWindowChanged(Landroid/view/Surface;)V
    .locals 2

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {v0}, Lcom/google/android/filament/utils/ModelViewer;->access$getSwapChain$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/SwapChain;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/ModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/filament/Engine;->destroySwapChain(Lcom/google/android/filament/SwapChain;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/ModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/filament/Engine;->createSwapChain(Ljava/lang/Object;)Lcom/google/android/filament/SwapChain;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/filament/utils/ModelViewer;->access$setSwapChain$p(Lcom/google/android/filament/utils/ModelViewer;Lcom/google/android/filament/SwapChain;)V

    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {p1}, Lcom/google/android/filament/utils/ModelViewer;->access$getSurfaceView$p(Lcom/google/android/filament/utils/ModelViewer;)Landroid/view/SurfaceView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {v0}, Lcom/google/android/filament/utils/ModelViewer;->access$getDisplayHelper$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/android/DisplayHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {v1}, Lcom/google/android/filament/utils/ModelViewer;->access$getRenderer$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/Renderer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/android/DisplayHelper;->attach(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {p1}, Lcom/google/android/filament/utils/ModelViewer;->access$getTextureView$p(Lcom/google/android/filament/utils/ModelViewer;)Landroid/view/TextureView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {v0}, Lcom/google/android/filament/utils/ModelViewer;->access$getDisplayHelper$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/android/DisplayHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {p0}, Lcom/google/android/filament/utils/ModelViewer;->access$getRenderer$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/Renderer;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/TextureView;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/android/filament/android/DisplayHelper;->attach(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V

    :cond_2
    return-void
.end method

.method public onResized(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/ModelViewer;->getView()Lcom/google/android/filament/View;

    move-result-object v3

    new-instance v4, Lcom/google/android/filament/Viewport;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v1, v2}, Lcom/google/android/filament/Viewport;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/google/android/filament/View;->setViewport(Lcom/google/android/filament/Viewport;)V

    int-to-double v3, v1

    int-to-double v5, v2

    div-double v10, v3, v5

    iget-object v3, v0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/ModelViewer;->getCamera()Lcom/google/android/filament/Camera;

    move-result-object v7

    sget-object v16, Lcom/google/android/filament/Camera$Fov;->VERTICAL:Lcom/google/android/filament/Camera$Fov;

    const-wide v8, 0x4046800000000000L    # 45.0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide v14, 0x40c3880000000000L    # 10000.0

    invoke-virtual/range {v7 .. v16}, Lcom/google/android/filament/Camera;->setProjection(DDDDLcom/google/android/filament/Camera$Fov;)V

    iget-object v0, v0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {v0}, Lcom/google/android/filament/utils/ModelViewer;->access$getCameraManipulator$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/utils/Manipulator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filament/utils/Manipulator;->setViewport(II)V

    return-void
.end method
