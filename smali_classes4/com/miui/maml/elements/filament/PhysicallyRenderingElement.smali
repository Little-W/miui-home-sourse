.class public Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;
.super Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;
.source "PhysicallyRenderingElement.java"

# interfaces
.implements Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;


# static fields
.field private static final TAGS:[Ljava/lang/String;

.field private static final TAG_CUST:Ljava/lang/String; = "Cust"

.field private static final TAG_GLTF:Ljava/lang/String; = "Gltf"

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

    .line 20
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;)Lcom/miui/maml/elements/filament/PbrModel;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;Lcom/miui/maml/elements/filament/PbrModel;)Lcom/miui/maml/elements/filament/PbrModel;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    return-object p1
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, "viewType"

    .line 86
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mViewType:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mViewType:Ljava/lang/String;

    const-string v1, "surface"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mView:Landroid/view/View;

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mView:Landroid/view/View;

    .line 94
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->TAGS:[Ljava/lang/String;

    new-instance v1, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement$1;-><init>(Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;Lcom/miui/maml/ScreenElementRoot;)V

    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method public createRealPbrElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;
    .locals 0

    .line 115
    new-instance p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object p0
.end method

.method protected doTick(J)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->doTick(J)V

    .line 74
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/filament/PbrModel;->render(J)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->finish()V

    .line 43
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/PbrModel;->finish()V

    :cond_0
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mView:Landroid/view/View;

    return-object p0
.end method

.method public init()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->init()V

    .line 35
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    if-eqz v0, :cond_0

    .line 36
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/filament/PbrModel;->init(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->pause()V

    .line 51
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/PbrModel;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->resume()V

    .line 59
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/PbrModel;->resume()V

    :cond_0
    return-void
.end method

.method public updateUniform(Ljava/lang/String;Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;)V
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->mModel:Lcom/miui/maml/elements/filament/PbrModel;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/miui/maml/elements/filament/PbrCust;

    if-eqz v0, :cond_0

    .line 67
    check-cast p0, Lcom/miui/maml/elements/filament/PbrCust;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/PbrCust;->updateUniform(Ljava/lang/String;Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;)V

    :cond_0
    return-void
.end method
