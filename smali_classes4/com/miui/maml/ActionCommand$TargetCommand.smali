.class abstract Lcom/miui/maml/ActionCommand$TargetCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TargetCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;
    }
.end annotation


# instance fields
.field protected mLogStr:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;

.field protected mTargetIndex:Lcom/miui/maml/data/Expression;

.field protected mTargetName:Ljava/lang/String;

.field protected mTargetNameExp:Lcom/miui/maml/data/Expression;

.field protected mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1573
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 1574
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "targetExp"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lcom/miui/maml/data/Expression;

    .line 1575
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_0

    .line 1576
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "target"

    .line 1578
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1581
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1582
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1585
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "targetIndex"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    const-string p1, "targetType"

    .line 1586
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1587
    sget-object p2, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    const-string p2, "element"

    .line 1588
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1589
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    goto :goto_1

    :cond_2
    const-string p2, "var"

    .line 1590
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1591
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    goto :goto_1

    :cond_3
    const-string p2, "ctor"

    .line 1592
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1593
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 1595
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "target="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {p2}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    return-void
.end method

.method private findTarget()V
    .locals 3

    .line 1599
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "ActionCommand"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 1624
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto :goto_0

    .line 1621
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getAnimationItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto :goto_0

    .line 1613
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1615
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string p0, "MethodCommand, type=var, empty target name"

    .line 1617
    invoke-static {v2, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1602
    :cond_4
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    .line 1603
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not find ScreenElement target, name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1606
    :cond_5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/miui/maml/elements/ElementGroup;->isArrayGroup(Lcom/miui/maml/elements/ScreenElement;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target with index is not an ArrayGroup, name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1609
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method protected getTarget()Ljava/lang/Object;
    .locals 3

    .line 1638
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lcom/miui/maml/data/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1639
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1641
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1642
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object v1

    .line 1644
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1645
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1646
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->findTarget()V

    .line 1650
    :cond_1
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    return-object v1

    .line 1675
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object p0

    .line 1673
    :cond_3
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object p0

    .line 1658
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 1659
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1660
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_6

    .line 1661
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1662
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int p0, v1

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1664
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target with index is not an Array variable, name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActionCommand"

    invoke-static {v2, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    goto :goto_0

    :cond_6
    return-object v0

    :cond_7
    :goto_0
    return-object v1

    .line 1652
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_9

    .line 1653
    check-cast v0, Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/ElementGroup;->getChild(I)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p0

    return-object p0

    .line 1655
    :cond_9
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object p0
.end method

.method public init()V
    .locals 0

    .line 1633
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 1634
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->findTarget()V

    return-void
.end method
