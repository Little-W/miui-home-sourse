.class Lmiuix/animation/internal/AnimRunnerTask;
.super Ljava/lang/Object;
.source "AnimRunnerTask.java"


# static fields
.field static final animDataLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/animation/internal/AnimData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiuix/animation/internal/AnimRunnerTask;->animDataLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doAnimationFrame(Lmiuix/animation/internal/AnimTask;JJZZ)V
    .locals 20

    .line 28
    sget-object v0, Lmiuix/animation/internal/AnimRunnerTask;->animDataLocal:Ljava/lang/ThreadLocal;

    const-class v1, Lmiuix/animation/internal/AnimData;

    invoke-static {v0, v1}, Lmiuix/animation/utils/CommonUtils;->getLocal(Ljava/lang/ThreadLocal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/AnimData;

    .line 29
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 30
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    move-result-wide v10

    move-object/from16 v12, p0

    :goto_0
    if-eqz v12, :cond_6

    .line 32
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    const/4 v2, 0x0

    iput v2, v1, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 33
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    invoke-virtual {v1}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    move-result v1

    const/4 v13, 0x1

    xor-int/lit8 v14, v1, 0x1

    .line 34
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v15, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 35
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    instance-of v9, v1, Lmiuix/animation/ViewTarget;

    .line 41
    iget v1, v12, Lmiuix/animation/internal/AnimTask;->startPos:I

    invoke-virtual {v12}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    move-result v2

    add-int v7, v1, v2

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_5

    .line 42
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lmiuix/animation/listener/UpdateInfo;

    if-nez v5, :cond_0

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    goto/16 :goto_4

    .line 51
    :cond_0
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-object v2, v5, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v2}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v4

    .line 52
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, v5, v1, v4}, Lmiuix/animation/internal/AnimData;->from(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    if-eqz v14, :cond_1

    .line 54
    iget-object v3, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    move-object v1, v12

    move-object v2, v0

    move-object/from16 v16, v5

    move-wide/from16 v5, p1

    move/from16 v17, v7

    move/from16 v18, v8

    move-wide/from16 v7, p3

    invoke-static/range {v1 .. v8}, Lmiuix/animation/internal/AnimRunnerTask;->setup(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/base/AnimSpecialConfig;JJ)V

    goto :goto_2

    :cond_1
    move-object/from16 v16, v5

    move/from16 v17, v7

    move/from16 v18, v8

    .line 56
    :goto_2
    iget-byte v1, v0, Lmiuix/animation/internal/AnimData;->op:B

    if-ne v1, v13, :cond_2

    .line 57
    iget-object v3, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    move-object v1, v12

    move-object v2, v0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-static/range {v1 .. v7}, Lmiuix/animation/internal/AnimRunnerTask;->startAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;JJ)V

    .line 59
    :cond_2
    iget-byte v1, v0, Lmiuix/animation/internal/AnimData;->op:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 60
    iget-object v3, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    move-object v1, v12

    move-object v2, v0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v19, v9

    move-wide v8, v10

    invoke-static/range {v1 .. v9}, Lmiuix/animation/internal/AnimRunnerTask;->updateAnimation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;JJJ)V

    goto :goto_3

    :cond_3
    move/from16 v19, v9

    :goto_3
    move-object/from16 v1, v16

    .line 62
    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimData;->to(Lmiuix/animation/listener/UpdateInfo;)V

    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    if-nez v19, :cond_4

    .line 63
    iget-wide v2, v0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v2

    if-nez v2, :cond_4

    .line 64
    iget-object v2, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v2, v2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v1, v2}, Lmiuix/animation/listener/UpdateInfo;->setTargetValue(Lmiuix/animation/IAnimTarget;)V

    :cond_4
    :goto_4
    add-int/lit8 v8, v18, 0x1

    move/from16 v7, v17

    move/from16 v9, v19

    goto/16 :goto_1

    .line 67
    :cond_5
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimTask;->remove()Lmiuix/animation/utils/LinkNode;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lmiuix/animation/internal/AnimTask;

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private static evaluateValue(Lmiuix/animation/internal/AnimData;F)D
    .locals 4

    .line 257
    iget-object v0, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    invoke-static {v0}, Lmiuix/animation/internal/AnimRunnerTask;->getEvaluator(Lmiuix/animation/property/FloatProperty;)Landroid/animation/TypeEvaluator;

    move-result-object v0

    .line 258
    instance-of v1, v0, Landroid/animation/IntEvaluator;

    if-eqz v1, :cond_0

    .line 259
    check-cast v0, Landroid/animation/IntEvaluator;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    double-to-int v1, v1

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    double-to-int p0, v2

    .line 261
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 259
    invoke-virtual {v0, p1, v1, p0}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    .line 262
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 264
    :cond_0
    check-cast v0, Landroid/animation/FloatEvaluator;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    double-to-float v1, v1

    .line 265
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    double-to-float p0, v2

    .line 266
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 264
    invoke-virtual {v0, p1, v1, p0}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static finishProperty(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V
    .locals 1

    const/4 v0, 0x5

    .line 190
    invoke-virtual {p1, v0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 191
    iget-object p0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget p1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    return-void
.end method

.method private static getEvaluator(Lmiuix/animation/property/FloatProperty;)Landroid/animation/TypeEvaluator;
    .locals 1

    .line 272
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    if-ne p0, v0, :cond_0

    instance-of v0, p0, Lmiuix/animation/property/ColorProperty;

    if-eqz v0, :cond_0

    .line 273
    sget-object p0, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0

    .line 274
    :cond_0
    instance-of p0, p0, Lmiuix/animation/property/IIntValueProperty;

    if-eqz p0, :cond_1

    .line 275
    new-instance p0, Landroid/animation/IntEvaluator;

    invoke-direct {p0}, Landroid/animation/IntEvaluator;-><init>()V

    return-object p0

    .line 277
    :cond_1
    new-instance p0, Landroid/animation/FloatEvaluator;

    invoke-direct {p0}, Landroid/animation/FloatEvaluator;-><init>()V

    return-object p0
.end method

.method private static initAnimation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;JJ)Z
    .locals 5

    .line 141
    invoke-static {p1}, Lmiuix/animation/internal/AnimRunnerTask;->setValues(Lmiuix/animation/internal/AnimData;)Z

    move-result v0

    const-string v1, ", value = "

    const-string v2, ", property = "

    const-string v3, "miuix_anim"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 142
    iget-boolean p2, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz p2, :cond_0

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StartTask, set start value failed, break, tag = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object p3, p3, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 145
    invoke-virtual {p3}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", start value = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, ", target value = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 143
    invoke-static {v3, p2}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimRunnerTask;->finishProperty(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V

    return v4

    .line 154
    :cond_1
    invoke-static {p1}, Lmiuix/animation/internal/AnimRunnerTask;->isValueInvalid(Lmiuix/animation/internal/AnimData;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    iget-boolean p2, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz p2, :cond_2

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StartTask, values invalid, break, tag = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object p3, p3, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 158
    invoke-virtual {p3}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", startValue = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, ", targetValue = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, ", velocity = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-static {v3, p2}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_2
    invoke-virtual {p1}, Lmiuix/animation/internal/AnimData;->reset()V

    .line 166
    iget-wide p2, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->value:D

    .line 167
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimRunnerTask;->finishProperty(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V

    return v4

    :cond_3
    sub-long/2addr p2, p4

    .line 170
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 171
    iput v4, p1, Lmiuix/animation/internal/AnimData;->frameCount:I

    const/4 p0, 0x2

    .line 172
    invoke-virtual {p1, p0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    const/4 p0, 0x1

    return p0
.end method

.method private static isValueInvalid(Lmiuix/animation/internal/AnimData;)Z
    .locals 4

    .line 195
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 196
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4030aaaaa0000000L    # 16.66666603088379

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static regulateProgress(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method private static setStartData(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V
    .locals 3

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p1, Lmiuix/animation/internal/AnimData;->progress:D

    .line 123
    invoke-virtual {p1}, Lmiuix/animation/internal/AnimData;->reset()V

    .line 124
    iget-boolean v0, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++ start anim, target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", property = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 127
    invoke-virtual {p0}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", op = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p1, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", ease = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", delay = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", start value = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ", target value = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ", value = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ", progress = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ", velocity = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p1, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 125
    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static setValues(Lmiuix/animation/internal/AnimData;)Z
    .locals 4

    .line 177
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 178
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    :cond_0
    return v1

    .line 182
    :cond_1
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static setup(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/base/AnimSpecialConfig;JJ)V
    .locals 4

    .line 73
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 75
    iget-object v2, p2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v3, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    invoke-static {v2, v3, v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v0

    iput-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    :cond_0
    sub-long/2addr p4, p6

    .line 77
    iput-wide p4, p1, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 78
    iget-object p6, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget p7, p6, Lmiuix/animation/internal/AnimStats;->initCount:I

    const/4 v0, 0x1

    add-int/2addr p7, v0

    iput p7, p6, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 79
    iget-byte p6, p1, Lmiuix/animation/internal/AnimData;->op:B

    const/4 p7, 0x2

    if-ne p6, p7, :cond_2

    iget-wide p6, p1, Lmiuix/animation/internal/AnimData;->delay:J

    const-wide/16 v1, 0x0

    cmp-long p6, p6, v1

    if-lez p6, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    iput-wide p4, p1, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 87
    iput-wide v1, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 88
    iget-object p2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget p3, p2, Lmiuix/animation/internal/AnimStats;->startCount:I

    sub-int/2addr p3, v0

    iput p3, p2, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 89
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimRunnerTask;->setStartData(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V

    goto :goto_1

    .line 80
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 81
    iget-object p0, p2, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-static {p0, p3}, Lmiuix/animation/internal/AnimConfigUtils;->getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F

    move-result p0

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p2, p0, p2

    if-eqz p2, :cond_3

    float-to-double p2, p0

    .line 83
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->velocity:D

    :cond_3
    :goto_1
    return-void
.end method

.method static startAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;JJ)V
    .locals 6

    .line 95
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->delay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 96
    iget-boolean v0, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartTask, tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", property = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 98
    invoke-virtual {v1}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", delay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", initTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->initTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_0
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->initTime:J

    iget-wide v2, p1, Lmiuix/animation/internal/AnimData;->delay:J

    add-long/2addr v0, v2

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    return-void

    .line 107
    :cond_1
    iget-object p2, p2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v0, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {p2, v0, v1, v2}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v3

    cmpl-double p2, v3, v1

    if-eqz p2, :cond_2

    .line 110
    iput-wide v3, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 114
    :cond_2
    iget-object p2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v0, p2, Lmiuix/animation/internal/AnimStats;->startCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lmiuix/animation/internal/AnimStats;->startCount:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 115
    invoke-static/range {v0 .. v5}, Lmiuix/animation/internal/AnimRunnerTask;->initAnimation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;JJ)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 118
    :cond_3
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimRunnerTask;->setStartData(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V

    return-void
.end method

.method private static updateAnimation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;JJJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    .line 201
    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v3, v2, Lmiuix/animation/internal/AnimStats;->updateCount:I

    const/4 v10, 0x1

    add-int/2addr v3, v10

    iput v3, v2, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 202
    iget v2, v9, Lmiuix/animation/internal/AnimData;->frameCount:I

    add-int/2addr v2, v10

    iput v2, v9, Lmiuix/animation/internal/AnimData;->frameCount:I

    .line 203
    iget-object v2, v9, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v3, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    if-eq v2, v3, :cond_1

    iget-object v2, v9, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v3, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    if-eq v2, v3, :cond_1

    iget-object v2, v9, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    instance-of v2, v2, Lmiuix/animation/property/ColorProperty;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lmiuix/animation/styles/PropertyStyle;->doAnimationFrame(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJJ)V

    .line 220
    iget-object v1, v9, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget v1, v1, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v1}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    iget-wide v1, v9, Lmiuix/animation/internal/AnimData;->progress:D

    double-to-float v1, v1

    invoke-static {v9, v1}, Lmiuix/animation/internal/AnimRunnerTask;->evaluateValue(Lmiuix/animation/internal/AnimData;F)D

    move-result-wide v1

    iput-wide v1, v9, Lmiuix/animation/internal/AnimData;->value:D

    goto :goto_1

    .line 206
    :cond_1
    :goto_0
    iget-wide v11, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 207
    iget-wide v13, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    const-wide/16 v2, 0x0

    .line 208
    iput-wide v2, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 209
    iput-wide v2, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 210
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->progress:D

    iput-wide v2, v9, Lmiuix/animation/internal/AnimData;->value:D

    .line 211
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lmiuix/animation/styles/PropertyStyle;->doAnimationFrame(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJJ)V

    .line 212
    iget-wide v1, v9, Lmiuix/animation/internal/AnimData;->value:D

    double-to-float v1, v1

    invoke-static {v1}, Lmiuix/animation/internal/AnimRunnerTask;->regulateProgress(F)F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v9, Lmiuix/animation/internal/AnimData;->progress:D

    .line 213
    iput-wide v11, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 214
    iput-wide v13, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 215
    sget-object v1, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->progress:D

    double-to-float v2, v2

    iget-wide v3, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    double-to-int v3, v3

    .line 216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 217
    invoke-virtual {v1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v9, Lmiuix/animation/internal/AnimData;->value:D

    .line 224
    :cond_2
    :goto_1
    iget-byte v1, v9, Lmiuix/animation/internal/AnimData;->op:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 225
    iput-boolean v10, v9, Lmiuix/animation/internal/AnimData;->justEnd:Z

    .line 226
    iget-object v1, v0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v2, v1, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v2, v10

    iput v2, v1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 228
    :cond_3
    iget-boolean v1, v9, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v1, :cond_4

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- update anim, target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v2, v2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", info.id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget v2, v2, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v2, v2, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v0, v0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", property = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 232
    invoke-virtual {v0}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", op = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, v9, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", justEnd = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v9, Lmiuix/animation/internal/AnimData;->justEnd:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", init time = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->initTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", start time = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", start value = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", target value = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", value = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", progress = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", velocity = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", delta = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 229
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
