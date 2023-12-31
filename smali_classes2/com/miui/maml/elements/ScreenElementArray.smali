.class public Lcom/miui/maml/elements/ScreenElementArray;
.super Lcom/miui/maml/elements/ElementGroup;
.source "ScreenElementArray.java"


# static fields
.field private static final DEF_INDEX_VAR_NAME:Ljava/lang/String; = "__i"

.field public static final TAG_NAME:Ljava/lang/String; = "Array"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 5

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    const-string v0, "count"

    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "indexName"

    .line 28
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "__i"

    .line 32
    :cond_0
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElementArray;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    const/4 v1, 0x0

    .line 33
    new-instance v3, Lcom/miui/maml/elements/ScreenElementArray$1;

    invoke-direct {v3, p0, v0, p2, v2}, Lcom/miui/maml/elements/ScreenElementArray$1;-><init>(Lcom/miui/maml/elements/ScreenElementArray;ILcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V

    invoke-static {p1, v1, v3}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method static synthetic access$001(Lcom/miui/maml/elements/ScreenElementArray;Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
