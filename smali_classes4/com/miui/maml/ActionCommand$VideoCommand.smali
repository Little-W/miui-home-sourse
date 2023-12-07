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
    .locals 4

    .line 2836
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2837
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$VideoCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "command"

    .line 2838
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    .line 2839
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mPath:Lcom/miui/maml/data/Expression;

    const-string v1, "volume"

    .line 2840
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mVolume:Lcom/miui/maml/data/Expression;

    const-string v1, "scaleMode"

    .line 2841
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mScaleMode:Lcom/miui/maml/data/Expression;

    const-string v1, "loop"

    .line 2842
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mLooping:Lcom/miui/maml/data/Expression;

    const-string v1, "time"

    .line 2843
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mTime:Lcom/miui/maml/data/Expression;

    .line 2845
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 p2, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "setVolume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, p2

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

    move p1, v3

    goto :goto_1

    :sswitch_3
    const-string p1, "seekTo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_4
    const-string p1, "config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, p2, :cond_1

    .line 2862
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_2

    .line 2859
    :cond_1
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_2

    .line 2856
    :cond_2
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_2

    .line 2853
    :cond_3
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_2

    .line 2850
    :cond_4
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    goto :goto_2

    .line 2847
    :cond_5
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_4
        -0x3603e4ed -> :sswitch_3
        0x348b34 -> :sswitch_2
        0x65825f6 -> :sswitch_1
        0x27f73e1c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public doPerform()V
    .locals 8

    .line 2869
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$VideoCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2870
    instance-of v1, v0, Lcom/miui/maml/elements/video/VideoElement;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2873
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/video/VideoElement;

    .line 2875
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 2897
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mLooping:Lcom/miui/maml/data/Expression;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 2898
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_2

    move v3, v2

    .line 2900
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mScaleMode:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_3

    .line 2901
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v2, v1

    .line 2903
    :cond_3
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mPath:Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_4

    .line 2904
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-string p0, ""

    .line 2906
    :goto_0
    invoke-virtual {v0, v3, v2, p0}, Lcom/miui/maml/elements/video/VideoElement;->config(ZILjava/lang/String;)V

    goto :goto_1

    .line 2888
    :cond_5
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mVolume:Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_9

    .line 2889
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/video/VideoElement;->setVolume(F)V

    goto :goto_1

    .line 2883
    :cond_6
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mTime:Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_9

    .line 2884
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/video/VideoElement;->seekTo(I)V

    goto :goto_1

    .line 2880
    :cond_7
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/VideoElement;->pause()V

    goto :goto_1

    .line 2877
    :cond_8
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/VideoElement;->play()V

    :cond_9
    :goto_1
    return-void
.end method
