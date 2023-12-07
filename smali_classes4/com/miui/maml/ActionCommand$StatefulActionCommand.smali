.class abstract Lcom/miui/maml/ActionCommand$StatefulActionCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StatefulActionCommand"
.end annotation


# instance fields
.field private mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    .line 102
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 103
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method protected final updateState(I)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-double v1, p1

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    return-void
.end method
