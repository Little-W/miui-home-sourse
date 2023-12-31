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

    .line 2278
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string p1, "command"

    .line 2279
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "play"

    .line 2280
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2281
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    :cond_0
    const-string v0, "pause"

    .line 2282
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2283
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    :cond_1
    const-string v0, "resume"

    .line 2284
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2285
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    .line 2286
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

    .line 2287
    sget-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 2288
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

    .line 2289
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

    .line 2290
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2293
    :cond_3
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    :cond_4
    :goto_0
    const-string p1, "tags"

    .line 2295
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "."

    .line 2296
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2297
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    goto :goto_1

    .line 2298
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, ","

    .line 2299
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 15

    .line 2305
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimationCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/maml/elements/ScreenElement;

    if-nez v1, :cond_0

    return-void

    .line 2311
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v2, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v2, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    if-ne v0, v2, :cond_3

    .line 2312
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2313
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 2317
    :cond_3
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_e

    const/4 v4, 0x3

    if-eq v0, v4, :cond_d

    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    goto/16 :goto_5

    :cond_4
    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    .line 2332
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v9, v0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    if-lez v9, :cond_6

    .line 2333
    aget-object v5, v0, v12

    if-nez v5, :cond_5

    move-wide v5, v10

    goto :goto_0

    :cond_5
    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    :goto_0
    double-to-long v5, v5

    .line 2335
    :cond_6
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v9, v0

    if-le v9, v2, :cond_8

    .line 2336
    aget-object v7, v0, v2

    if-nez v7, :cond_7

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    goto :goto_1

    .line 2337
    :cond_7
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    :goto_1
    double-to-long v7, v7

    .line 2339
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v9, v0

    if-le v9, v3, :cond_a

    .line 2340
    aget-object v9, v0, v3

    if-nez v9, :cond_9

    goto :goto_2

    :cond_9
    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v13

    cmpl-double v0, v13, v10

    if-lez v0, :cond_a

    move v0, v2

    goto :goto_3

    :cond_a
    :goto_2
    move v0, v12

    .line 2342
    :goto_3
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v3, p0

    if-le v3, v4, :cond_c

    .line 2343
    aget-object v3, p0, v4

    if-nez v3, :cond_b

    goto :goto_4

    :cond_b
    aget-object p0, p0, v4

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    cmpl-double p0, v3, v10

    if-lez p0, :cond_c

    move v12, v2

    :cond_c
    :goto_4
    move-wide v2, v5

    move-wide v4, v7

    move v6, v0

    move v7, v12

    .line 2345
    invoke-virtual/range {v1 .. v7}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_5

    .line 2325
    :cond_d
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_5

    .line 2322
    :cond_e
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_5

    .line 2319
    :cond_f
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->playAnim()V

    :goto_5
    return-void
.end method
