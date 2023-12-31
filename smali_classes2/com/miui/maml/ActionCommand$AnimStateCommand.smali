.class Lcom/miui/maml/ActionCommand$AnimStateCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimStateCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimStateCommand"


# instance fields
.field private mAttrArrayName:Lcom/miui/maml/data/Expression;

.field private mAttrs:[Ljava/lang/String;

.field private mAttrsExp:[Lcom/miui/maml/data/Expression;

.field private mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

.field private mIsAttrsValid:Z

.field private mIsValuesValid:Z

.field private mValueArrayName:Lcom/miui/maml/data/Expression;

.field private mValues:[D

.field private mValuesExp:[Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    .line 2377
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2378
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "valueArrayNameExp"

    .line 2380
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValueArrayName:Lcom/miui/maml/data/Expression;

    const-string v0, "attrArrayNameExp"

    .line 2381
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    const-string v0, "valuesExp"

    .line 2383
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    const-string v0, "attrsExp"

    .line 2384
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    .line 2385
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mIsValuesValid:Z

    .line 2386
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mIsAttrsValid:Z

    .line 2387
    iget-boolean p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mIsAttrsValid:Z

    if-eqz p1, :cond_0

    .line 2388
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 2390
    :cond_0
    iget-boolean p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mIsValuesValid:Z

    if-eqz p1, :cond_1

    .line 2391
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    array-length p1, p1

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    :cond_1
    const-string p1, "command"

    .line 2394
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    .line 2395
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x37b5077c

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const v1, -0x31ffc737    # -5.3780128E8f

    if-eq v0, v1, :cond_3

    const v1, 0x5a5b64d

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p2, v2

    goto :goto_0

    :cond_3
    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    const-string v0, "remove"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p2, v3

    :cond_5
    :goto_0
    if-eqz p2, :cond_8

    if-eq p2, v3, :cond_7

    if-eq p2, v2, :cond_6

    .line 2406
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    goto :goto_1

    .line 2403
    :cond_6
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    goto :goto_1

    .line 2400
    :cond_7
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    goto :goto_1

    .line 2397
    :cond_8
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    :goto_1
    return-void
.end method

.method private remove(Lcom/miui/maml/elements/AnimStateElement;)V
    .locals 4

    .line 2452
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2453
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2455
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2457
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/AnimStateElement;->removeAttr([Ljava/lang/String;)V

    goto :goto_1

    .line 2458
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_2

    .line 2459
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2460
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2461
    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/AnimStateElement;->removeAttr([Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private update(Lcom/miui/maml/elements/AnimStateElement;)V
    .locals 5

    .line 2434
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    if-eqz v1, :cond_1

    array-length v2, v0

    array-length v1, v1

    if-ne v2, v1, :cond_1

    .line 2435
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2437
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2438
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2440
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    invoke-virtual {p1, v0, p0}, Lcom/miui/maml/elements/AnimStateElement;->updateAttr([Ljava/lang/String;[D)V

    goto :goto_1

    .line 2441
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValueArrayName:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_2

    .line 2442
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2443
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValueArrayName:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_2

    .line 2444
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    instance-of v1, p0, [D

    if-eqz v1, :cond_2

    .line 2446
    check-cast v0, [Ljava/lang/String;

    check-cast p0, [D

    invoke-virtual {p1, v0, p0}, Lcom/miui/maml/elements/AnimStateElement;->updateAttr([Ljava/lang/String;[D)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .line 2413
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2414
    instance-of v1, v0, Lcom/miui/maml/elements/AnimStateElement;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2417
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/AnimStateElement;

    .line 2418
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 p0, 0x3

    if-eq v1, p0, :cond_1

    goto :goto_0

    .line 2426
    :cond_1
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimStateElement;->clear()V

    goto :goto_0

    .line 2423
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->remove(Lcom/miui/maml/elements/AnimStateElement;)V

    goto :goto_0

    .line 2420
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->update(Lcom/miui/maml/elements/AnimStateElement;)V

    :cond_4
    :goto_0
    return-void
.end method
