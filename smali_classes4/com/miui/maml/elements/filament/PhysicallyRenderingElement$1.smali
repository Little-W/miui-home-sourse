.class Lcom/miui/maml/elements/filament/PhysicallyRenderingElement$1;
.super Ljava/lang/Object;
.source "PhysicallyRenderingElement.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;

.field final synthetic val$root:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement$1;->this$0:Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;

    iput-object p2, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement$1;->val$root:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement$1;->this$0:Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;

    invoke-static {v0}, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->access$000(Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;)Lcom/miui/maml/elements/filament/PbrModel;

    move-result-object v0

    if-nez v0, :cond_5

    .line 97
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x203a73

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x21ea37

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Gltf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v2, "Cust"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement$1;->this$0:Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;

    new-instance v1, Lcom/miui/maml/elements/filament/PbrGltf;

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object p0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement$1;->val$root:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2, p0}, Lcom/miui/maml/elements/filament/PbrGltf;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V

    invoke-static {v0, v1}, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->access$002(Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;Lcom/miui/maml/elements/filament/PbrModel;)Lcom/miui/maml/elements/filament/PbrModel;

    goto :goto_1

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement$1;->this$0:Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;

    new-instance v1, Lcom/miui/maml/elements/filament/PbrCust;

    invoke-virtual {v0}, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object p0, p0, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement$1;->val$root:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2, p0}, Lcom/miui/maml/elements/filament/PbrCust;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V

    invoke-static {v0, v1}, Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;->access$002(Lcom/miui/maml/elements/filament/PhysicallyRenderingElement;Lcom/miui/maml/elements/filament/PbrModel;)Lcom/miui/maml/elements/filament/PbrModel;

    :cond_5
    :goto_1
    return-void
.end method
