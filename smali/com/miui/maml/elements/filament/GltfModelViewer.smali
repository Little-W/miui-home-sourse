.class public final Lcom/miui/maml/elements/filament/GltfModelViewer;
.super Ljava/lang/Object;
.source "GltfModelViewer.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/filament/GltfModelViewer$SurfaceCallback;,
        Lcom/miui/maml/elements/filament/GltfModelViewer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGltfModelViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GltfModelViewer.kt\ncom/miui/maml/elements/filament/GltfModelViewer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 4 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n1#1,365:1\n1#2:366\n733#3:367\n314#4,9:368\n*E\n*S KotlinDebug\n*F\n+ 1 GltfModelViewer.kt\ncom/miui/maml/elements/filament/GltfModelViewer\n*L\n203#1:367\n205#1,9:368\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/maml/elements/filament/GltfModelViewer$Companion;

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

.field private fetchResourcesJob:Lkotlinx/coroutines/Job;

.field private gestureDetector:Lcom/google/android/filament/utils/GestureDetector;

.field private final light:I
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation
.end field

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

    new-instance v0, Lcom/miui/maml/elements/filament/GltfModelViewer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/filament/GltfModelViewer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->Companion:Lcom/miui/maml/elements/filament/GltfModelViewer$Companion;

    .line 362
    new-instance v0, Lcom/google/android/filament/utils/Float3;

    const/4 v1, 0x0

    const/high16 v2, -0x3f800000    # -4.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    sput-object v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;)V
    .locals 2

    const-string v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/filament/GltfModelViewer;-><init>(Lcom/google/android/filament/Engine;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance p2, Lcom/google/android/filament/utils/Manipulator$Builder;

    invoke-direct {p2}, Lcom/google/android/filament/utils/Manipulator$Builder;-><init>()V

    .line 120
    sget-object p3, Lcom/miui/maml/elements/filament/GltfModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p3

    sget-object v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    sget-object v1, Lcom/miui/maml/elements/filament/GltfModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/google/android/filament/utils/Manipulator$Builder;->targetPosition(FFF)Lcom/google/android/filament/utils/Manipulator$Builder;

    move-result-object p2

    .line 121
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/filament/utils/Manipulator$Builder;->viewport(II)Lcom/google/android/filament/utils/Manipulator$Builder;

    move-result-object p2

    .line 122
    sget-object p3, Lcom/google/android/filament/utils/Manipulator$Mode;->ORBIT:Lcom/google/android/filament/utils/Manipulator$Mode;

    invoke-virtual {p2, p3}, Lcom/google/android/filament/utils/Manipulator$Builder;->build(Lcom/google/android/filament/utils/Manipulator$Mode;)Lcom/google/android/filament/utils/Manipulator;

    move-result-object p3

    const-string p2, "Manipulator.Builder()\n  \u2026d(Manipulator.Mode.ORBIT)"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p3, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    .line 124
    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->surfaceView:Landroid/view/SurfaceView;

    .line 125
    new-instance p2, Lcom/google/android/filament/utils/GestureDetector;

    move-object p3, p1

    check-cast p3, Landroid/view/View;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    if-nez v0, :cond_1

    const-string v1, "cameraManipulator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p2, p3, v0}, Lcom/google/android/filament/utils/GestureDetector;-><init>(Landroid/view/View;Lcom/google/android/filament/utils/Manipulator;)V

    iput-object p2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->gestureDetector:Lcom/google/android/filament/utils/GestureDetector;

    .line 126
    new-instance p2, Lcom/google/android/filament/android/DisplayHelper;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/google/android/filament/android/DisplayHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->displayHelper:Lcom/google/android/filament/android/DisplayHelper;

    .line 127
    iget-object p2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    new-instance p3, Lcom/miui/maml/elements/filament/GltfModelViewer$SurfaceCallback;

    invoke-direct {p3, p0}, Lcom/miui/maml/elements/filament/GltfModelViewer$SurfaceCallback;-><init>(Lcom/miui/maml/elements/filament/GltfModelViewer;)V

    check-cast p3, Lcom/google/android/filament/android/UiHelper$RendererCallback;

    invoke-virtual {p2, p3}, Lcom/google/android/filament/android/UiHelper;->setRenderCallback(Lcom/google/android/filament/android/UiHelper$RendererCallback;)V

    .line 128
    iget-object p2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/android/UiHelper;->attachTo(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 118
    invoke-static {}, Lcom/google/android/filament/Engine;->create()Lcom/google/android/filament/Engine;

    move-result-object p2

    const-string p5, "Engine.create()"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    check-cast p3, Lcom/google/android/filament/utils/Manipulator;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/elements/filament/GltfModelViewer;-><init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;)V
    .locals 2

    const-string v0, "textureView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/filament/GltfModelViewer;-><init>(Lcom/google/android/filament/Engine;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    new-instance p2, Lcom/google/android/filament/utils/Manipulator$Builder;

    invoke-direct {p2}, Lcom/google/android/filament/utils/Manipulator$Builder;-><init>()V

    .line 136
    sget-object p3, Lcom/miui/maml/elements/filament/GltfModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p3

    sget-object v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v0

    sget-object v1, Lcom/miui/maml/elements/filament/GltfModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/google/android/filament/utils/Manipulator$Builder;->targetPosition(FFF)Lcom/google/android/filament/utils/Manipulator$Builder;

    move-result-object p2

    .line 137
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/filament/utils/Manipulator$Builder;->viewport(II)Lcom/google/android/filament/utils/Manipulator$Builder;

    move-result-object p2

    .line 138
    sget-object p3, Lcom/google/android/filament/utils/Manipulator$Mode;->ORBIT:Lcom/google/android/filament/utils/Manipulator$Mode;

    invoke-virtual {p2, p3}, Lcom/google/android/filament/utils/Manipulator$Builder;->build(Lcom/google/android/filament/utils/Manipulator$Mode;)Lcom/google/android/filament/utils/Manipulator;

    move-result-object p3

    const-string p2, "Manipulator.Builder()\n  \u2026d(Manipulator.Mode.ORBIT)"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p3, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    .line 140
    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->textureView:Landroid/view/TextureView;

    .line 141
    new-instance p2, Lcom/google/android/filament/utils/GestureDetector;

    move-object p3, p1

    check-cast p3, Landroid/view/View;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    if-nez v0, :cond_1

    const-string v1, "cameraManipulator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p2, p3, v0}, Lcom/google/android/filament/utils/GestureDetector;-><init>(Landroid/view/View;Lcom/google/android/filament/utils/Manipulator;)V

    iput-object p2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->gestureDetector:Lcom/google/android/filament/utils/GestureDetector;

    .line 142
    new-instance p2, Lcom/google/android/filament/android/DisplayHelper;

    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/google/android/filament/android/DisplayHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->displayHelper:Lcom/google/android/filament/android/DisplayHelper;

    .line 143
    iget-object p2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    new-instance p3, Lcom/miui/maml/elements/filament/GltfModelViewer$SurfaceCallback;

    invoke-direct {p3, p0}, Lcom/miui/maml/elements/filament/GltfModelViewer$SurfaceCallback;-><init>(Lcom/miui/maml/elements/filament/GltfModelViewer;)V

    check-cast p3, Lcom/google/android/filament/android/UiHelper$RendererCallback;

    invoke-virtual {p2, p3}, Lcom/google/android/filament/android/UiHelper;->setRenderCallback(Lcom/google/android/filament/android/UiHelper$RendererCallback;)V

    .line 144
    iget-object p2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/android/UiHelper;->attachTo(Landroid/view/TextureView;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 134
    invoke-static {}, Lcom/google/android/filament/Engine;->create()Lcom/google/android/filament/Engine;

    move-result-object p2

    const-string p5, "Engine.create()"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    check-cast p3, Lcom/google/android/filament/utils/Manipulator;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/elements/filament/GltfModelViewer;-><init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;)V
    .locals 5

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->normalizeSkinningWeights:Z

    .line 72
    new-instance v0, Lcom/google/android/filament/android/UiHelper;

    sget-object v1, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->DONT_CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    invoke-direct {v0, v1}, Lcom/google/android/filament/android/UiHelper;-><init>(Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    const/16 v0, 0x80

    .line 85
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->readyRenderables:[I

    const/4 v0, 0x3

    .line 87
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->eyePos:[D

    .line 88
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->target:[D

    .line 89
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->upward:[D

    .line 92
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->createRenderer()Lcom/google/android/filament/Renderer;

    move-result-object v0

    const-string v1, "engine.createRenderer()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    .line 93
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->createScene()Lcom/google/android/filament/Scene;

    move-result-object v0

    const-string v1, "engine.createScene()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->scene:Lcom/google/android/filament/Scene;

    .line 94
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->createCamera()Lcom/google/android/filament/Camera;

    move-result-object v0

    const-string v1, "engine.createCamera()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x41800000    # 16.0f

    const v2, 0x3c03126f    # 0.008f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/filament/Camera;->setExposure(FFF)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->camera:Lcom/google/android/filament/Camera;

    .line 95
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->createView()Lcom/google/android/filament/View;

    move-result-object v0

    const-string v1, "engine.createView()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->view:Lcom/google/android/filament/View;

    .line 96
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->view:Lcom/google/android/filament/View;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->setScene(Lcom/google/android/filament/Scene;)V

    .line 97
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->view:Lcom/google/android/filament/View;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->camera:Lcom/google/android/filament/Camera;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->setCamera(Lcom/google/android/filament/Camera;)V

    .line 99
    new-instance v0, Lcom/google/android/filament/gltfio/AssetLoader;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    new-instance v2, Lcom/google/android/filament/gltfio/MaterialProvider;

    invoke-direct {v2, v1}, Lcom/google/android/filament/gltfio/MaterialProvider;-><init>(Lcom/google/android/filament/Engine;)V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->get()Lcom/google/android/filament/EntityManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/gltfio/AssetLoader;-><init>(Lcom/google/android/filament/Engine;Lcom/google/android/filament/gltfio/MaterialProvider;Lcom/google/android/filament/EntityManager;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    .line 100
    new-instance v0, Lcom/google/android/filament/gltfio/ResourceLoader;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    iget-boolean v2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->normalizeSkinningWeights:Z

    iget-boolean v3, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->recomputeBoundingBoxes:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/gltfio/ResourceLoader;-><init>(Lcom/google/android/filament/Engine;ZZ)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    .line 105
    invoke-static {}, Lcom/google/android/filament/EntityManager;->get()Lcom/google/android/filament/EntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/EntityManager;->create()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->light:I

    const v0, 0x45cb2000    # 6500.0f

    .line 107
    invoke-static {v0}, Lcom/google/android/filament/Colors;->cct(F)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    aget v2, v0, p1

    const/4 v3, 0x2

    aget v0, v0, v3

    .line 108
    new-instance v3, Lcom/google/android/filament/LightManager$Builder;

    sget-object v4, Lcom/google/android/filament/LightManager$Type;->DIRECTIONAL:Lcom/google/android/filament/LightManager$Type;

    invoke-direct {v3, v4}, Lcom/google/android/filament/LightManager$Builder;-><init>(Lcom/google/android/filament/LightManager$Type;)V

    .line 109
    invoke-virtual {v3, v1, v2, v0}, Lcom/google/android/filament/LightManager$Builder;->color(FFF)Lcom/google/android/filament/LightManager$Builder;

    move-result-object v0

    const v1, 0x47c35000    # 100000.0f

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/filament/LightManager$Builder;->intensity(F)Lcom/google/android/filament/LightManager$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 111
    invoke-virtual {v0, v1, v2, v1}, Lcom/google/android/filament/LightManager$Builder;->direction(FFF)Lcom/google/android/filament/LightManager$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p1}, Lcom/google/android/filament/LightManager$Builder;->castShadows(Z)Lcom/google/android/filament/LightManager$Builder;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    iget v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->light:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/filament/LightManager$Builder;->build(Lcom/google/android/filament/Engine;I)V

    .line 115
    iget-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->scene:Lcom/google/android/filament/Scene;

    iget v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->light:I

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Scene;->addEntity(I)V

    return-void
.end method

.method public static final synthetic access$getAnimator$p(Lcom/miui/maml/elements/filament/GltfModelViewer;)Lcom/google/android/filament/gltfio/Animator;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->animator:Lcom/google/android/filament/gltfio/Animator;

    return-object p0
.end method

.method public static final synthetic access$getAsset$p(Lcom/miui/maml/elements/filament/GltfModelViewer;)Lcom/google/android/filament/gltfio/FilamentAsset;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    return-object p0
.end method

.method public static final synthetic access$getCameraManipulator$p(Lcom/miui/maml/elements/filament/GltfModelViewer;)Lcom/google/android/filament/utils/Manipulator;
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    if-nez p0, :cond_0

    const-string v0, "cameraManipulator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getDisplayHelper$p(Lcom/miui/maml/elements/filament/GltfModelViewer;)Lcom/google/android/filament/android/DisplayHelper;
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->displayHelper:Lcom/google/android/filament/android/DisplayHelper;

    if-nez p0, :cond_0

    const-string v0, "displayHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getReadyRenderables$p(Lcom/miui/maml/elements/filament/GltfModelViewer;)[I
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->readyRenderables:[I

    return-object p0
.end method

.method public static final synthetic access$getRenderer$p(Lcom/miui/maml/elements/filament/GltfModelViewer;)Lcom/google/android/filament/Renderer;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    return-object p0
.end method

.method public static final synthetic access$getResourceLoader$p(Lcom/miui/maml/elements/filament/GltfModelViewer;)Lcom/google/android/filament/gltfio/ResourceLoader;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    return-object p0
.end method

.method public static final synthetic access$getSurfaceView$p(Lcom/miui/maml/elements/filament/GltfModelViewer;)Landroid/view/SurfaceView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static final synthetic access$getSwapChain$p(Lcom/miui/maml/elements/filament/GltfModelViewer;)Lcom/google/android/filament/SwapChain;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->swapChain:Lcom/google/android/filament/SwapChain;

    return-object p0
.end method

.method public static final synthetic access$getTextureView$p(Lcom/miui/maml/elements/filament/GltfModelViewer;)Landroid/view/TextureView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method public static final synthetic access$setAnimator$p(Lcom/miui/maml/elements/filament/GltfModelViewer;Lcom/google/android/filament/gltfio/Animator;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->animator:Lcom/google/android/filament/gltfio/Animator;

    return-void
.end method

.method public static final synthetic access$setAsset$p(Lcom/miui/maml/elements/filament/GltfModelViewer;Lcom/google/android/filament/gltfio/FilamentAsset;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    return-void
.end method

.method public static final synthetic access$setCameraManipulator$p(Lcom/miui/maml/elements/filament/GltfModelViewer;Lcom/google/android/filament/utils/Manipulator;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    return-void
.end method

.method public static final synthetic access$setDisplayHelper$p(Lcom/miui/maml/elements/filament/GltfModelViewer;Lcom/google/android/filament/android/DisplayHelper;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->displayHelper:Lcom/google/android/filament/android/DisplayHelper;

    return-void
.end method

.method public static final synthetic access$setResourceLoader$p(Lcom/miui/maml/elements/filament/GltfModelViewer;Lcom/google/android/filament/gltfio/ResourceLoader;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    return-void
.end method

.method public static final synthetic access$setSurfaceView$p(Lcom/miui/maml/elements/filament/GltfModelViewer;Landroid/view/SurfaceView;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->surfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method public static final synthetic access$setSwapChain$p(Lcom/miui/maml/elements/filament/GltfModelViewer;Lcom/google/android/filament/SwapChain;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->swapChain:Lcom/google/android/filament/SwapChain;

    return-void
.end method

.method public static final synthetic access$setTextureView$p(Lcom/miui/maml/elements/filament/GltfModelViewer;Landroid/view/TextureView;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->textureView:Landroid/view/TextureView;

    return-void
.end method

.method public static synthetic getProgress$annotations()V
    .locals 0

    return-void
.end method

.method private final populateScene(Lcom/google/android/filament/gltfio/FilamentAsset;)V
    .locals 5

    .line 255
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 256
    new-instance v1, Lcom/miui/maml/elements/filament/GltfModelViewer$populateScene$popRenderables$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/maml/elements/filament/GltfModelViewer$populateScene$popRenderables$1;-><init>(Lcom/miui/maml/elements/filament/GltfModelViewer;Lkotlin/jvm/internal/Ref$IntRef;Lcom/google/android/filament/gltfio/FilamentAsset;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 257
    :goto_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->scene:Lcom/google/android/filament/Scene;

    iget-object v3, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->readyRenderables:[I

    iget v4, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v3, v4}, Lkotlin/collections/ArraysKt;->take([II)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/filament/Scene;->addEntities([I)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getLightEntities()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/filament/Scene;->addEntities([I)V

    return-void
.end method

.method public static synthetic transformToUnitCube$default(Lcom/miui/maml/elements/filament/GltfModelViewer;Lcom/google/android/filament/utils/Float3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 198
    sget-object p1, Lcom/miui/maml/elements/filament/GltfModelViewer;->kDefaultObjectPosition:Lcom/google/android/filament/utils/Float3;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/filament/GltfModelViewer;->transformToUnitCube(Lcom/google/android/filament/utils/Float3;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {v0}, Lcom/google/android/filament/android/UiHelper;->detach()V

    .line 291
    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/GltfModelViewer;->destroyModel()V

    .line 292
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/AssetLoader;->destroy()V

    .line 293
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/ResourceLoader;->destroy()V

    .line 295
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    iget v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->light:I

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->destroyEntity(I)V

    .line 296
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->destroyRenderer(Lcom/google/android/filament/Renderer;)V

    .line 297
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->view:Lcom/google/android/filament/View;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->destroyView(Lcom/google/android/filament/View;)V

    .line 298
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->destroyScene(Lcom/google/android/filament/Scene;)V

    .line 299
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->camera:Lcom/google/android/filament/Camera;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->destroyCamera(Lcom/google/android/filament/Camera;)V

    .line 301
    invoke-static {}, Lcom/google/android/filament/EntityManager;->get()Lcom/google/android/filament/EntityManager;

    move-result-object v0

    iget v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->light:I

    invoke-virtual {v0, v1}, Lcom/google/android/filament/EntityManager;->destroy(I)V

    return-void
.end method

.method public final destroyModel()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->fetchResourcesJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v0, :cond_1

    .line 217
    iget-object v2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->getEntities()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/filament/Scene;->removeEntities([I)V

    .line 218
    iget-object v2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v2, v0}, Lcom/google/android/filament/gltfio/AssetLoader;->destroyAsset(Lcom/google/android/filament/gltfio/FilamentAsset;)V

    .line 219
    move-object v0, v1

    check-cast v0, Lcom/google/android/filament/gltfio/FilamentAsset;

    iput-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    .line 220
    check-cast v1, Lcom/google/android/filament/gltfio/Animator;

    iput-object v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->animator:Lcom/google/android/filament/gltfio/Animator;

    :cond_1
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

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 321
    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getResourceUris()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "asset.resourceUris"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 323
    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    const-string v6, "resourceUri"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 326
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/miui/maml/elements/filament/GltfModelViewer$fetchResources$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/miui/maml/elements/filament/GltfModelViewer$fetchResources$2;-><init>(Lcom/miui/maml/elements/filament/GltfModelViewer;Ljava/util/HashMap;Lcom/google/android/filament/gltfio/FilamentAsset;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    .line 334
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getAnimator()Lcom/google/android/filament/gltfio/Animator;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->animator:Lcom/google/android/filament/gltfio/Animator;

    return-object v0
.end method

.method public final getAsset()Lcom/google/android/filament/gltfio/FilamentAsset;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    return-object v0
.end method

.method public final getCamera()Lcom/google/android/filament/Camera;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->camera:Lcom/google/android/filament/Camera;

    return-object v0
.end method

.method public final getEngine()Lcom/google/android/filament/Engine;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    return-object v0
.end method

.method public final getLight()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->light:I

    return v0
.end method

.method public final getNormalizeSkinningWeights()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->normalizeSkinningWeights:Z

    return v0
.end method

.method public final getProgress()F
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/ResourceLoader;->asyncGetLoadProgress()F

    move-result v0

    return v0
.end method

.method public final getRecomputeBoundingBoxes()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->recomputeBoundingBoxes:Z

    return v0
.end method

.method public final getScene()Lcom/google/android/filament/Scene;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->scene:Lcom/google/android/filament/Scene;

    return-object v0
.end method

.method public final getView()Lcom/google/android/filament/View;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->view:Lcom/google/android/filament/View;

    return-object v0
.end method

.method public final loadModelGlb(Ljava/nio/Buffer;)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/GltfModelViewer;->destroyModel()V

    .line 154
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/gltfio/AssetLoader;->createAssetFromBinary(Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/FilamentAsset;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    .line 155
    iget-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->asyncBeginLoad(Lcom/google/android/filament/gltfio/FilamentAsset;)Z

    .line 157
    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getAnimator()Lcom/google/android/filament/gltfio/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->animator:Lcom/google/android/filament/gltfio/Animator;

    .line 158
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/GltfModelViewer;->destroyModel()V

    .line 169
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/gltfio/AssetLoader;->createAssetFromJson(Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/FilamentAsset;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    .line 170
    iget-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getResourceUris()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 172
    iget-object v4, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    const-string v5, "uri"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/Buffer;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/filament/gltfio/ResourceLoader;->addResourceData(Ljava/lang/String;Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/ResourceLoader;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-object p2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->asyncBeginLoad(Lcom/google/android/filament/gltfio/FilamentAsset;)Z

    .line 175
    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getAnimator()Lcom/google/android/filament/gltfio/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->animator:Lcom/google/android/filament/gltfio/Animator;

    .line 176
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/GltfModelViewer;->destroyModel()V

    .line 187
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->assetLoader:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/gltfio/AssetLoader;->createAssetFromJson(Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/FilamentAsset;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    .line 188
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/miui/maml/elements/filament/GltfModelViewer$loadModelGltfAsync$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v1}, Lcom/miui/maml/elements/filament/GltfModelViewer$loadModelGltfAsync$1;-><init>(Lcom/miui/maml/elements/filament/GltfModelViewer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->fetchResourcesJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/filament/GltfModelViewer;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->gestureDetector:Lcom/google/android/filament/utils/GestureDetector;

    if-nez v0, :cond_0

    const-string v1, "gestureDetector"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/filament/utils/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final render(J)V
    .locals 24

    move-object/from16 v0, p0

    .line 231
    iget-object v1, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->uiHelper:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {v1}, Lcom/google/android/filament/android/UiHelper;->isReadyToRender()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v1, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->resourceLoader:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->asyncUpdateLoad()V

    .line 238
    iget-object v1, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v1, :cond_1

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/filament/GltfModelViewer;->populateScene(Lcom/google/android/filament/gltfio/FilamentAsset;)V

    .line 241
    :cond_1
    iget-object v1, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->cameraManipulator:Lcom/google/android/filament/utils/Manipulator;

    if-nez v1, :cond_2

    const-string v2, "cameraManipulator"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->eyePos:[D

    iget-object v3, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->target:[D

    iget-object v4, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->upward:[D

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/utils/Manipulator;->getLookAt([D[D[D)V

    .line 242
    iget-object v5, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->camera:Lcom/google/android/filament/Camera;

    .line 243
    iget-object v1, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->eyePos:[D

    const/4 v2, 0x0

    aget-wide v6, v1, v2

    const/4 v3, 0x1

    aget-wide v8, v1, v3

    const/4 v4, 0x2

    aget-wide v10, v1, v4

    .line 244
    iget-object v1, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->target:[D

    aget-wide v12, v1, v2

    aget-wide v14, v1, v3

    aget-wide v16, v1, v4

    .line 245
    iget-object v1, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->upward:[D

    aget-wide v18, v1, v2

    aget-wide v20, v1, v3

    aget-wide v22, v1, v4

    .line 242
    invoke-virtual/range {v5 .. v23}, Lcom/google/android/filament/Camera;->lookAt(DDDDDDDDD)V

    .line 248
    iget-object v1, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    iget-object v2, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->swapChain:Lcom/google/android/filament/SwapChain;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide/from16 v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/Renderer;->beginFrame(Lcom/google/android/filament/SwapChain;J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    iget-object v1, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    iget-object v2, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->view:Lcom/google/android/filament/View;

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Renderer;->render(Lcom/google/android/filament/View;)V

    .line 250
    iget-object v1, v0, Lcom/miui/maml/elements/filament/GltfModelViewer;->renderer:Lcom/google/android/filament/Renderer;

    invoke-virtual {v1}, Lcom/google/android/filament/Renderer;->endFrame()V

    :cond_3
    return-void
.end method

.method public final setNormalizeSkinningWeights(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->normalizeSkinningWeights:Z

    return-void
.end method

.method public final setRecomputeBoundingBoxes(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->recomputeBoundingBoxes:Z

    return-void
.end method

.method public final transformToUnitCube(Lcom/google/android/filament/utils/Float3;)V
    .locals 9

    const-string v0, "centerPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/miui/maml/elements/filament/GltfModelViewer;->engine:Lcom/google/android/filament/Engine;

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->getTransformManager()Lcom/google/android/filament/TransformManager;

    move-result-object v1

    const-string v2, "engine.transformManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->getBoundingBox()Lcom/google/android/filament/Box;

    move-result-object v2

    const-string v3, "asset.boundingBox"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/filament/Box;->getCenter()[F

    move-result-object v2

    new-instance v3, Lcom/google/android/filament/utils/Float3;

    const/4 v4, 0x0

    aget v5, v2, v4

    const/4 v6, 0x1

    aget v7, v2, v6

    const/4 v8, 0x2

    aget v2, v2, v8

    invoke-direct {v3, v5, v7, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 202
    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->getBoundingBox()Lcom/google/android/filament/Box;

    move-result-object v2

    const-string v5, "asset.boundingBox"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/filament/Box;->getHalfExtent()[F

    move-result-object v2

    new-instance v5, Lcom/google/android/filament/utils/Float3;

    aget v4, v2, v4

    aget v6, v2, v6

    aget v2, v2, v8

    invoke-direct {v5, v4, v6, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 367
    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v4

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    div-float/2addr v4, v2

    .line 368
    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v5

    div-float/2addr v5, v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v6

    div-float/2addr v6, v4

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p1

    div-float/2addr p1, v4

    invoke-direct {v2, v5, v6, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 376
    new-instance p1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v3}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-direct {p1, v5, v6, v3}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 206
    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v2, v4}, Lcom/google/android/filament/utils/Float3;-><init>(F)V

    invoke-static {v2}, Lcom/google/android/filament/utils/MatrixKt;->scale(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Float3;->unaryMinus()Lcom/google/android/filament/utils/Float3;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/filament/utils/MatrixKt;->translation(Lcom/google/android/filament/utils/Float3;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/filament/utils/Mat4;->times(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p1

    .line 207
    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->getRoot()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/filament/TransformManager;->getInstance(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/filament/utils/MatrixKt;->transpose(Lcom/google/android/filament/utils/Mat4;)Lcom/google/android/filament/utils/Mat4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Mat4;->toFloatArray()[F

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/filament/TransformManager;->setTransform(I[F)V

    :cond_0
    return-void
.end method
