.class Lcom/miui/maml/util/IntentInfo$Extra;
.super Ljava/lang/Object;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/IntentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Extra"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Extra"


# instance fields
.field private mCondition:Lcom/miui/maml/data/Expression;

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field protected mType:Lcom/miui/maml/util/IntentInfo$Type;

.field final synthetic this$0:Lcom/miui/maml/util/IntentInfo;


# direct methods
.method public constructor <init>(Lcom/miui/maml/util/IntentInfo;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->this$0:Lcom/miui/maml/util/IntentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object p1, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 53
    invoke-direct {p0, p2}, Lcom/miui/maml/util/IntentInfo$Extra;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 3

    const-string v0, "TaskVariable"

    if-nez p1, :cond_0

    const-string p0, "node is null"

    .line 58
    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "name"

    .line 62
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mName:Ljava/lang/String;

    const-string v1, "type"

    .line 64
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->STRING:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    goto :goto_1

    :cond_1
    const-string v2, "int"

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "integer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "long"

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->LONG:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    goto :goto_1

    :cond_3
    const-string v2, "float"

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->FLOAT:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    goto :goto_1

    :cond_4
    const-string v2, "double"

    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 74
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    goto :goto_1

    :cond_5
    const-string v2, "boolean"

    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 76
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->BOOLEAN:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    goto :goto_1

    .line 68
    :cond_6
    :goto_0
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->INT:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 79
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->this$0:Lcom/miui/maml/util/IntentInfo;

    invoke-static {v1}, Lcom/miui/maml/util/IntentInfo;->access$000(Lcom/miui/maml/util/IntentInfo;)Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "expression"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    .line 80
    iget-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    if-nez v1, :cond_8

    const-string v1, "invalid expression in IntentCommand"

    .line 81
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->this$0:Lcom/miui/maml/util/IntentInfo;

    invoke-static {v0}, Lcom/miui/maml/util/IntentInfo;->access$000(Lcom/miui/maml/util/IntentInfo;)Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "condition"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mCondition:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method public getDouble()D
    .locals 2

    .line 94
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getString()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isConditionTrue()Z
    .locals 5

    .line 104
    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mCondition:Lcom/miui/maml/data/Expression;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p0, v1, v3

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
