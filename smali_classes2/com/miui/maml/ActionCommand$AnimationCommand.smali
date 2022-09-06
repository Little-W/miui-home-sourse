.class Lcom/miui/maml/ActionCommand$AnimationCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimationCommand"


# instance fields
.field private mAllAni:Z

.field private mAniTags:[Ljava/lang/String;

.field private mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field private mPlayParams:[Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    .line 2143
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string p1, "command"

    .line 2144
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "play"

    .line 2145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2146
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    :cond_0
    const-string v0, "pause"

    .line 2147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2148
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    :cond_1
    const-string v0, "resume"

    .line 2149
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2150
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    .line 2151
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "play("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2152
    sget-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 2153
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimationCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 2154
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    array-length p1, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const-string p1, "ActionCommand"

    const-string v0, "bad expression format"

    .line 2155
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2158
    :cond_3
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    :cond_4
    :goto_0
    const-string p1, "tags"

    .line 2160
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "."

    .line 2161
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2162
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    goto :goto_1

    .line 2163
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, ","

    .line 2164
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 13

    .line 2170
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimationCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/maml/elements/ScreenElement;

    if-nez v1, :cond_0

    return-void

    .line 2176
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v2, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v2, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    if-ne v0, v2, :cond_3

    .line 2177
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2178
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 2182
    :cond_3
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    .line 2197
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v6, v0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-lez v6, :cond_5

    .line 2198
    aget-object v2, v0, v9

    if-nez v2, :cond_4

    move-wide v2, v7

    goto :goto_0

    :cond_4
    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    :goto_0
    double-to-long v2, v2

    .line 2200
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v6, v0

    const/4 v10, 0x1

    if-le v6, v10, :cond_7

    .line 2201
    aget-object v4, v0, v10

    if-nez v4, :cond_6

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    goto :goto_1

    .line 2202
    :cond_6
    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    :goto_1
    double-to-long v4, v4

    .line 2204
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v6, v0

    const/4 v11, 0x2

    if-le v6, v11, :cond_a

    .line 2205
    aget-object v6, v0, v11

    if-nez v6, :cond_9

    :cond_8
    move v0, v9

    goto :goto_2

    :cond_9
    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v11

    cmpl-double v0, v11, v7

    if-lez v0, :cond_8

    move v0, v10

    :goto_2
    move v6, v0

    goto :goto_3

    :cond_a
    move v6, v9

    .line 2207
    :goto_3
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v11, v0

    const/4 v12, 0x3

    if-le v11, v12, :cond_d

    .line 2208
    aget-object v11, v0, v12

    if-nez v11, :cond_b

    goto :goto_4

    :cond_b
    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v11

    cmpl-double v0, v11, v7

    if-lez v0, :cond_c

    move v9, v10

    :cond_c
    :goto_4
    move v7, v9

    goto :goto_5

    :cond_d
    move v7, v9

    .line 2210
    :goto_5
    invoke-virtual/range {v1 .. v7}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_6

    .line 2190
    :pswitch_1
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_6

    .line 2187
    :pswitch_2
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_6

    .line 2184
    :pswitch_3
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->playAnim()V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
