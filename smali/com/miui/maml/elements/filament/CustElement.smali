.class public Lcom/miui/maml/elements/filament/CustElement;
.super Ljava/lang/Object;
.source "CustElement.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mEngine:Lcom/google/android/filament/Engine;

.field protected mEnvLight:Lcom/miui/maml/elements/filament/EnvironmentLight;

.field protected mFilamentView:Lcom/google/android/filament/View;

.field private mManager:Lcom/miui/maml/ResourceManager;

.field private mMaterial:Lcom/google/android/filament/Material;

.field private mMaterialInstance:Lcom/google/android/filament/MaterialInstance;

.field private mMaterialPath:Ljava/lang/String;

.field protected mMesh:Lcom/miui/maml/elements/filament/Mesh;

.field private mMeshPath:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field protected mPbrCamera:Lcom/miui/maml/elements/filament/PbrCamera;

.field protected mPbrLight:Lcom/miui/maml/elements/filament/PbrLight;

.field protected mScene:Lcom/google/android/filament/Scene;

.field private mToneMapping:Ljava/lang/String;

.field private mUniforms:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/filament/UniformFactory$Uniform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    .line 50
    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mContext:Landroid/content/Context;

    const-string v0, "matPath"

    .line 51
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterialPath:Ljava/lang/String;

    const-string v0, "meshPath"

    .line 52
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mMeshPath:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/miui/maml/elements/filament/EnvironmentLight;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/filament/EnvironmentLight;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mEnvLight:Lcom/miui/maml/elements/filament/EnvironmentLight;

    .line 54
    new-instance p2, Lcom/miui/maml/elements/filament/PbrLight;

    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/miui/maml/elements/filament/PbrLight;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    iput-object p2, p0, Lcom/miui/maml/elements/filament/CustElement;->mPbrLight:Lcom/miui/maml/elements/filament/PbrLight;

    .line 55
    new-instance p2, Lcom/miui/maml/elements/filament/PbrCamera;

    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/miui/maml/elements/filament/PbrCamera;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    iput-object p2, p0, Lcom/miui/maml/elements/filament/CustElement;->mPbrCamera:Lcom/miui/maml/elements/filament/PbrCamera;

    const-string p2, "name"

    .line 56
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/filament/CustElement;->mName:Ljava/lang/String;

    const-string p2, "toneMapping"

    .line 57
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/filament/CustElement;->mToneMapping:Ljava/lang/String;

    const-string p2, "Uniform"

    .line 59
    new-instance v0, Lcom/miui/maml/elements/filament/CustElement$1;

    invoke-direct {v0, p0, p3}, Lcom/miui/maml/elements/filament/CustElement$1;-><init>(Lcom/miui/maml/elements/filament/CustElement;Lcom/miui/maml/ScreenElementRoot;)V

    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/filament/CustElement;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/maml/elements/filament/CustElement;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/filament/CustElement;)Landroid/util/ArrayMap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private setToneMapping()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mToneMapping:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    sget-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->ACES_LEGACY:Lcom/google/android/filament/ColorGrading$ToneMapping;

    .line 206
    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustElement;->mToneMapping:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "aces_legacy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v3, "aces"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "reinhard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v3, "linear"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_4
    const-string v3, "filmic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5
    const-string v3, "display_range"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_6
    const-string v3, "uchimura"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 226
    :pswitch_0
    sget-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->DISPLAY_RANGE:Lcom/google/android/filament/ColorGrading$ToneMapping;

    goto :goto_1

    .line 223
    :pswitch_1
    sget-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->REINHARD:Lcom/google/android/filament/ColorGrading$ToneMapping;

    goto :goto_1

    .line 220
    :pswitch_2
    sget-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->UCHIMURA:Lcom/google/android/filament/ColorGrading$ToneMapping;

    goto :goto_1

    .line 217
    :pswitch_3
    sget-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->FILMIC:Lcom/google/android/filament/ColorGrading$ToneMapping;

    goto :goto_1

    .line 214
    :pswitch_4
    sget-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->ACES:Lcom/google/android/filament/ColorGrading$ToneMapping;

    goto :goto_1

    .line 211
    :pswitch_5
    sget-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->ACES_LEGACY:Lcom/google/android/filament/ColorGrading$ToneMapping;

    goto :goto_1

    .line 208
    :pswitch_6
    sget-object v0, Lcom/google/android/filament/ColorGrading$ToneMapping;->LINEAR:Lcom/google/android/filament/ColorGrading$ToneMapping;

    .line 231
    :goto_1
    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustElement;->mFilamentView:Lcom/google/android/filament/View;

    new-instance v2, Lcom/google/android/filament/ColorGrading$Builder;

    invoke-direct {v2}, Lcom/google/android/filament/ColorGrading$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/filament/ColorGrading$Builder;->toneMapping(Lcom/google/android/filament/ColorGrading$ToneMapping;)Lcom/google/android/filament/ColorGrading$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/maml/elements/filament/CustElement;->mEngine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0, v2}, Lcom/google/android/filament/ColorGrading$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/ColorGrading;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->setColorGrading(Lcom/google/android/filament/ColorGrading;)V

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x599a9d9a -> :sswitch_6
        -0x57836480 -> :sswitch_5
        -0x4bf74e62 -> :sswitch_4
        -0x41b970db -> :sswitch_3
        -0x2578f07d -> :sswitch_2
        0x2d9850 -> :sswitch_1
        0x6bb05e98 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkOffscreenUniform(Landroid/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/filament/CustFrameBuffer;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 175
    iget-object v2, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;

    .line 176
    instance-of v3, v2, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;

    if-eqz v3, :cond_0

    .line 177
    check-cast v2, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;

    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->checkOffscreen(Landroid/util/ArrayMap;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public doFrame(Lcom/google/android/filament/Renderer;)V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 141
    iget-object v2, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;

    .line 142
    invoke-virtual {v2}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->isAutoRefresh()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v2}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->refresh()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mFilamentView:Lcom/google/android/filament/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {p1, v0}, Lcom/google/android/filament/Renderer;->render(Lcom/google/android/filament/View;)V

    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/google/android/filament/Engine;Lcom/miui/maml/ResourceManager;Landroid/view/View;)V
    .locals 4

    .line 70
    iput-object p2, p0, Lcom/miui/maml/elements/filament/CustElement;->mManager:Lcom/miui/maml/ResourceManager;

    .line 71
    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustElement;->mEngine:Lcom/google/android/filament/Engine;

    .line 72
    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->createView()Lcom/google/android/filament/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mFilamentView:Lcom/google/android/filament/View;

    .line 73
    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->createScene()Lcom/google/android/filament/Scene;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mScene:Lcom/google/android/filament/Scene;

    .line 74
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mFilamentView:Lcom/google/android/filament/View;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustElement;->mPbrCamera:Lcom/miui/maml/elements/filament/PbrCamera;

    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/filament/PbrCamera;->createCamera(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->setCamera(Lcom/google/android/filament/Camera;)V

    .line 75
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mFilamentView:Lcom/google/android/filament/View;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustElement;->mScene:Lcom/google/android/filament/Scene;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->setScene(Lcom/google/android/filament/Scene;)V

    .line 76
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mFilamentView:Lcom/google/android/filament/View;

    new-instance v1, Lcom/google/android/filament/Viewport;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p3}, Lcom/google/android/filament/Viewport;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->setViewport(Lcom/google/android/filament/Viewport;)V

    .line 77
    iget-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mFilamentView:Lcom/google/android/filament/View;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/google/android/filament/View;->setSampleCount(I)V

    .line 78
    invoke-direct {p0}, Lcom/miui/maml/elements/filament/CustElement;->setToneMapping()V

    .line 79
    iget-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterialPath:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/miui/maml/elements/filament/Io;->readAsset(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 81
    new-instance v0, Lcom/google/android/filament/Material$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/Material$Builder;-><init>()V

    .line 82
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/google/android/filament/Material$Builder;->payload(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$Builder;

    move-result-object p3

    .line 83
    invoke-virtual {p3, p1}, Lcom/google/android/filament/Material$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Material;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterial:Lcom/google/android/filament/Material;

    .line 84
    iget-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterial:Lcom/google/android/filament/Material;

    invoke-virtual {p3}, Lcom/google/android/filament/Material;->createInstance()Lcom/google/android/filament/MaterialInstance;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterialInstance:Lcom/google/android/filament/MaterialInstance;

    .line 86
    :cond_0
    iget-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mMeshPath:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 87
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "DefaultMaterial"

    .line 88
    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterialInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mMeshPath:Ljava/lang/String;

    invoke-static {p2, v0, p3, p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->loadMesh(Lcom/miui/maml/ResourceManager;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/filament/Engine;)Lcom/miui/maml/elements/filament/Mesh;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mMesh:Lcom/miui/maml/elements/filament/Mesh;

    goto :goto_0

    .line 91
    :cond_1
    iget-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterialInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-static {p3, p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->loadDefaultMesh(Lcom/google/android/filament/MaterialInstance;Lcom/google/android/filament/Engine;)Lcom/miui/maml/elements/filament/Mesh;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mMesh:Lcom/miui/maml/elements/filament/Mesh;

    .line 93
    :goto_0
    iget-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mScene:Lcom/google/android/filament/Scene;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mMesh:Lcom/miui/maml/elements/filament/Mesh;

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/Mesh;->getRenderable()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/android/filament/Scene;->addEntity(I)V

    .line 94
    iget-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mScene:Lcom/google/android/filament/Scene;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/google/android/filament/Scene;->setSkybox(Lcom/google/android/filament/Skybox;)V

    .line 95
    iget-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mScene:Lcom/google/android/filament/Scene;

    invoke-virtual {p3, v0}, Lcom/google/android/filament/Scene;->setIndirectLight(Lcom/google/android/filament/IndirectLight;)V

    .line 96
    iget-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mScene:Lcom/google/android/filament/Scene;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mPbrLight:Lcom/miui/maml/elements/filament/PbrLight;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/filament/PbrLight;->createLight(Lcom/google/android/filament/Engine;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/android/filament/Scene;->addEntity(I)V

    .line 97
    iget-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    :goto_1
    if-ge v3, p3, :cond_2

    .line 99
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;

    .line 100
    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterialInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p2, p1, v1}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->init(Lcom/miui/maml/ResourceManager;Lcom/google/android/filament/Engine;Lcom/google/android/filament/MaterialInstance;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onDestroy(Lcom/google/android/filament/Engine;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 107
    iget-object v2, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;

    .line 109
    :try_start_0
    invoke-virtual {v2}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mEnvLight:Lcom/miui/maml/elements/filament/EnvironmentLight;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/filament/EnvironmentLight;->onDestroy(Lcom/google/android/filament/Engine;)V

    .line 114
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mPbrLight:Lcom/miui/maml/elements/filament/PbrLight;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/filament/PbrLight;->onDestroy(Lcom/google/android/filament/Engine;)V

    .line 115
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mPbrCamera:Lcom/miui/maml/elements/filament/PbrCamera;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/filament/PbrCamera;->onDestroy(Lcom/google/android/filament/Engine;)V

    .line 116
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mMesh:Lcom/miui/maml/elements/filament/Mesh;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 117
    invoke-static {p1, v0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->destroyMesh(Lcom/google/android/filament/Engine;Lcom/miui/maml/elements/filament/Mesh;)V

    .line 118
    iput-object v1, p0, Lcom/miui/maml/elements/filament/CustElement;->mMesh:Lcom/miui/maml/elements/filament/Mesh;

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterialInstance:Lcom/google/android/filament/MaterialInstance;

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyMaterialInstance(Lcom/google/android/filament/MaterialInstance;)V

    .line 122
    iput-object v1, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterialInstance:Lcom/google/android/filament/MaterialInstance;

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterial:Lcom/google/android/filament/Material;

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyMaterial(Lcom/google/android/filament/Material;)V

    .line 126
    iput-object v1, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterial:Lcom/google/android/filament/Material;

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mScene:Lcom/google/android/filament/Scene;

    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyScene(Lcom/google/android/filament/Scene;)V

    .line 130
    iput-object v1, p0, Lcom/miui/maml/elements/filament/CustElement;->mScene:Lcom/google/android/filament/Scene;

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mFilamentView:Lcom/google/android/filament/View;

    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyView(Lcom/google/android/filament/View;)V

    .line 134
    iput-object v1, p0, Lcom/miui/maml/elements/filament/CustElement;->mFilamentView:Lcom/google/android/filament/View;

    :cond_5
    return-void
.end method

.method public pause()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 155
    iget-object v2, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;

    .line 156
    invoke-virtual {v2}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->tryPause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshUniform()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 185
    iget-object v2, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;

    .line 186
    invoke-virtual {v2}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->refresh()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 163
    iget-object v2, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;

    .line 164
    invoke-virtual {v2}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->tryResume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateUniform(Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Lcom/miui/maml/data/Expression;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/filament/CustFrameBuffer;",
            ">;)V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->updateUniform(Z[Lcom/miui/maml/data/Expression;)V

    .line 196
    :cond_0
    iget-object p2, p0, Lcom/miui/maml/elements/filament/CustElement;->mManager:Lcom/miui/maml/ResourceManager;

    iget-object p3, p0, Lcom/miui/maml/elements/filament/CustElement;->mEngine:Lcom/google/android/filament/Engine;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement;->mMaterialInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p1, p2, p3, v0}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->init(Lcom/miui/maml/ResourceManager;Lcom/google/android/filament/Engine;Lcom/google/android/filament/MaterialInstance;)V

    .line 197
    instance-of p2, p1, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;

    if-eqz p2, :cond_1

    .line 198
    move-object p2, p1

    check-cast p2, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;

    invoke-virtual {p2, p4}, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->checkOffscreen(Landroid/util/ArrayMap;)V

    .line 200
    :cond_1
    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->refresh()V

    return-void
.end method
