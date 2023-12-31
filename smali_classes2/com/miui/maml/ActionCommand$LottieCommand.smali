.class Lcom/miui/maml/ActionCommand$LottieCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LottieCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "LottieCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

.field private mIsParamsValid:Z

.field private mParams:[Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 3495
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string p1, "params"

    .line 3496
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3497
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$LottieCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 3498
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mParams:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$LottieCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mIsParamsValid:Z

    .line 3499
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mIsParamsValid:Z

    if-nez v0, :cond_0

    .line 3500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LottieCommand"

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/maml/ActionCommand$LottieCommand;->parseCommand(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private parseCommand(Lorg/w3c/dom/Element;)V
    .locals 1

    const-string v0, "command"

    .line 3558
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3559
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "setSpeed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "playSegments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "goToAndStop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "goToAndPlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v0, "setLoopCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 3585
    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->SET_LOOP_COUNT:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mCommand:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    goto :goto_2

    .line 3582
    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->PLAY_SEGMENTS:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mCommand:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    goto :goto_2

    .line 3579
    :pswitch_2
    sget-object p1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->GOTO_AND_STOP:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mCommand:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    goto :goto_2

    .line 3576
    :pswitch_3
    sget-object p1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->GOTO_AND_PLAY:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mCommand:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    goto :goto_2

    .line 3573
    :pswitch_4
    sget-object p1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->SET_SPEED:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mCommand:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    goto :goto_2

    .line 3570
    :pswitch_5
    sget-object p1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->STOP:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mCommand:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    goto :goto_2

    .line 3567
    :pswitch_6
    sget-object p1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mCommand:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    goto :goto_2

    .line 3564
    :pswitch_7
    sget-object p1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mCommand:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    goto :goto_2

    .line 3561
    :pswitch_8
    sget-object p1, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mCommand:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x59e6ad77 -> :sswitch_8
        -0x4b3bd958 -> :sswitch_7
        -0x4b3a5c8a -> :sswitch_6
        -0x37b237d3 -> :sswitch_5
        0x348b34 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x65825f6 -> :sswitch_2
        0x1529c2f4 -> :sswitch_1
        0x53b4c105 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected doPerform()V
    .locals 6

    .line 3508
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$LottieCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3509
    instance-of v1, v0, Lcom/miui/maml/elements/lottie/LottieScreenElement;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 3512
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/lottie/LottieScreenElement;

    .line 3513
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$LottieCommand$CommandType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mCommand:Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$LottieCommand$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 3547
    :pswitch_0
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mIsParamsValid:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v1, p0

    if-ne v1, v3, :cond_1

    .line 3548
    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->setLoopCount(I)V

    goto/16 :goto_0

    .line 3542
    :pswitch_1
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mIsParamsValid:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 3543
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int p0, v2

    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->playSegments(II)V

    goto :goto_0

    .line 3537
    :pswitch_2
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mIsParamsValid:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v1, p0

    if-ne v1, v3, :cond_1

    .line 3538
    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->goToAndStop(I)V

    goto :goto_0

    .line 3532
    :pswitch_3
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mIsParamsValid:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v1, p0

    if-ne v1, v3, :cond_1

    .line 3533
    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->goToAndPlay(I)V

    goto :goto_0

    .line 3527
    :pswitch_4
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mIsParamsValid:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$LottieCommand;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v1, p0

    if-ne v1, v3, :cond_1

    .line 3528
    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->setSpeed(F)V

    goto :goto_0

    .line 3524
    :pswitch_5
    invoke-virtual {v0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->stopAnimation()V

    goto :goto_0

    .line 3521
    :pswitch_6
    invoke-virtual {v0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->resumeAnimation()V

    goto :goto_0

    .line 3518
    :pswitch_7
    invoke-virtual {v0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->pauseAnimation()V

    goto :goto_0

    .line 3515
    :pswitch_8
    invoke-virtual {v0}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->playAnimation()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
