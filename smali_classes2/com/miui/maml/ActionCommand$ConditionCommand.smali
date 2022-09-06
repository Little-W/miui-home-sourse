.class Lcom/miui/maml/ActionCommand$ConditionCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConditionCommand"
.end annotation


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand;

.field private mCondition:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ActionCommand;Lcom/miui/maml/data/Expression;)V
    .locals 1

    .line 1225
    invoke-virtual {p1}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 1226
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 1227
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCondition:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .line 1237
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCondition:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->perform()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 1232
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->init()V

    return-void
.end method
