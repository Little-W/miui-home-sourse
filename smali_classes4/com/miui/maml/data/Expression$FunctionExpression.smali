.class public Lcom/miui/maml/data/Expression$FunctionExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionExpression"
.end annotation


# static fields
.field protected static sFunMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/data/Expression$FunctionImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

.field private mFunName:Ljava/lang/String;

.field private mParaExps:[Lcom/miui/maml/data/Expression;

.field private mVariables:Lcom/miui/maml/data/Variables;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 814
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 816
    invoke-static {}, Lcom/miui/maml/data/FunctionsLoader;->load()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;[Lcom/miui/maml/data/Expression;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 819
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 820
    iput-object p1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    .line 821
    iput-object p2, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 822
    iput-object p3, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFunName:Ljava/lang/String;

    .line 823
    invoke-direct {p0, p3}, Lcom/miui/maml/data/Expression$FunctionExpression;->parseFunction(Ljava/lang/String;)V

    return-void
.end method

.method private parseFunction(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 844
    sget-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/Expression$FunctionImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 845
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid function:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 847
    iput-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 848
    iget-object p0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    array-length p0, p0

    iget v0, v0, Lcom/miui/maml/data/Expression$FunctionImpl;->params:I

    if-lt p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parameters count not matching for function: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    return-void
.end method

.method public static registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V
    .locals 1

    .line 827
    sget-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/data/Expression$FunctionImpl;

    if-eqz p1, :cond_0

    .line 829
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duplicated function name registation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Expression"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static removeFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V
    .locals 0

    .line 834
    sget-object p1, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static resetFunctions()V
    .locals 2

    .line 838
    sget-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 839
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/data/Expression$FunctionImpl;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression$FunctionImpl;->reset()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .locals 3

    .line 873
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    const/4 v0, 0x0

    .line 874
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 875
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public evaluate()D
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    iget-object p0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluateJsonArray()Lorg/json/JSONArray;
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    iget-object p0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateJsonArray([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public evaluateJsonObject()Lorg/json/JSONObject;
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    iget-object p0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateJsonObject([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    iget-object p0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunName()Ljava/lang/String;
    .locals 0

    .line 880
    iget-object p0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFunName:Ljava/lang/String;

    return-object p0
.end method
