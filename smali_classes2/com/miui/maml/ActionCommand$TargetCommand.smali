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

    .line 1438
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 1439
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "targetExp"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lcom/miui/maml/data/Expression;

    .line 1440
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_0

    .line 1441
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "target"

    .line 1443
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1446
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1447
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1450
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

    .line 1451
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1452
    sget-object p2, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    const-string p2, "element"

    .line 1453
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1454
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    goto :goto_1

    :cond_2
    const-string p2, "var"

    .line 1455
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1456
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    goto :goto_1

    :cond_3
    const-string p2, "ctor"

    .line 1457
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1458
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 1460
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

    .line 1464
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1489
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1486
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getAnimationItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto :goto_0

    .line 1478
    :pswitch_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1480
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "ActionCommand"

    const-string v1, "MethodCommand, type=var, empty target name"

    .line 1482
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1467
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    .line 1468
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string v0, "ActionCommand"

    .line 1470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find ScreenElement target, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1471
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/miui/maml/elements/ElementGroup;->isArrayGroup(Lcom/miui/maml/elements/ScreenElement;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ActionCommand"

    .line 1472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target with index is not an ArrayGroup, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1474
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getTarget()Ljava/lang/Object;
    .locals 4

    .line 1503
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lcom/miui/maml/data/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1504
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1506
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1507
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object v1

    .line 1509
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1510
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1511
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->findTarget()V

    .line 1515
    :cond_1
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    return-object v1

    .line 1540
    :pswitch_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object v0

    .line 1538
    :pswitch_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object v0

    .line 1523
    :pswitch_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 1524
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1525
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_3

    .line 1526
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1527
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "ActionCommand"

    .line 1529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target with index is not an Array variable, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v1

    .line 1517
    :pswitch_3
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_5

    .line 1518
    check-cast v0, Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->getChild(I)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    return-object v0

    .line 1520
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 0

    .line 1498
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 1499
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->findTarget()V

    return-void
.end method
