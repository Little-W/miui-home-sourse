.class public Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "PhysicallyBasedRenderingElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PhysicallyBasedRendering"

.field private static final TAGS:[Ljava/lang/String;

.field private static final TAG_CUST:Ljava/lang/String; = "Cust"

.field private static final TAG_GLTF:Ljava/lang/String; = "Gltf"

.field public static final TAG_NAME:Ljava/lang/String; = "Pbr"

.field private static final VIEW_TYPE_SURFACE:Ljava/lang/String; = "surface"

.field private static final VIEW_TYPE_TEXTURE:Ljava/lang/String; = "texture"


# instance fields
.field private mModel:Lcom/miui/maml/elements/filament/PbrModel;

.field private mView:Landroid/view/View;

.field private mViewType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Cust"

    const-string v1, "Gltf"

    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;)Lcom/miui/maml/elements/filament/PbrModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;Lcom/miui/maml/elements/filament/PbrModel;)Lcom/miui/maml/elements/filament/PbrModel;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    return-object p1
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, "viewType"

    .line 91
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mViewType:Ljava/lang/String;

    const-string v0, "surface"

    .line 92
    iget-object v1, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mViewType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mView:Landroid/view/View;

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mView:Landroid/view/View;

    .line 99
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->TAGS:[Ljava/lang/String;

    new-instance v1, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$1;-><init>(Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;Lcom/miui/maml/ScreenElementRoot;)V

    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .locals 1

    .line 78
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTick(J)V

    .line 79
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/filament/PbrModel;->render(J)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->finish()V

    .line 48
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/PbrModel;->finish()V

    :cond_0
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mView:Landroid/view/View;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 39
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->init()V

    .line 40
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/filament/PbrModel;->init(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->pause()V

    .line 56
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/PbrModel;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->resume()V

    .line 64
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/PbrModel;->resume()V

    :cond_0
    return-void
.end method

.method public updateUniform(Ljava/lang/String;Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/maml/elements/filament/PbrCust;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Lcom/miui/maml/elements/filament/PbrCust;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/PbrCust;->updateUniform(Ljava/lang/String;Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;)V

    :cond_0
    return-void
.end method
