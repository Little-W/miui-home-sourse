.class Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableAssignmentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"


# instance fields
.field private mArrayValues:[Lcom/miui/maml/data/Expression;

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mLengthVar:Lcom/miui/maml/data/IndexedVariable;

.field private mName:Ljava/lang/String;

.field private mNameExp:Lcom/miui/maml/data/Expression;

.field private mPersist:Z

.field private mRequestUpdate:Z

.field private mType:Lcom/miui/maml/data/VariableType;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 809
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 810
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "nameExp"

    .line 811
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    .line 812
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "name"

    .line 815
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    :goto_0
    const-string v0, "persist"

    .line 818
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    const-string v0, "requestUpdate"

    .line 819
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    const-string v0, "type"

    .line 821
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 822
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 823
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 824
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 825
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_1

    :cond_1
    const-string v0, "ActionCommand"

    const-string v1, "empty name in VariableAssignmentCommand"

    .line 828
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v0, "expression"

    .line 831
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 833
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "index"

    .line 834
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    const-string v0, "values"

    .line 835
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    :cond_3
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 11

    .line 841
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    .line 842
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    .line 843
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    const-string v3, ".length"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 844
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    .line 845
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 846
    iput-object v4, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    return-void

    .line 848
    :cond_0
    iget-object v6, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 849
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 850
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    iget-object v6, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v7}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    move-result v7

    invoke-direct {v2, v6, v1, v7}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 851
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 852
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v1, v5}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 857
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    if-nez v2, :cond_2

    return-void

    .line 861
    :cond_2
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    iget-object v6, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v6}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v6

    aget v2, v2, v6

    const/4 v6, 0x2

    if-eq v2, v5, :cond_17

    if-eq v2, v6, :cond_16

    const/4 v6, 0x3

    if-eq v2, v6, :cond_15

    const/4 v6, 0x4

    if-eq v2, v6, :cond_14

    .line 889
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isNumberOrStringArray()Z

    move-result v2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_b

    .line 890
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_4

    .line 891
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->isNumberArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 892
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->setArr(ID)Z

    goto/16 :goto_5

    .line 894
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto/16 :goto_5

    .line 897
    :cond_4
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_b

    .line 898
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v2

    .line 899
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    array-length v3, v3

    if-eqz v2, :cond_5

    .line 901
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v3, :cond_5

    .line 902
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    iget-object v9, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    iget-object v9, v9, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    if-eq v5, v9, :cond_6

    .line 903
    :cond_5
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    iget-object v5, v5, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3, v5}, Lcom/miui/maml/data/Variables;->createArray(Ljava/lang/String;ILjava/lang/Class;)Z

    .line 904
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v9, v3

    invoke-virtual {v1, v9, v10}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 905
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v2

    .line 907
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->isNumberArray()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_0
    if-ge v8, v3, :cond_a

    .line 909
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    aget-object v1, v1, v8

    if-nez v1, :cond_7

    move-wide v4, v6

    goto :goto_1

    .line 910
    :cond_7
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    :goto_1
    invoke-static {v2, v8, v4, v5}, Lcom/miui/maml/data/Variables;->putValueToArr(Ljava/lang/Object;ID)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    if-ge v8, v3, :cond_a

    .line 914
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    aget-object v1, v1, v8

    .line 915
    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    if-nez v1, :cond_9

    move-object v1, v4

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    :goto_3
    aput-object v1, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 918
    :cond_a
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 924
    :cond_b
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_c
    move-object v2, v4

    .line 925
    :goto_4
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v9

    .line 926
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v9, v2}, Lcom/miui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 927
    invoke-virtual {v9, v2}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 929
    :cond_d
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    if-nez v2, :cond_13

    .line 930
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v2

    .line 931
    iget-object v9, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v9, v4}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    if-eqz v2, :cond_e

    .line 933
    instance-of v2, v2, Ljava/lang/reflect/Array;

    if-nez v2, :cond_f

    :cond_e
    if-eqz v4, :cond_10

    instance-of v2, v4, Ljava/lang/reflect/Array;

    if-eqz v2, :cond_10

    :cond_f
    move v8, v5

    .line 935
    :cond_10
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    if-nez v2, :cond_11

    if-eqz v8, :cond_11

    .line 936
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v5}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_11
    if-eqz v4, :cond_12

    .line 938
    instance-of v1, v4, Ljava/lang/reflect/Array;

    if-eqz v1, :cond_12

    .line 939
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    goto :goto_5

    .line 940
    :cond_12
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v1, :cond_18

    .line 941
    invoke-virtual {v1, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    goto :goto_5

    .line 944
    :cond_13
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2, v4}, Lcom/miui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto :goto_5

    .line 884
    :cond_14
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    move-result-object v1

    .line 885
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_5

    .line 879
    :cond_15
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 880
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_5

    .line 872
    :cond_16
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 873
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 874
    iget-boolean v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v2, :cond_18

    invoke-virtual {v0, v6}, Lcom/miui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 875
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 863
    :cond_17
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_18

    .line 864
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    .line 865
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v3, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 866
    iget-boolean v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v3, :cond_18

    invoke-virtual {v0, v6}, Lcom/miui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 867
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/miui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    .line 949
    :cond_18
    :goto_5
    iget-boolean p0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    if-eqz p0, :cond_19

    .line 950
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_19
    return-void
.end method
