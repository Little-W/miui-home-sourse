.class Lcom/miui/maml/elements/VariableArrayElement$Var;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Var"
.end annotation


# instance fields
.field private mConst:Z

.field private mCurrentItemIsExpression:Z

.field private mIndex:I

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;

.field final synthetic this$0:Lcom/miui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 69
    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    if-eqz p3, :cond_1

    const-string v0, "name"

    .line 71
    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    const-string v0, "index"

    .line 72
    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lcom/miui/maml/data/Expression;

    const-string p2, "const"

    .line 73
    invoke-interface {p3, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mConst:Z

    .line 74
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    iget-object p3, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/maml/elements/VariableArrayElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    iget-object p1, p1, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p2, p3, v0, p1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_1
    return-void
.end method

.method private update()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    if-ltz v0, :cond_6

    .line 93
    iget-object v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    invoke-static {v1}, Lcom/miui/maml/elements/VariableArrayElement;->access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    iget v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    if-nez v1, :cond_2

    return-void

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    invoke-static {v1}, Lcom/miui/maml/elements/VariableArrayElement;->access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/VariableArrayElement$Item;

    .line 109
    iget v2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    if-eq v2, v0, :cond_3

    .line 110
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 111
    invoke-virtual {v1}, Lcom/miui/maml/elements/VariableArrayElement$Item;->isExpression()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    iget-object v0, v0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    sget-object v2, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    if-ne v0, v2, :cond_4

    .line 115
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lcom/miui/maml/elements/VariableArrayElement$Item;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    iget-object v0, v0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    sget-object v2, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    if-ne v0, v2, :cond_5

    .line 117
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lcom/miui/maml/elements/VariableArrayElement$Item;->evaluate()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-void

    .line 95
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    iget-object v0, v0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    if-ne v0, v1, :cond_7

    .line 96
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_2

    .line 97
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    iget-object v0, v0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    if-ne v0, v1, :cond_8

    .line 98
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 85
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableArrayElement$Var;->update()V

    return-void
.end method

.method public tick()V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mConst:Z

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableArrayElement$Var;->update()V

    :cond_0
    return-void
.end method
