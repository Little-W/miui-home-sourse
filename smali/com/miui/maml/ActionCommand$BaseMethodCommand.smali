.class abstract Lcom/miui/maml/ActionCommand$BaseMethodCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseMethodCommand"
.end annotation


# static fields
.field protected static final ERROR_EXCEPTION:I = -0x2

.field protected static final ERROR_NO_METHOD:I = -0x1

.field protected static final ERROR_SUCCESS:I = 0x1


# instance fields
.field protected mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

.field private mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

.field protected mParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected mParamValues:[Ljava/lang/Object;

.field private mParams:[Lcom/miui/maml/data/Expression;

.field protected mReturnVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected mTargetClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    .line 2602
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string p1, "class"

    .line 2603
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 2604
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2605
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    :cond_0
    const-string p1, "params"

    .line 2609
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2610
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    const-string p1, "paramTypes"

    .line 2611
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2612
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    .line 2613
    invoke-static {p1, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2615
    :try_start_0
    invoke-static {p1}, Lcom/miui/maml/util/ReflectionHelper;->strTypesToClass([Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 2616
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    array-length p1, p1

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    array-length v1, v1

    if-eq p1, v1, :cond_1

    const-string p1, "ActionCommand"

    .line 2617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "different length of params and paramTypes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 2619
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "ActionCommand"

    .line 2622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "invalid method paramTypes. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 2624
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    :cond_1
    :goto_0
    const-string p1, "return"

    .line 2628
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2629
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "returnType"

    .line 2630
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;

    move-result-object v0

    .line 2631
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    move-result v0

    invoke-direct {v1, p1, v2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_2
    const-string p1, "errorVar"

    .line 2633
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2634
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 2635
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2638
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", class="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {p2}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mLogStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 2676
    invoke-super {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->finish()V

    const/4 v0, 0x0

    .line 2677
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    return-void
.end method

.method public init()V
    .locals 5

    .line 2643
    invoke-super {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->init()V

    .line 2645
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 2646
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    if-nez v1, :cond_0

    .line 2647
    array-length v0, v0

    new-array v0, v0, [Lcom/miui/maml/ActionCommand$ObjVar;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    :cond_0
    const/4 v0, 0x0

    .line 2649
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 2650
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2651
    aget-object v1, v1, v0

    .line 2652
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 2655
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 2657
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 2658
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2659
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    new-instance v3, Lcom/miui/maml/ActionCommand$ObjVar;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/miui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    aput-object v3, v2, v0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2665
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2667
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "ActionCommand"

    .line 2669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target class not found, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method protected prepareParams()V
    .locals 8

    .line 2681
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_d

    .line 2682
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 2683
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2685
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v3, v2

    if-ge v1, v3, :cond_d

    .line 2686
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 2687
    iget-object v5, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    aget-object v5, v5, v1

    .line 2688
    aget-object v2, v2, v1

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 2691
    :cond_1
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_2

    .line 2692
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    goto/16 :goto_2

    .line 2693
    :cond_2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_3

    .line 2694
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v4, v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    goto/16 :goto_2

    .line 2695
    :cond_3
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_4

    .line 2696
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    goto/16 :goto_2

    .line 2697
    :cond_4
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_6

    .line 2698
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    goto/16 :goto_2

    .line 2699
    :cond_6
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_7

    .line 2700
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v3, v1

    goto :goto_2

    .line 2701
    :cond_7
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_8

    .line 2702
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    goto :goto_2

    .line 2703
    :cond_8
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_9

    .line 2704
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v4, v4

    long-to-int v2, v4

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v3, v1

    goto :goto_2

    .line 2705
    :cond_9
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_a

    .line 2706
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v4, v4

    long-to-int v2, v4

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v3, v1

    goto :goto_2

    .line 2707
    :cond_a
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_b

    .line 2708
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v4, v4

    long-to-int v2, v4

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v3, v1

    goto :goto_2

    .line 2710
    :cond_b
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    aget-object v2, v2, v1

    .line 2711
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    move-result-object v4

    :cond_c
    aput-object v4, v3, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method
