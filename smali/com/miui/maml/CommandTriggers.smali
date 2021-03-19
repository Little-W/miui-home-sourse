.class public Lcom/miui/maml/CommandTriggers;
.super Ljava/lang/Object;
.source "CommandTriggers.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CommandTriggers"

.field public static final TAG_NAME:Ljava/lang/String; = "Triggers"


# instance fields
.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/CommandTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/CommandTriggers;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 4

    .line 66
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 67
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 68
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 69
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 70
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Trigger"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/miui/maml/CommandTrigger;

    invoke-direct {v3, v1, p2}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/maml/CommandTrigger;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/CommandTrigger;

    .line 58
    invoke-virtual {v1, p1}, Lcom/miui/maml/CommandTrigger;->isAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public finish()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/CommandTrigger;

    .line 36
    invoke-virtual {v1}, Lcom/miui/maml/CommandTrigger;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/CommandTrigger;

    .line 30
    invoke-virtual {v1}, Lcom/miui/maml/CommandTrigger;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAction(Ljava/lang/String;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/CommandTrigger;

    .line 24
    invoke-virtual {v1, p1}, Lcom/miui/maml/CommandTrigger;->onAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/CommandTrigger;

    .line 42
    invoke-virtual {v1}, Lcom/miui/maml/CommandTrigger;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/CommandTrigger;

    .line 48
    invoke-virtual {v1}, Lcom/miui/maml/CommandTrigger;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method
