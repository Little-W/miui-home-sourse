.class public Lcom/miui/maml/elements/filament/PbrGltf;
.super Lcom/miui/maml/elements/filament/PbrModel;
.source "PbrGltf.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PbrGltf"


# instance fields
.field private mAssetPath:Ljava/lang/String;

.field private mEnvLight:Lcom/miui/maml/elements/filament/EnvironmentLight;

.field private mFilePath:Ljava/lang/String;

.field private mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

.field private startTime:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/elements/filament/PbrModel;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/miui/maml/elements/filament/PbrGltf;->startTime:J

    .line 33
    invoke-static {}, Lcom/miui/maml/elements/filament/FilamentManager;->getInstance()Lcom/miui/maml/elements/filament/FilamentManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/maml/elements/filament/FilamentManager;->loadAll()V

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/filament/PbrGltf;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/miui/maml/elements/filament/PbrGltf;Ljava/lang/String;)Ljava/nio/Buffer;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mResMgr:Lcom/miui/maml/ResourceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/elements/filament/Io;->readAsset(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "gltfPath"

    .line 98
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mFilePath:Ljava/lang/String;

    const-string v0, "assetPath"

    .line 99
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mAssetPath:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/miui/maml/elements/filament/EnvironmentLight;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mResMgr:Lcom/miui/maml/ResourceManager;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/filament/EnvironmentLight;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEnvLight:Lcom/miui/maml/elements/filament/EnvironmentLight;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEnvLight:Lcom/miui/maml/elements/filament/EnvironmentLight;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEngine:Lcom/google/android/filament/Engine;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEnvLight:Lcom/miui/maml/elements/filament/EnvironmentLight;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEngine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/filament/EnvironmentLight;->onDestroy(Lcom/google/android/filament/Engine;)V

    .line 88
    iput-object v1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEnvLight:Lcom/miui/maml/elements/filament/EnvironmentLight;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/GltfModelViewer;->destroy()V

    .line 92
    invoke-static {}, Lcom/miui/maml/elements/filament/FilamentManager;->getInstance()Lcom/miui/maml/elements/filament/FilamentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/FilamentManager;->releaseEngine()V

    .line 93
    iput-object v1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEngine:Lcom/google/android/filament/Engine;

    :cond_1
    return-void
.end method

.method public init(Landroid/view/View;)V
    .locals 3

    .line 39
    invoke-static {}, Lcom/miui/maml/elements/filament/FilamentManager;->getInstance()Lcom/miui/maml/elements/filament/FilamentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/FilamentManager;->acquireEngine()Lcom/google/android/filament/Engine;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEngine:Lcom/google/android/filament/Engine;

    .line 40
    instance-of v0, p1, Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/miui/maml/elements/filament/GltfModelViewer;

    check-cast p1, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEngine:Lcom/google/android/filament/Engine;

    invoke-direct {v0, p1, v2, v1}, Lcom/miui/maml/elements/filament/GltfModelViewer;-><init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    goto :goto_0

    .line 42
    :cond_0
    instance-of v0, p1, Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Lcom/miui/maml/elements/filament/GltfModelViewer;

    check-cast p1, Landroid/view/TextureView;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEngine:Lcom/google/android/filament/Engine;

    invoke-direct {v0, p1, v2, v1}, Lcom/miui/maml/elements/filament/GltfModelViewer;-><init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/utils/Manipulator;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    .line 45
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mFilePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 46
    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mFilePath:Ljava/lang/String;

    const-string v0, ".glb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mResMgr:Lcom/miui/maml/ResourceManager;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mFilePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/maml/elements/filament/Io;->readAsset(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/filament/GltfModelViewer;->loadModelGlb(Ljava/nio/Buffer;)V

    goto :goto_1

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mFilePath:Ljava/lang/String;

    const-string v0, ".gltf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mAssetPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 50
    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mResMgr:Lcom/miui/maml/ResourceManager;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mFilePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/maml/elements/filament/Io;->readAsset(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    new-instance v1, Lcom/miui/maml/elements/filament/-$$Lambda$PbrGltf$yc0ZPY5UcTWfezfJ_4cBtcSd1yo;

    invoke-direct {v1, p0}, Lcom/miui/maml/elements/filament/-$$Lambda$PbrGltf$yc0ZPY5UcTWfezfJ_4cBtcSd1yo;-><init>(Lcom/miui/maml/elements/filament/PbrGltf;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/maml/elements/filament/GltfModelViewer;->loadModelGltfAsync(Ljava/nio/Buffer;Lkotlin/jvm/functions/Function1;)V

    .line 57
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    const/high16 v1, -0x3f800000    # -4.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/filament/GltfModelViewer;->transformToUnitCube(Lcom/google/android/filament/utils/Float3;)V

    .line 58
    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/GltfModelViewer;->getScene()Lcom/google/android/filament/Scene;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEnvLight:Lcom/miui/maml/elements/filament/EnvironmentLight;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEngine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/filament/EnvironmentLight;->createIndirectLight(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndirectLight;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Scene;->setIndirectLight(Lcom/google/android/filament/IndirectLight;)V

    .line 60
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEnvLight:Lcom/miui/maml/elements/filament/EnvironmentLight;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mEngine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/filament/EnvironmentLight;->createSkybox(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Skybox;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Scene;->setSkybox(Lcom/google/android/filament/Skybox;)V

    .line 61
    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/GltfModelViewer;->getView()Lcom/google/android/filament/View;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/View;->getDynamicResolutionOptions()Lcom/google/android/filament/View$DynamicResolutionOptions;

    move-result-object p1

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p1, Lcom/google/android/filament/View$DynamicResolutionOptions;->enabled:Z

    .line 63
    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    invoke-virtual {v1}, Lcom/miui/maml/elements/filament/GltfModelViewer;->getView()Lcom/google/android/filament/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/filament/View;->setDynamicResolutionOptions(Lcom/google/android/filament/View$DynamicResolutionOptions;)V

    .line 64
    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/GltfModelViewer;->getView()Lcom/google/android/filament/View;

    move-result-object p1

    sget-object v1, Lcom/google/android/filament/View$AmbientOcclusion;->NONE:Lcom/google/android/filament/View$AmbientOcclusion;

    invoke-virtual {p1, v1}, Lcom/google/android/filament/View;->setAmbientOcclusion(Lcom/google/android/filament/View$AmbientOcclusion;)V

    .line 65
    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/GltfModelViewer;->getView()Lcom/google/android/filament/View;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/View;->getBloomOptions()Lcom/google/android/filament/View$BloomOptions;

    move-result-object p1

    iput-boolean v0, p1, Lcom/google/android/filament/View$BloomOptions;->enabled:Z

    :cond_4
    return-void
.end method

.method public render(J)V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/GltfModelViewer;->getAnimator()Lcom/google/android/filament/gltfio/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/Animator;->getAnimationCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    iget-wide v1, p0, Lcom/miui/maml/elements/filament/PbrGltf;->startTime:J

    sub-long v1, p1, v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    const/4 v3, 0x0

    double-to-float v1, v1

    .line 76
    invoke-virtual {v0, v3, v1}, Lcom/google/android/filament/gltfio/Animator;->applyAnimation(IF)V

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/Animator;->updateBoneMatrices()V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrGltf;->mModelViewer:Lcom/miui/maml/elements/filament/GltfModelViewer;

    const-wide/32 v1, 0xf4240

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/filament/GltfModelViewer;->render(J)V

    :cond_2
    return-void
.end method
