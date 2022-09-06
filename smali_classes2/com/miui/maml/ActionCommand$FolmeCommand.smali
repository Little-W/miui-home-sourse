.class Lcom/miui/maml/ActionCommand$FolmeCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolmeCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$FolmeCommand$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

.field private mConfig:Lcom/miui/maml/data/Expression;

.field private mIsParamsValid:Z

.field private mIsStatesValid:Z

.field private mParams:[Lcom/miui/maml/data/Expression;

.field private mStates:[Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 2418
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2420
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "params"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 2421
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "states"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 2422
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "config"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mConfig:Lcom/miui/maml/data/Expression;

    .line 2423
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mParams:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand$FolmeCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsParamsValid:Z

    .line 2424
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand$FolmeCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    const-string p1, "command"

    .line 2426
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2427
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x5185d186

    if-eq p2, v0, :cond_3

    const v0, -0x4b77203b

    if-eq p2, v0, :cond_2

    const/16 v0, 0xe7b

    if-eq p2, v0, :cond_1

    const v0, 0x684367d

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "setTo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string p2, "to"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string p2, "fromTo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    const-string p2, "cancel"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 2441
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    goto :goto_2

    .line 2438
    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    goto :goto_2

    .line 2435
    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    goto :goto_2

    .line 2432
    :pswitch_2
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    goto :goto_2

    .line 2429
    :pswitch_3
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private folmeCancel(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 1

    .line 2471
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    .line 2472
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mParams:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeCancel([Lcom/miui/maml/data/Expression;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2474
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeCancel([Lcom/miui/maml/data/Expression;)V

    :goto_0
    return-void
.end method

.method private folmeFromTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 3

    .line 2462
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2463
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 2464
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 2465
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mConfig:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2466
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private folmeSetTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 2

    .line 2455
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2456
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 2457
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeSetTo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private folmeTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 2

    .line 2447
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 2448
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 2449
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mConfig:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2450
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeTo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .line 2480
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2481
    instance-of v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2484
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 2485
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2496
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeCancel(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    goto :goto_0

    .line 2493
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeFromTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    goto :goto_0

    .line 2490
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeSetTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    goto :goto_0

    .line 2487
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
