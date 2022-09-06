.class Lcom/miui/maml/ActionCommand$MultiCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "MultiCommand"

.field public static final TAG_NAME1:Ljava/lang/String; = "GroupCommand"


# instance fields
.field protected mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ActionCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 3237
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 3234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    .line 3239
    new-instance v0, Lcom/miui/maml/ActionCommand$MultiCommand$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/ActionCommand$MultiCommand$1;-><init>(Lcom/miui/maml/ActionCommand$MultiCommand;Lcom/miui/maml/elements/ScreenElement;)V

    const/4 p1, 0x0

    invoke-static {p2, p1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 2

    .line 3278
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 3279
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->perform()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 3257
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 3258
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 3250
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 3251
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 3264
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 3265
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 3271
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 3272
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method
