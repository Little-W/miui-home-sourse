.class public Lcom/miui/maml/elements/filament/PbrCust;
.super Lcom/miui/maml/elements/filament/PbrModel;
.source "PbrCust.java"


# static fields
.field private static final TAGS:[Ljava/lang/String;

.field private static final TAG_FINAL:Ljava/lang/String; = "Final"

.field private static final TAG_OFFSCREEN:Ljava/lang/String; = "Offscreen"


# instance fields
.field private mFinal:Lcom/miui/maml/elements/filament/CustFinal;

.field private mFrameBuffers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/filament/CustFrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mModelViewer:Lcom/miui/maml/elements/filament/CustModelViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Offscreen"

    const-string v1, "Final"

    .line 20
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/elements/filament/PbrCust;->TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/elements/filament/PbrModel;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V

    .line 23
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFrameBuffers:Landroid/util/ArrayMap;

    .line 28
    invoke-static {}, Lcom/miui/maml/elements/filament/FilamentManager;->getInstance()Lcom/miui/maml/elements/filament/FilamentManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/maml/elements/filament/FilamentManager;->load()V

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/miui/maml/elements/filament/PbrCust;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/filament/PbrCust;)Landroid/util/ArrayMap;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFrameBuffers:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/filament/PbrCust;)Lcom/miui/maml/elements/filament/CustFinal;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFinal:Lcom/miui/maml/elements/filament/CustFinal;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/maml/elements/filament/PbrCust;Lcom/miui/maml/elements/filament/CustFinal;)Lcom/miui/maml/elements/filament/CustFinal;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFinal:Lcom/miui/maml/elements/filament/CustFinal;

    return-object p1
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 118
    sget-object v0, Lcom/miui/maml/elements/filament/PbrCust;->TAGS:[Ljava/lang/String;

    new-instance v1, Lcom/miui/maml/elements/filament/PbrCust$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/maml/elements/filament/PbrCust$1;-><init>(Lcom/miui/maml/elements/filament/PbrCust;Lcom/miui/maml/ScreenElementRoot;)V

    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mEngine:Lcom/google/android/filament/Engine;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFrameBuffers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mModelViewer:Lcom/miui/maml/elements/filament/CustModelViewer;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mModelViewer:Lcom/miui/maml/elements/filament/CustModelViewer;

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/CustModelViewer;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    :cond_1
    invoke-static {}, Lcom/miui/maml/elements/filament/FilamentManager;->getInstance()Lcom/miui/maml/elements/filament/FilamentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/FilamentManager;->releaseEngine()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mEngine:Lcom/google/android/filament/Engine;

    return-void
.end method

.method public init(Landroid/view/View;)V
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mEngine:Lcom/google/android/filament/Engine;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/miui/maml/elements/filament/FilamentManager;->getInstance()Lcom/miui/maml/elements/filament/FilamentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/FilamentManager;->acquireEngine()Lcom/google/android/filament/Engine;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mEngine:Lcom/google/android/filament/Engine;

    .line 37
    :cond_0
    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/miui/maml/elements/filament/CustModelViewer;

    move-object v1, p1

    check-cast v1, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/PbrCust;->mEngine:Lcom/google/android/filament/Engine;

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/filament/CustModelViewer;-><init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mModelViewer:Lcom/miui/maml/elements/filament/CustModelViewer;

    goto :goto_0

    .line 39
    :cond_1
    instance-of v0, p1, Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Lcom/miui/maml/elements/filament/CustModelViewer;

    move-object v1, p1

    check-cast v1, Landroid/view/TextureView;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/PbrCust;->mEngine:Lcom/google/android/filament/Engine;

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/filament/CustModelViewer;-><init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mModelViewer:Lcom/miui/maml/elements/filament/CustModelViewer;

    .line 42
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFrameBuffers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 44
    iget-object v2, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFrameBuffers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/filament/CustFrameBuffer;

    .line 45
    iget-object v3, p0, Lcom/miui/maml/elements/filament/PbrCust;->mEngine:Lcom/google/android/filament/Engine;

    iget-object v4, p0, Lcom/miui/maml/elements/filament/PbrCust;->mResMgr:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v2, v3, v4, p1}, Lcom/miui/maml/elements/filament/CustFrameBuffer;->init(Lcom/google/android/filament/Engine;Lcom/miui/maml/ResourceManager;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mModelViewer:Lcom/miui/maml/elements/filament/CustModelViewer;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFrameBuffers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/filament/CustModelViewer;->setFrameBuffers(Landroid/util/ArrayMap;)V

    .line 48
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFinal:Lcom/miui/maml/elements/filament/CustFinal;

    if-eqz v0, :cond_4

    .line 49
    iget-object v1, p0, Lcom/miui/maml/elements/filament/PbrCust;->mEngine:Lcom/google/android/filament/Engine;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/PbrCust;->mResMgr:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/maml/elements/filament/CustFinal;->init(Lcom/google/android/filament/Engine;Lcom/miui/maml/ResourceManager;Landroid/view/View;)V

    .line 50
    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrCust;->mModelViewer:Lcom/miui/maml/elements/filament/CustModelViewer;

    iget-object p0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFinal:Lcom/miui/maml/elements/filament/CustFinal;

    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/filament/CustModelViewer;->setFinal(Lcom/miui/maml/elements/filament/CustFinal;)V

    :cond_4
    return-void
.end method

.method public pause()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFrameBuffers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 90
    iget-object v2, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFrameBuffers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/filament/CustFrameBuffer;

    .line 91
    invoke-virtual {v2}, Lcom/miui/maml/elements/filament/CustFrameBuffer;->pause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFinal:Lcom/miui/maml/elements/filament/CustFinal;

    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/CustFinal;->pause()V

    return-void
.end method

.method public render(J)V
    .locals 2

    .line 56
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mModelViewer:Lcom/miui/maml/elements/filament/CustModelViewer;

    if-eqz p0, :cond_0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/filament/CustModelViewer;->render(J)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFrameBuffers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 100
    iget-object v2, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFrameBuffers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/filament/CustFrameBuffer;

    .line 101
    invoke-virtual {v2}, Lcom/miui/maml/elements/filament/CustFrameBuffer;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFinal:Lcom/miui/maml/elements/filament/CustFinal;

    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/CustFinal;->resume()V

    return-void
.end method

.method public updateUniform(Ljava/lang/String;Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFrameBuffers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/filament/CustElement;

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFinal:Lcom/miui/maml/elements/filament/CustFinal;

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/CustFinal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFinal:Lcom/miui/maml/elements/filament/CustFinal;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 113
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PbrCust;->mFrameBuffers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3, p4, p0}, Lcom/miui/maml/elements/filament/CustElement;->updateUniform(Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;Landroid/util/ArrayMap;)V

    :cond_2
    return-void
.end method
