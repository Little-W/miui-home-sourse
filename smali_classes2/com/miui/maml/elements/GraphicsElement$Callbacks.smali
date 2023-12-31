.class Lcom/miui/maml/elements/GraphicsElement$Callbacks;
.super Ljava/lang/Object;
.source "GraphicsElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/GraphicsElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callbacks"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "OnDraw"


# instance fields
.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ActionCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 3

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

    .line 620
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 621
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 622
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 623
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 624
    invoke-static {v1, p2}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 626
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 656
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 657
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 638
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 639
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 644
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 645
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public perform()V
    .locals 1

    .line 632
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 633
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->perform()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 650
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 651
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method
