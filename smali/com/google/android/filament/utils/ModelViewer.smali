.class public final Lcom/google/android/filament/utils/ModelViewer;
.super Ljava/lang/Object;
.source "ModelViewer.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;,
        Lcom/google/android/filament/utils/ModelViewer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModelViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelViewer.kt\ncom/google/android/filament/utils/ModelViewer\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 3 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n1#1,350:1\n733#2:351\n314#3,9:352\n*E\n*S KotlinDebug\n*F\n+ 1 ModelViewer.kt\ncom/google/android/filament/utils/ModelViewer\n*L\n204#1:351\n204#1,9:352\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/filament/utils/ModelViewer$Companion;

.field private static final kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;


# instance fields
.field private animator:Lcom/google/android/filament/gltfio/Animator;

.field private asset:Lcom/google/android/filament/gltfio/FilamentAsset;

.field private assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

.field private final camera:Lcom/google/android/filament/Camera;

.field private cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

.field private displayHelper:Lcom/google/android/filament/android/DisplayHelper;

.field private final engine:Lcom/google/android/filament/Engine;

.field private final eyePos:[D

.field private gestureDetector:Lcom/google/android/filament/utils/GestureDetector;

.field private final light:I

.field private normalizeSkinningWeights:Z

.field private final readyRenderables:[I

.field private recomputeBoundingBoxes:Z

.field private final renderer:Lcom/google/android/filament/Renderer;

.field private resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

.field private final scene:Lcom/google/android/filament/Scene;

.field private surfaceView:Landroid/view/SurfaceView;

.field private swapChain:Lcom/google/android/filament/SwapChain;

.field private final target:[D

.field private textureView:Landroid/view/TextureView;

.field private final uiHelper:Lcom/google/android/filament/android/UiHelper;

.field private final upward:[D

.field private final view:Lcom/google/android/filament/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/ModelViewer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/filament/utils/ModelViewer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/filament/utils/ModelViewer;->Companion:Lcom/google/android/filament/utils/ModelViewer$Companion;

    .line 347
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    const/4 v1, 0x0

    const/high16 v2, -0x3f800000    # -4.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    sput-object v0, Lcom/google/android/filament/utils/ModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;)V
    .locals 2

    const-string v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, p2}, Lcom/google/android/filament/utils/ModelViewer;-><init>(Lcom/google/android/filament/Engine;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance p2, Lcom/google/android/filament/utils/Manipulator$Builder;

    invoke-direct {p2}, Lcom/google/android/filament/utils/Manipulator$Builder;-><init>()V

    .line 127
    sget-object p3, Lcom/google/android/filament/utils/ModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p3

    sget-object v0, Lcom/google/android/filament/utils/ModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    sget-object v1, Lcom/google/android/filament/utils/ModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/google/android/filament/utils/Manipulator$Builder;->targetPosition(FFF)Lcom/google/android/filament/utils/Manipulator$Builder;

    move-result-object p2

    .line 128
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/filament/utils/Manipulator$Builder;->viewport(II)Lcom/google/android/filament/utils/Manipulator$Builder;

    move-result-object p2

    .line 129
    sget-object p3, Lcom/google/android/filament/utils/Manipulator$Mode;->ORBIT:Lcom/google/android/filament/utils/Manipulator$Mode;

    invoke-virtual {p2, p3}, Lcom/google/android/filament/utils/Manipulator$Builder;->build(Lcom/google/android/filament/utils/Manipulator$Mode;)Lcom/google/android/filament/utils/Manipulator;

    move-result-object p3

    const-string p2, "Manipulator.Builder()\n  \u2026d(Manipulator.Mode.ORBIT)"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p3, p0, Lcom/google/android/filament/utils/ModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    .line 131
    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->surfaceView:Landroid/view/SurfaceView;

    .line 132
    new-instance p2, Lcom/google/android/filament/utils/GestureDetector;

    move-object p3, p1

    check-cast p3, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    if-nez v0, :cond_1

    const-string v1, "cameraManipulator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p2, p3, v0}, Lcom/google/android/filament/utils/GestureDetector;-><init>(Landroid/view/View;Lcom/google/android/filament/utils/Manipulator;)V

    iput-object p2, p0, Lcom/google/android/filament/utils/ModelViewer;->gestureDetector:Lcom/google/android/filament/utils/GestureDetector;

    .line 133
    new-instance p2, Lcom/google/android/filament/android/DisplayHelper;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/filament/android/DisplayHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/filament/utils/ModelViewer;->displayHelper:Lcom/google/android/filament/android/DisplayHelper;

    .line 134
    iget-object p2, p0, Lcom/google/android/filament/utils/ModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    new-instance v0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;-><init>(Lcom/google/android/filament/utils/ModelViewer;)V

    check-cast v0, Lcom/google/android/filament/android/UiHelper$RendererCallback;

    invoke-virtual {p2, v0}, Lcom/google/android/filament/android/UiHelper;->setRenderCallback(Lcom/google/android/filament/android/UiHelper$RendererCallback;)V

    .line 135
    iget-object p2, p0, Lcom/google/android/filament/utils/ModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/android/UiHelper;->attachTo(Landroid/view/SurfaceView;)V

    .line 136
    invoke-direct {p0, p3}, Lcom/google/android/filament/utils/ModelViewer;->addDetachListener(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 125
    invoke-static {}, Lcom/google/android/filament/Engine;->create()Lcom/google/android/filament/Engine;

    move-result-object p2

    const-string p5, "Engine.create()"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    check-cast p3, Lcom/google/android/filament/utils/Manipulator;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/utils/ModelViewer;-><init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;)V
    .locals 2

    const-string v0, "textureView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p2}, Lcom/google/android/filament/utils/ModelViewer;-><init>(Lcom/google/android/filament/Engine;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance p2, Lcom/google/android/filament/utils/Manipulator$Builder;

    invoke-direct {p2}, Lcom/google/android/filament/utils/Manipulator$Builder;-><init>()V

    .line 142
    sget-object p3, Lcom/google/android/filament/utils/ModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p3

    sget-object v0, Lcom/google/android/filament/utils/ModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    sget-object v1, Lcom/google/android/filament/utils/ModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/google/android/filament/utils/Manipulator$Builder;->targetPosition(FFF)Lcom/google/android/filament/utils/Manipulator$Builder;

    move-result-object p2

    .line 143
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/filament/utils/Manipulator$Builder;->viewport(II)Lcom/google/android/filament/utils/Manipulator$Builder;

    move-result-object p2

    .line 144
    sget-object p3, Lcom/google/android/filament/utils/Manipulator$Mode;->ORBIT:Lcom/google/android/filament/utils/Manipulator$Mode;

    invoke-virtual {p2, p3}, Lcom/google/android/filament/utils/Manipulator$Builder;->build(Lcom/google/android/filament/utils/Manipulator$Mode;)Lcom/google/android/filament/utils/Manipulator;

    move-result-object p3

    const-string p2, "Manipulator.Builder()\n  \u2026d(Manipulator.Mode.ORBIT)"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p3, p0, Lcom/google/android/filament/utils/ModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    .line 146
    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->textureView:Landroid/view/TextureView;

    .line 147
    new-instance p2, Lcom/google/android/filament/utils/GestureDetector;

    move-object p3, p1

    check-cast p3, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    if-nez v0, :cond_1

    const-string v1, "cameraManipulator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p2, p3, v0}, Lcom/google/android/filament/utils/GestureDetector;-><init>(Landroid/view/View;Lcom/google/android/filament/utils/Manipulator;)V

    iput-object p2, p0, Lcom/google/android/filament/utils/ModelViewer;->gestureDetector:Lcom/google/android/filament/utils/GestureDetector;

    .line 148
    new-instance p2, Lcom/google/android/filament/android/DisplayHelper;

    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/filament/android/DisplayHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/filament/utils/ModelViewer;->displayHelper:Lcom/google/android/filament/android/DisplayHelper;

    .line 149
    iget-object p2, p0, Lcom/google/android/filament/utils/ModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    new-instance v0, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/google/android/filament/utils/ModelViewer$SurfaceCallback;-><init>(Lcom/google/android/filament/utils/ModelViewer;)V

    check-cast v0, Lcom/google/android/filament/android/UiHelper$RendererCallback;

    invoke-virtual {p2, v0}, Lcom/google/android/filament/android/UiHelper;->setRenderCallback(Lcom/google/android/filament/android/UiHelper$RendererCallback;)V

    .line 150
    iget-object p2, p0, Lcom/google/android/filament/utils/ModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/android/UiHelper;->attachTo(Landroid/view/TextureView;)V

    .line 151
    invoke-direct {p0, p3}, Lcom/google/android/filament/utils/ModelViewer;->addDetachListener(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 140
    invoke-static {}, Lcom/google/android/filament/Engine;->create()Lcom/google/android/filament/Engine;

    move-result-object p2

    const-string p5, "Engine.create()"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    check-cast p3, Lcom/google/android/filament/utils/Manipulator;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/utils/ModelViewer;-><init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;)V
    .locals 5

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->engine:Lcom/google/android/filament/Engine;

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/google/android/filament/utils/ModelViewer;->normalizeSkinningWeights:Z

    .line 81
    new-instance v0, Lcom/google/android/filament/android/UiHelper;

    sget-object v1, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->DONT_CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    invoke-direct {v0, v1}, Lcom/google/android/filament/android/UiHelper;-><init>(Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;)V

    iput-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 92
    iput-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->readyRenderables:[I

    const/4 v0, 0x3

    new-array v1, v0, [D

    .line 94
    iput-object v1, p0, Lcom/google/android/filament/utils/ModelViewer;->eyePos:[D

    new-array v1, v0, [D

    .line 95
    iput-object v1, p0, Lcom/google/android/filament/utils/ModelViewer;->target:[D

    new-array v0, v0, [D

    .line 96
    iput-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->upward:[D

    .line 99
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->engine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->createRenderer()Lcom/google/android/filament/Renderer;

    move-result-object v0

    const-string v1, "engine.createRenderer()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    .line 100
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->engine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->createScene()Lcom/google/android/filament/Scene;

    move-result-object v0

    const-string v1, "engine.createScene()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->scene:Lcom/google/android/filament/Scene;

    .line 101
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->engine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->createCamera()Lcom/google/android/filament/Camera;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    const v2, 0x3c03126f    # 0.008f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/filament/Camera;->setExposure(FFF)V

    const-string v1, "engine.createCamera().ap\u2026terSpeed, kSensitivity) }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->camera:Lcom/google/android/filament/Camera;

    .line 102
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->engine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->createView()Lcom/google/android/filament/View;

    move-result-object v0

    const-string v1, "engine.createView()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->view:Lcom/google/android/filament/View;

    .line 103
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->view:Lcom/google/android/filament/View;

    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->setScene(Lcom/google/android/filament/Scene;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->view:Lcom/google/android/filament/View;

    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer;->camera:Lcom/google/android/filament/Camera;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->setCamera(Lcom/google/android/filament/Camera;)V

    .line 106
    new-instance v0, Lcom/google/android/filament/gltfio/AssetLoader;

    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer;->engine:Lcom/google/android/filament/Engine;

    new-instance v2, Lcom/google/android/filament/gltfio/MaterialProvider;

    invoke-direct {v2, v1}, Lcom/google/android/filament/gltfio/MaterialProvider;-><init>(Lcom/google/android/filament/Engine;)V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->get()Lcom/google/android/filament/EntityManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/gltfio/AssetLoader;-><init>(Lcom/google/android/filament/Engine;Lcom/google/android/filament/gltfio/MaterialProvider;Lcom/google/android/filament/EntityManager;)V

    iput-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    .line 107
    new-instance v0, Lcom/google/android/filament/gltfio/ResourceLoader;

    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer;->engine:Lcom/google/android/filament/Engine;

    iget-boolean v2, p0, Lcom/google/android/filament/utils/ModelViewer;->normalizeSkinningWeights:Z

    iget-boolean v3, p0, Lcom/google/android/filament/utils/ModelViewer;->recomputeBoundingBoxes:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/gltfio/ResourceLoader;-><init>(Lcom/google/android/filament/Engine;ZZ)V

    iput-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    .line 112
    invoke-static {}, Lcom/google/android/filament/EntityManager;->get()Lcom/google/android/filament/EntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/EntityManager;->create()I

    move-result v0

    iput v0, p0, Lcom/google/android/filament/utils/ModelViewer;->light:I

    const v0, 0x45cb2000    # 6500.0f

    .line 114
    invoke-static {v0}, Lcom/google/android/filament/Colors;->cct(F)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    aget v2, v0, p1

    const/4 v3, 0x2

    aget v0, v0, v3

    .line 115
    new-instance v3, Lcom/google/android/filament/LightManager$Builder;

    sget-object v4, Lcom/google/android/filament/LightManager$Type;->DIRECTIONAL:Lcom/google/android/filament/LightManager$Type;

    invoke-direct {v3, v4}, Lcom/google/android/filament/LightManager$Builder;-><init>(Lcom/google/android/filament/LightManager$Type;)V

    .line 116
    invoke-virtual {v3, v1, v2, v0}, Lcom/google/android/filament/LightManager$Builder;->color(FFF)Lcom/google/android/filament/LightManager$Builder;

    move-result-object v0

    const v1, 0x47c35000    # 100000.0f

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/android/filament/LightManager$Builder;->intensity(F)Lcom/google/android/filament/LightManager$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 118
    invoke-virtual {v0, v1, v2, v1}, Lcom/google/android/filament/LightManager$Builder;->direction(FFF)Lcom/google/android/filament/LightManager$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p1}, Lcom/google/android/filament/LightManager$Builder;->castShadows(Z)Lcom/google/android/filament/LightManager$Builder;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->engine:Lcom/google/android/filament/Engine;

    iget v1, p0, Lcom/google/android/filament/utils/ModelViewer;->light:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/filament/LightManager$Builder;->build(Lcom/google/android/filament/Engine;I)V

    .line 122
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->scene:Lcom/google/android/filament/Scene;

    iget p0, p0, Lcom/google/android/filament/utils/ModelViewer;->light:I

    invoke-virtual {p1, p0}, Lcom/google/android/filament/Scene;->addEntity(I)V

    return-void
.end method

.method public static final synthetic access$getAnimator$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/gltfio/Animator;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->animator:Lcom/google/android/filament/gltfio/Animator;

    return-object p0
.end method

.method public static final synthetic access$getAsset$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/gltfio/FilamentAsset;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    return-object p0
.end method

.method public static final synthetic access$getAssetLoader$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/gltfio/AssetLoader;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    return-object p0
.end method

.method public static final synthetic access$getCameraManipulator$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/utils/Manipulator;
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    if-nez p0, :cond_0

    const-string v0, "cameraManipulator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getDisplayHelper$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/android/DisplayHelper;
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->displayHelper:Lcom/google/android/filament/android/DisplayHelper;

    if-nez p0, :cond_0

    const-string v0, "displayHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getReadyRenderables$p(Lcom/google/android/filament/utils/ModelViewer;)[I
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->readyRenderables:[I

    return-object p0
.end method

.method public static final synthetic access$getRenderer$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/Renderer;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    return-object p0
.end method

.method public static final synthetic access$getResourceLoader$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/gltfio/ResourceLoader;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    return-object p0
.end method

.method public static final synthetic access$getSurfaceView$p(Lcom/google/android/filament/utils/ModelViewer;)Landroid/view/SurfaceView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static final synthetic access$getSwapChain$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/SwapChain;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->swapChain:Lcom/google/android/filament/SwapChain;

    return-object p0
.end method

.method public static final synthetic access$getTextureView$p(Lcom/google/android/filament/utils/ModelViewer;)Landroid/view/TextureView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method public static final synthetic access$getUiHelper$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/android/UiHelper;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    return-object p0
.end method

.method public static final synthetic access$setAnimator$p(Lcom/google/android/filament/utils/ModelViewer;Lcom/google/android/filament/gltfio/Animator;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->animator:Lcom/google/android/filament/gltfio/Animator;

    return-void
.end method

.method public static final synthetic access$setAsset$p(Lcom/google/android/filament/utils/ModelViewer;Lcom/google/android/filament/gltfio/FilamentAsset;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    return-void
.end method

.method public static final synthetic access$setAssetLoader$p(Lcom/google/android/filament/utils/ModelViewer;Lcom/google/android/filament/gltfio/AssetLoader;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    return-void
.end method

.method public static final synthetic access$setCameraManipulator$p(Lcom/google/android/filament/utils/ModelViewer;Lcom/google/android/filament/utils/Manipulator;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    return-void
.end method

.method public static final synthetic access$setDisplayHelper$p(Lcom/google/android/filament/utils/ModelViewer;Lcom/google/android/filament/android/DisplayHelper;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->displayHelper:Lcom/google/android/filament/android/DisplayHelper;

    return-void
.end method

.method public static final synthetic access$setResourceLoader$p(Lcom/google/android/filament/utils/ModelViewer;Lcom/google/android/filament/gltfio/ResourceLoader;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    return-void
.end method

.method public static final synthetic access$setSurfaceView$p(Lcom/google/android/filament/utils/ModelViewer;Landroid/view/SurfaceView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->surfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method public static final synthetic access$setSwapChain$p(Lcom/google/android/filament/utils/ModelViewer;Lcom/google/android/filament/SwapChain;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->swapChain:Lcom/google/android/filament/SwapChain;

    return-void
.end method

.method public static final synthetic access$setTextureView$p(Lcom/google/android/filament/utils/ModelViewer;Landroid/view/TextureView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->textureView:Landroid/view/TextureView;

    return-void
.end method

.method private final addDetachListener(Landroid/view/View;)V
    .locals 1

    .line 269
    new-instance v0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;-><init>(Lcom/google/android/filament/utils/ModelViewer;)V

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final populateScene(Lcom/google/android/filament/gltfio/FilamentAsset;)V
    .locals 5

    .line 260
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 261
    new-instance v1, Lcom/google/android/filament/utils/ModelViewer$populateScene$popRenderables$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/filament/utils/ModelViewer$populateScene$popRenderables$1;-><init>(Lcom/google/android/filament/utils/ModelViewer;Lkotlin/jvm/internal/Ref$IntRef;Lcom/google/android/filament/gltfio/FilamentAsset;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 262
    :goto_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/google/android/filament/utils/ModelViewer;->scene:Lcom/google/android/filament/Scene;

    iget-object v3, p0, Lcom/google/android/filament/utils/ModelViewer;->readyRenderables:[I

    iget v4, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v3, v4}, Lkotlin/collections/ArraysKt;->take([II)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/filament/Scene;->addEntities([I)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getLightEntities()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/Scene;->addEntities([I)V

    return-void
.end method

.method public static synthetic progress$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic transformToUnitCube$default(Lcom/google/android/filament/utils/ModelViewer;Lcom/google/android/filament/utils/Float3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 203
    sget-object p1, Lcom/google/android/filament/utils/ModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/ModelViewer;->transformToUnitCube(Lcom/google/android/filament/utils/Float3;)V

    return-void
.end method


# virtual methods
.method public final destroyModel()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->getEntities()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Scene;->removeEntities([I)V

    .line 222
    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/gltfio/AssetLoader;->destroyAsset(Lcom/google/android/filament/gltfio/FilamentAsset;)V

    const/4 v0, 0x0

    .line 223
    move-object v1, v0

    check-cast v1, Lcom/google/android/filament/gltfio/FilamentAsset;

    iput-object v1, p0, Lcom/google/android/filament/utils/ModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    .line 224
    check-cast v0, Lcom/google/android/filament/gltfio/Animator;

    iput-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->animator:Lcom/google/android/filament/gltfio/Animator;

    :cond_0
    return-void
.end method

.method final synthetic fetchResources(Lcom/google/android/filament/gltfio/FilamentAsset;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/filament/gltfio/FilamentAsset;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/nio/Buffer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 306
    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getResourceUris()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "asset.resourceUris"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 308
    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    const-string v6, "resourceUri"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;-><init>(Lcom/google/android/filament/utils/ModelViewer;Ljava/util/HashMap;Lcom/google/android/filament/gltfio/FilamentAsset;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    .line 319
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getAnimator()Lcom/google/android/filament/gltfio/Animator;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->animator:Lcom/google/android/filament/gltfio/Animator;

    return-object p0
.end method

.method public final getAsset()Lcom/google/android/filament/gltfio/FilamentAsset;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    return-object p0
.end method

.method public final getCamera()Lcom/google/android/filament/Camera;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->camera:Lcom/google/android/filament/Camera;

    return-object p0
.end method

.method public final getEngine()Lcom/google/android/filament/Engine;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->engine:Lcom/google/android/filament/Engine;

    return-object p0
.end method

.method public final getLight()I
    .locals 0

    .line 79
    iget p0, p0, Lcom/google/android/filament/utils/ModelViewer;->light:I

    return p0
.end method

.method public final getNormalizeSkinningWeights()Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/google/android/filament/utils/ModelViewer;->normalizeSkinningWeights:Z

    return p0
.end method

.method public final getProgress()F
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/ResourceLoader;->asyncGetLoadProgress()F

    move-result p0

    return p0
.end method

.method public final getRecomputeBoundingBoxes()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/google/android/filament/utils/ModelViewer;->recomputeBoundingBoxes:Z

    return p0
.end method

.method public final getScene()Lcom/google/android/filament/Scene;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->scene:Lcom/google/android/filament/Scene;

    return-object p0
.end method

.method public final getView()Lcom/google/android/filament/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->view:Lcom/google/android/filament/View;

    return-object p0
.end method

.method public final loadModelGlb(Ljava/nio/Buffer;)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/filament/utils/ModelViewer;->destroyModel()V

    .line 159
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/gltfio/AssetLoader;->createAssetFromBinary(Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/FilamentAsset;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    .line 160
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->asyncBeginLoad(Lcom/google/android/filament/gltfio/FilamentAsset;)Z

    .line 162
    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getAnimator()Lcom/google/android/filament/gltfio/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->animator:Lcom/google/android/filament/gltfio/Animator;

    .line 163
    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->releaseSourceData()V

    :cond_0
    return-void
.end method

.method public final loadModelGltf(Ljava/nio/Buffer;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/Buffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/nio/Buffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/filament/utils/ModelViewer;->destroyModel()V

    .line 174
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/gltfio/AssetLoader;->createAssetFromJson(Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/FilamentAsset;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    .line 175
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getResourceUris()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 177
    iget-object v4, p0, Lcom/google/android/filament/utils/ModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    const-string/jumbo v5, "uri"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/Buffer;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/filament/gltfio/ResourceLoader;->addResourceData(Ljava/lang/String;Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/ResourceLoader;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object p2, p0, Lcom/google/android/filament/utils/ModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->asyncBeginLoad(Lcom/google/android/filament/gltfio/FilamentAsset;)Z

    .line 180
    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getAnimator()Lcom/google/android/filament/gltfio/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/filament/utils/ModelViewer;->animator:Lcom/google/android/filament/gltfio/Animator;

    .line 181
    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->releaseSourceData()V

    :cond_1
    return-void
.end method

.method public final loadModelGltfAsync(Ljava/nio/Buffer;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/Buffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/nio/Buffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/filament/utils/ModelViewer;->destroyModel()V

    .line 192
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/gltfio/AssetLoader;->createAssetFromJson(Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/FilamentAsset;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    .line 193
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v1}, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;-><init>(Lcom/google/android/filament/utils/ModelViewer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/ModelViewer;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->gestureDetector:Lcom/google/android/filament/utils/GestureDetector;

    if-nez p0, :cond_0

    const-string v0, "gestureDetector"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final render(J)V
    .locals 24

    move-object/from16 v0, p0

    .line 235
    iget-object v1, v0, Lcom/google/android/filament/utils/ModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {v1}, Lcom/google/android/filament/android/UiHelper;->isReadyToRender()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v1, v0, Lcom/google/android/filament/utils/ModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->asyncUpdateLoad()V

    .line 243
    iget-object v1, v0, Lcom/google/android/filament/utils/ModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v1, :cond_1

    invoke-direct {v0, v1}, Lcom/google/android/filament/utils/ModelViewer;->populateScene(Lcom/google/android/filament/gltfio/FilamentAsset;)V

    .line 246
    :cond_1
    iget-object v1, v0, Lcom/google/android/filament/utils/ModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    if-nez v1, :cond_2

    const-string v2, "cameraManipulator"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v0, Lcom/google/android/filament/utils/ModelViewer;->eyePos:[D

    iget-object v3, v0, Lcom/google/android/filament/utils/ModelViewer;->target:[D

    iget-object v4, v0, Lcom/google/android/filament/utils/ModelViewer;->upward:[D

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/utils/Manipulator;->getLookAt([D[D[D)V

    .line 247
    iget-object v5, v0, Lcom/google/android/filament/utils/ModelViewer;->camera:Lcom/google/android/filament/Camera;

    .line 248
    iget-object v1, v0, Lcom/google/android/filament/utils/ModelViewer;->eyePos:[D

    const/4 v2, 0x0

    aget-wide v6, v1, v2

    const/4 v3, 0x1

    aget-wide v8, v1, v3

    const/4 v4, 0x2

    aget-wide v10, v1, v4

    .line 249
    iget-object v1, v0, Lcom/google/android/filament/utils/ModelViewer;->target:[D

    aget-wide v12, v1, v2

    aget-wide v14, v1, v3

    aget-wide v16, v1, v4

    .line 250
    iget-object v1, v0, Lcom/google/android/filament/utils/ModelViewer;->upward:[D

    aget-wide v18, v1, v2

    aget-wide v20, v1, v3

    aget-wide v22, v1, v4

    .line 247
    invoke-virtual/range {v5 .. v23}, Lcom/google/android/filament/Camera;->lookAt(DDDDDDDDD)V

    .line 253
    iget-object v1, v0, Lcom/google/android/filament/utils/ModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    iget-object v2, v0, Lcom/google/android/filament/utils/ModelViewer;->swapChain:Lcom/google/android/filament/SwapChain;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    move-wide/from16 v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/Renderer;->beginFrame(Lcom/google/android/filament/SwapChain;J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    iget-object v1, v0, Lcom/google/android/filament/utils/ModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    iget-object v2, v0, Lcom/google/android/filament/utils/ModelViewer;->view:Lcom/google/android/filament/View;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Renderer;->render(Lcom/google/android/filament/View;)V

    .line 255
    iget-object v0, v0, Lcom/google/android/filament/utils/ModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    invoke-virtual {v0}, Lcom/google/android/filament/Renderer;->endFrame()V

    :cond_4
    return-void
.end method

.method public final setNormalizeSkinningWeights(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/google/android/filament/utils/ModelViewer;->normalizeSkinningWeights:Z

    return-void
.end method

.method public final setRecomputeBoundingBoxes(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/google/android/filament/utils/ModelViewer;->recomputeBoundingBoxes:Z

    return-void
.end method

.method public final transformToUnitCube(Lcom/google/android/filament/utils/Float3;)V
    .locals 9

    const-string v0, "centerPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v0, :cond_0

    .line 205
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer;->engine:Lcom/google/android/filament/Engine;

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getTransformManager()Lcom/google/android/filament/TransformManager;

    move-result-object p0

    const-string v1, "engine.transformManager"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->getBoundingBox()Lcom/google/android/filament/Box;

    move-result-object v1

    const-string v2, "asset.boundingBox"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/filament/Box;->getCenter()[F

    move-result-object v1

    new-instance v3, Lcom/google/android/filament/utils/Float3;

    const/4 v4, 0x0

    aget v5, v1, v4

    const/4 v6, 0x1

    aget v7, v1, v6

    const/4 v8, 0x2

    aget v1, v1, v8

    invoke-direct {v3, v5, v7, v1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 207
    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->getBoundingBox()Lcom/google/android/filament/Box;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/filament/Box;->getHalfExtent()[F

    move-result-object v1

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    aget v4, v1, v4

    aget v5, v1, v6

    aget v1, v1, v8

    invoke-direct {v2, v4, v5, v1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 351
    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float/2addr v2, v1

    .line 352
    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    div-float/2addr v4, v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    div-float/2addr v5, v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    div-float/2addr p1, v2

    invoke-direct {v1, v4, v5, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 360
    new-instance p1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    sub-float/2addr v3, v1

    invoke-direct {p1, v4, v5, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 211
    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v1, v2}, Lcom/google/android/filament/utils/Float3;-><init>(F)V

    invoke-static {v1}, Lcom/google/android/filament/utils/MatrixKt;->scale(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->unaryMinus()Lcom/google/android/filament/utils/Float3;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/filament/utils/MatrixKt;->translation(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/filament/utils/Mat4;->times(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p1

    .line 212
    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->getRoot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/TransformManager;->getInstance(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/filament/utils/MatrixKt;->transpose(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Mat4;->toFloatArray()[F

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/filament/TransformManager;->setTransform(I[F)V

    :cond_0
    return-void
.end method
