.class public Lcom/miui/maml/elements/ListScreenElement$ListData;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListData"
.end annotation


# instance fields
.field public mColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ListScreenElement$Column;",
            ">;"
        }
    .end annotation
.end field

.field public mList:Lcom/miui/maml/elements/ListScreenElement;

.field public mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/elements/ListScreenElement;)V
    .locals 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    .line 298
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 299
    iput-object p3, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mList:Lcom/miui/maml/elements/ListScreenElement;

    if-eqz p1, :cond_0

    .line 301
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ListScreenElement$ListData;->load(Lorg/w3c/dom/Element;)V

    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "Column"

    .line 306
    new-instance v1, Lcom/miui/maml/elements/ListScreenElement$ListData$1;

    invoke-direct {v1, p0}, Lcom/miui/maml/elements/ListScreenElement$ListData$1;-><init>(Lcom/miui/maml/elements/ListScreenElement$ListData;)V

    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$Column;

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$Column;->finish()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public init()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$Column;

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$Column;->init()V

    goto :goto_0

    :cond_1
    return-void
.end method
