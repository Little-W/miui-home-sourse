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

    .line 575
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 576
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "nameExp"

    .line 577
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    .line 578
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "name"

    .line 581
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    :goto_0
    const-string v0, "persist"

    .line 584
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    const-string v0, "requestUpdate"

    .line 585
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    const-string v0, "type"

    .line 587
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 588
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 589
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 590
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
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

    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const-string v0, "expression"

    .line 597
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 599
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "index"

    .line 600
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    const-string v0, "values"

    .line 601
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
    .locals 10

    .line 607
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    .line 608
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    .line 609
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 610
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 612
    iput-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    return-void

    .line 614
    :cond_0
    iget-object v5, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 615
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 616
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    iget-object v5, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v6}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    move-result v6

    invoke-direct {v2, v5, v1, v6}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 617
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v1, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 623
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    if-nez v2, :cond_2

    return-void

    .line 627
    :cond_2
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    iget-object v5, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v5}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    const/4 v5, 0x2

    packed-switch v2, :pswitch_data_0

    .line 646
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isNumberOrStringArray()Z

    move-result v2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_b

    .line 647
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_4

    .line 648
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->isNumberArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 649
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

    .line 638
    :pswitch_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 639
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 640
    iget-boolean v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v2, :cond_14

    invoke-virtual {v0, v5}, Lcom/miui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 641
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 629
    :pswitch_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_14

    .line 630
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    .line 631
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v3, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 632
    iget-boolean v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v3, :cond_14

    invoke-virtual {v0, v5}, Lcom/miui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 633
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/miui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_5

    .line 651
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

    .line 654
    :cond_4
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_b

    .line 655
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v2

    .line 656
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    array-length v4, v4

    if-eqz v2, :cond_5

    .line 658
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v4, :cond_5

    .line 659
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    iget-object v9, v9, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    if-eq v8, v9, :cond_6

    .line 660
    :cond_5
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    iget-object v8, v8, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v1, v2, v4, v8}, Lcom/miui/maml/data/Variables;->createArray(Ljava/lang/String;ILjava/lang/Class;)Z

    .line 661
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v8, v4

    invoke-virtual {v1, v8, v9}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 662
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v2

    .line 664
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->isNumberArray()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_0
    if-ge v7, v4, :cond_a

    .line 666
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    aget-object v1, v1, v7

    if-nez v1, :cond_7

    move-wide v8, v5

    goto :goto_1

    .line 667
    :cond_7
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    :goto_1
    invoke-static {v2, v7, v8, v9}, Lcom/miui/maml/data/Variables;->putValueToArr(Ljava/lang/Object;ID)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    if-ge v7, v4, :cond_a

    .line 671
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    aget-object v1, v1, v7

    .line 672
    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    if-nez v1, :cond_9

    move-object v1, v3

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    :goto_3
    aput-object v1, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 675
    :cond_a
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 681
    :cond_b
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_c
    move-object v2, v3

    .line 682
    :goto_4
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v8

    .line 683
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v8, v2}, Lcom/miui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 684
    invoke-virtual {v8, v2}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 686
    :cond_d
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    if-nez v2, :cond_13

    .line 687
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v2

    .line 688
    iget-object v8, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v8, v3}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    if-eqz v2, :cond_e

    .line 690
    instance-of v2, v2, Ljava/lang/reflect/Array;

    if-nez v2, :cond_f

    :cond_e
    if-eqz v3, :cond_10

    instance-of v2, v3, Ljava/lang/reflect/Array;

    if-eqz v2, :cond_10

    :cond_f
    move v7, v4

    .line 692
    :cond_10
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    if-nez v2, :cond_11

    if-eqz v7, :cond_11

    .line 693
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, v1, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_11
    if-eqz v3, :cond_12

    .line 695
    instance-of v1, v3, Ljava/lang/reflect/Array;

    if-eqz v1, :cond_12

    .line 696
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    goto :goto_5

    .line 697
    :cond_12
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v1, :cond_14

    .line 698
    invoke-virtual {v1, v5, v6}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    goto :goto_5

    .line 701
    :cond_13
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 706
    :cond_14
    :goto_5
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    if-eqz v1, :cond_15

    .line 707
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_15
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
