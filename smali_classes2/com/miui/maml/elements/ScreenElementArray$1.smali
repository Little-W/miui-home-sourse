.class Lcom/miui/maml/elements/ScreenElementArray$1;
.super Ljava/lang/Object;
.source "ScreenElementArray.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/ScreenElementArray;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/ScreenElementArray;

.field final synthetic val$_root:Lcom/miui/maml/ScreenElementRoot;

.field final synthetic val$count:I

.field final synthetic val$indexVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/ScreenElementArray;ILcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->this$0:Lcom/miui/maml/elements/ScreenElementArray;

    iput p2, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$count:I

    iput-object p3, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$_root:Lcom/miui/maml/ScreenElementRoot;

    iput-object p4, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$indexVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 7

    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->this$0:Lcom/miui/maml/elements/ScreenElementArray;

    const-string v1, "name"

    invoke-virtual {v0, p1, v1}, Lcom/miui/maml/elements/ScreenElementArray;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Var"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 42
    :goto_0
    iget v4, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$count:I

    if-ge v3, v4, :cond_3

    if-eqz v1, :cond_0

    const-string v4, "dontAddToMap"

    const-string v5, "true"

    .line 45
    invoke-interface {p1, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "namesSuffix"

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_1
    iget-object v4, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->this$0:Lcom/miui/maml/elements/ScreenElementArray;

    invoke-static {v4, p1}, Lcom/miui/maml/elements/ScreenElementArray;->access$001(Lcom/miui/maml/elements/ScreenElementArray;Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$_root:Lcom/miui/maml/ScreenElementRoot;

    iget-object v5, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$indexVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-static {v2, v5}, Lcom/miui/maml/elements/ElementGroup;->createArrayGroup(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)Lcom/miui/maml/elements/ElementGroup;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v0}, Lcom/miui/maml/elements/ElementGroup;->setName(Ljava/lang/String;)V

    .line 54
    iget-object v5, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->this$0:Lcom/miui/maml/elements/ScreenElementArray;

    invoke-virtual {v5, v2}, Lcom/miui/maml/elements/ScreenElementArray;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 56
    :cond_1
    invoke-virtual {v2, v4}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
