.class Lcom/miui/maml/ActionCommand$ExternCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ExternCommand"


# instance fields
.field private mCommand:Ljava/lang/String;

.field private mNumParaExp:Lcom/miui/maml/data/Expression;

.field private mStrParaExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 976
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    const-string p1, "command"

    .line 977
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    .line 978
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$ExternCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "numPara"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lcom/miui/maml/data/Expression;

    .line 979
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$ExternCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "strPara"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 6

    .line 984
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$ExternCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    .line 985
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lcom/miui/maml/data/Expression;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 986
    :goto_0
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lcom/miui/maml/data/Expression;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    .line 984
    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/maml/ScreenElementRoot;->issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method
