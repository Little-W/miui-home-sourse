.class Lcom/miui/maml/ActionCommand$VideoCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VideoCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

.field private mLooping:Lcom/miui/maml/data/Expression;

.field private mPath:Lcom/miui/maml/data/Expression;

.field private mScaleMode:Lcom/miui/maml/data/Expression;

.field private mTime:Lcom/miui/maml/data/Expression;

.field private mVolume:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 2696
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2697
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$VideoCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "command"

    .line 2698
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    .line 2699
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mPath:Lcom/miui/maml/data/Expression;

    const-string v1, "volume"

    .line 2700
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mVolume:Lcom/miui/maml/data/Expression;

    const-string v1, "scaleMode"

    .line 2701
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mScaleMode:Lcom/miui/maml/data/Expression;

    const-string v1, "loop"

    .line 2702
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mLooping:Lcom/miui/maml/data/Expression;

    const-string v1, "time"

    .line 2703
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mTime:Lcom/miui/maml/data/Expression;

    .line 2705
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "setVolume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string p1, "pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const-string p1, "play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string p1, "seekTo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string p1, "config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 2722
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_2

    .line 2719
    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_2

    .line 2716
    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_2

    .line 2713
    :pswitch_2
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_2

    .line 2710
    :pswitch_3
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_2

    .line 2707
    :pswitch_4
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_4
        -0x3603e4ed -> :sswitch_3
        0x348b34 -> :sswitch_2
        0x65825f6 -> :sswitch_1
        0x27f73e1c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doPerform()V
    .locals 9

    .line 2729
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$VideoCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2730
    instance-of v1, v0, Lcom/miui/maml/elements/video/VideoElement;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2733
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/video/VideoElement;

    .line 2735
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, ""

    .line 2757
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mLooping:Lcom/miui/maml/data/Expression;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 2758
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v2, v5, v7

    if-lez v2, :cond_1

    move v4, v3

    .line 2760
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mScaleMode:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_2

    .line 2761
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v3, v2

    .line 2763
    :cond_2
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mPath:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_3

    .line 2764
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 2766
    :cond_3
    invoke-virtual {v0, v4, v3, v1}, Lcom/miui/maml/elements/video/VideoElement;->config(ZILjava/lang/String;)V

    goto :goto_0

    .line 2748
    :pswitch_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mVolume:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_4

    .line 2749
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/VideoElement;->setVolume(F)V

    goto :goto_0

    .line 2743
    :pswitch_2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mTime:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_4

    .line 2744
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/VideoElement;->seekTo(I)V

    goto :goto_0

    .line 2740
    :pswitch_3
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/VideoElement;->pause()V

    goto :goto_0

    .line 2737
    :pswitch_4
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/VideoElement;->play()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
