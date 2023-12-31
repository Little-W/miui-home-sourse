.class Lcom/miui/maml/elements/filament/CustElement$1;
.super Ljava/lang/Object;
.source "CustElement.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/filament/CustElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/filament/CustElement;

.field final synthetic val$root:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/filament/CustElement;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/miui/maml/elements/filament/CustElement$1;->this$0:Lcom/miui/maml/elements/filament/CustElement;

    iput-object p2, p0, Lcom/miui/maml/elements/filament/CustElement$1;->val$root:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/filament/CustElement$1;->val$root:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/CustElement$1;->this$0:Lcom/miui/maml/elements/filament/CustElement;

    invoke-static {v1}, Lcom/miui/maml/elements/filament/CustElement;->access$000(Lcom/miui/maml/elements/filament/CustElement;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/maml/elements/filament/UniformFactory;->createUniform(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;)Lcom/miui/maml/elements/filament/UniformFactory$Uniform;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p0, p0, Lcom/miui/maml/elements/filament/CustElement$1;->this$0:Lcom/miui/maml/elements/filament/CustElement;

    invoke-static {p0}, Lcom/miui/maml/elements/filament/CustElement;->access$100(Lcom/miui/maml/elements/filament/CustElement;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
