.class Lcom/miui/maml/ActionCommand$AnimationProperty;
.super Lcom/miui/maml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$AnimationProperty$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "animation"


# instance fields
.field private mPlayParams:[Lcom/miui/maml/data/Expression;

.field private mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;


# direct methods
.method protected constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V
    .locals 1

    .line 1360
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/ActionCommand$PropertyCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    const-string p1, "play"

    .line 1361
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1362
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    :cond_0
    const-string p1, "pause"

    .line 1363
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1364
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    :cond_1
    const-string p1, "resume"

    .line 1365
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1366
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    .line 1367
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "play("

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1368
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 1369
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$AnimationProperty;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 1370
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_4

    array-length p2, p1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    array-length p1, p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_4

    const-string p1, "ActionCommand"

    const-string p2, "bad expression format"

    .line 1371
    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1374
    :cond_3
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 17

    move-object/from16 v0, p0

    .line 1380
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    iget-object v2, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    .line 1395
    iget-object v5, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v6, v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-lez v6, :cond_1

    .line 1396
    aget-object v1, v5, v9

    if-nez v1, :cond_0

    move-wide v1, v7

    goto :goto_0

    :cond_0
    aget-object v1, v5, v9

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    :goto_0
    double-to-long v1, v1

    move-wide v11, v1

    goto :goto_1

    :cond_1
    move-wide v11, v1

    .line 1398
    :goto_1
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v2, v1

    const/4 v5, 0x1

    if-le v2, v5, :cond_3

    .line 1399
    aget-object v2, v1, v5

    if-nez v2, :cond_2

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    goto :goto_2

    .line 1400
    :cond_2
    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    :goto_2
    double-to-long v3, v1

    move-wide v13, v3

    goto :goto_3

    :cond_3
    move-wide v13, v3

    .line 1402
    :goto_3
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_6

    .line 1403
    aget-object v2, v1, v3

    if-nez v2, :cond_5

    :cond_4
    move v1, v9

    goto :goto_4

    :cond_5
    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    cmpl-double v1, v1, v7

    if-lez v1, :cond_4

    move v1, v5

    :goto_4
    move v15, v1

    goto :goto_5

    :cond_6
    move v15, v9

    .line 1405
    :goto_5
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_9

    .line 1406
    aget-object v2, v1, v3

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    cmpl-double v1, v1, v7

    if-lez v1, :cond_8

    move v9, v5

    :cond_8
    :goto_6
    move/from16 v16, v9

    goto :goto_7

    :cond_9
    move/from16 v16, v9

    .line 1408
    :goto_7
    iget-object v10, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual/range {v10 .. v16}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_8

    .line 1388
    :pswitch_1
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_8

    .line 1385
    :pswitch_2
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_8

    .line 1382
    :pswitch_3
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->playAnim()V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
