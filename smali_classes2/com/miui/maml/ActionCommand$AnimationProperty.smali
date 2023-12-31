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

    .line 1500
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/ActionCommand$PropertyCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    const-string p1, "play"

    .line 1501
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1502
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    :cond_0
    const-string p1, "pause"

    .line 1503
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1504
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    :cond_1
    const-string p1, "resume"

    .line 1505
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1506
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    .line 1507
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

    .line 1508
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 1509
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

    .line 1510
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_4

    array-length p1, p0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    array-length p0, p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_4

    const-string p0, "ActionCommand"

    const-string p1, "bad expression format"

    .line 1511
    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1514
    :cond_3
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 20

    move-object/from16 v0, p0

    .line 1520
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    iget-object v2, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    const/4 v3, 0x2

    if-eq v1, v3, :cond_b

    const/4 v4, 0x3

    if-eq v1, v4, :cond_a

    const/4 v5, 0x4

    if-eq v1, v5, :cond_0

    goto/16 :goto_5

    :cond_0
    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    .line 1535
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v9, v1

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    if-lez v9, :cond_2

    .line 1536
    aget-object v5, v1, v12

    if-nez v5, :cond_1

    move-wide v5, v10

    goto :goto_0

    :cond_1
    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    :goto_0
    double-to-long v5, v5

    :cond_2
    move-wide v14, v5

    .line 1538
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v5, v1

    if-le v5, v2, :cond_4

    .line 1539
    aget-object v5, v1, v2

    if-nez v5, :cond_3

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    goto :goto_1

    .line 1540
    :cond_3
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    :goto_1
    double-to-long v7, v5

    :cond_4
    move-wide/from16 v16, v7

    .line 1542
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v5, v1

    if-le v5, v3, :cond_7

    .line 1543
    aget-object v5, v1, v3

    if-nez v5, :cond_6

    :cond_5
    move v1, v12

    goto :goto_2

    :cond_6
    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    cmpl-double v1, v5, v10

    if-lez v1, :cond_5

    move v1, v2

    :goto_2
    move/from16 v18, v1

    goto :goto_3

    :cond_7
    move/from16 v18, v12

    .line 1545
    :goto_3
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    array-length v3, v1

    if-le v3, v4, :cond_9

    .line 1546
    aget-object v3, v1, v4

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    cmpl-double v1, v3, v10

    if-lez v1, :cond_9

    move v12, v2

    :cond_9
    :goto_4
    move/from16 v19, v12

    .line 1548
    iget-object v13, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual/range {v13 .. v19}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_5

    .line 1528
    :cond_a
    iget-object v0, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_5

    .line 1525
    :cond_b
    iget-object v0, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_5

    .line 1522
    :cond_c
    iget-object v0, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->playAnim()V

    :goto_5
    return-void
.end method
