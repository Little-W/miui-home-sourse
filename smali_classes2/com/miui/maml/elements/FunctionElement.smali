.class public Lcom/miui/maml/elements/FunctionElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "FunctionElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Function"


# instance fields
.field private enable:Z

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
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 51
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    const/4 p2, 0x1

    .line 52
    iput-boolean p2, p0, Lcom/miui/maml/elements/FunctionElement;->enable:Z

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/FunctionElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/FunctionElement;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    return-object p0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 63
    new-instance v1, Lcom/miui/maml/elements/FunctionElement$1;

    invoke-direct {v1, p0}, Lcom/miui/maml/elements/FunctionElement$1;-><init>(Lcom/miui/maml/elements/FunctionElement;)V

    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    .line 120
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 121
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 96
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 97
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 104
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 105
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public perform()V
    .locals 3

    .line 78
    iget-boolean v0, p0, Lcom/miui/maml/elements/FunctionElement;->enable:Z

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 81
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->perform()V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/miui/maml/elements/FunctionElement;->enable:Z

    const-string v0, "Function"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/elements/FunctionElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 112
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 113
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method
