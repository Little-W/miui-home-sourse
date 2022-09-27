.class Lcom/miui/maml/ActionCommand$ActionPerformCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionPerformCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ActionCommand"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 2533
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string p1, "action"

    .line 2534
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    .line 2535
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2536
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    .line 2537
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "actionExp"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mActionExp:Lcom/miui/maml/data/Expression;

    :cond_0
    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 2

    .line 2543
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/ScreenElement;

    if-nez v0, :cond_0

    return-void

    .line 2547
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2548
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    goto :goto_0

    .line 2549
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mActionExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_2

    .line 2550
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2552
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
