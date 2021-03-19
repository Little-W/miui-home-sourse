.class Lcom/miui/maml/data/RootExpression$VarVersionVisitor;
.super Lcom/miui/maml/data/ExpressionVisitor;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarVersionVisitor"
.end annotation


# instance fields
.field private mRoot:Lcom/miui/maml/data/RootExpression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/RootExpression;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/miui/maml/data/ExpressionVisitor;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lcom/miui/maml/data/RootExpression;

    return-void
.end method


# virtual methods
.method public visit(Lcom/miui/maml/data/Expression;)V
    .locals 4

    .line 47
    instance-of v0, p1, Lcom/miui/maml/data/Expression$VariableExpression;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/miui/maml/data/Expression$VariableExpression;

    .line 50
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression$VariableExpression;->evaluate()D

    .line 51
    iget-object v1, p0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lcom/miui/maml/data/RootExpression;

    new-instance v2, Lcom/miui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression$VariableExpression;->getIndex()I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression$VariableExpression;->getVersion()I

    move-result v0

    instance-of p1, p1, Lcom/miui/maml/data/Expression$NumberVariableExpression;

    invoke-direct {v2, v3, v0, p1}, Lcom/miui/maml/data/RootExpression$VarVersion;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Lcom/miui/maml/data/RootExpression;->addVarVersion(Lcom/miui/maml/data/RootExpression$VarVersion;)V

    goto :goto_0

    .line 53
    :cond_0
    instance-of v0, p1, Lcom/miui/maml/data/Expression$FunctionExpression;

    if-eqz v0, :cond_2

    .line 54
    check-cast p1, Lcom/miui/maml/data/Expression$FunctionExpression;

    .line 55
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression$FunctionExpression;->getFunName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rand"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "preciseeval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lcom/miui/maml/data/RootExpression;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/maml/data/RootExpression;->access$002(Lcom/miui/maml/data/RootExpression;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
