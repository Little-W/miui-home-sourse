.class Lcom/miui/maml/ActionCommand$AnimConfigCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimConfigCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimConfigCommand"


# instance fields
.field private mAttr:Lcom/miui/maml/data/Expression;

.field private mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

.field private mSubName:Lcom/miui/maml/data/Expression;

.field private mValuesExp:[Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 2484
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2485
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "subNameExp"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mSubName:Lcom/miui/maml/data/Expression;

    .line 2486
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "attrExp"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mAttr:Lcom/miui/maml/data/Expression;

    .line 2487
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "valuesExp"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    const-string p1, "command"

    .line 2489
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2490
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x37b5077c

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v0, :cond_2

    const v0, -0x31ffc737    # -5.3780128E8f

    if-eq p2, v0, :cond_1

    const v0, 0x5a5b64d

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "clear"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_1
    const-string p2, "update"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string p2, "remove"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    .line 2501
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    goto :goto_2

    .line 2498
    :cond_4
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    goto :goto_2

    .line 2495
    :cond_5
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    goto :goto_2

    .line 2492
    :cond_6
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    :goto_2
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 5

    .line 2508
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2509
    instance-of v1, v0, Lcom/miui/maml/elements/AnimConfigElement;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2512
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/AnimConfigElement;

    .line 2513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mSubName:Lcom/miui/maml/data/Expression;

    const-string v3, ""

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mSubName:Lcom/miui/maml/data/Expression;

    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2514
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mAttr:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    .line 2515
    :cond_2
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    iget-object v4, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    invoke-virtual {v4}, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 p0, 0x2

    if-eq v2, p0, :cond_4

    const/4 p0, 0x3

    if-eq v2, p0, :cond_3

    goto :goto_1

    .line 2525
    :cond_3
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimConfigElement;->clearConfigData()V

    goto :goto_1

    .line 2522
    :cond_4
    invoke-virtual {v0, v1, v3}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2517
    :cond_5
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_6

    .line 2518
    invoke-virtual {v0, v1, v3, p0}, Lcom/miui/maml/elements/AnimConfigElement;->updateConfigData(Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V

    :cond_6
    :goto_1
    return-void
.end method
