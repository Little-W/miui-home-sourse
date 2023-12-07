.class public Lmiuix/animation/internal/PredictTask;
.super Ljava/lang/Object;
.source "PredictTask.java"


# static fields
.field private static final sCreator:Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lmiuix/animation/internal/PredictTask$1;

    invoke-direct {v0}, Lmiuix/animation/internal/PredictTask$1;-><init>()V

    sput-object v0, Lmiuix/animation/internal/PredictTask;->sCreator:Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static predictDuration(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)J
    .locals 9

    .line 37
    new-instance v0, Lmiuix/animation/internal/TransitionInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiuix/animation/internal/TransitionInfo;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 38
    sget-object p0, Lmiuix/animation/internal/PredictTask;->sCreator:Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;

    invoke-virtual {v0, p0}, Lmiuix/animation/internal/TransitionInfo;->initUpdateList(Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;)V

    const/4 p0, 0x1

    .line 39
    invoke-virtual {v0, p0}, Lmiuix/animation/internal/TransitionInfo;->setupTasks(Z)V

    .line 40
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    move-result-wide p0

    move-wide p2, p0

    .line 43
    :goto_0
    iget-object v1, v0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/AnimTask;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-wide v2, p2

    move-wide v4, p0

    .line 44
    invoke-static/range {v1 .. v7}, Lmiuix/animation/internal/AnimRunnerTask;->doAnimationFrame(Lmiuix/animation/internal/AnimTask;JJZZ)V

    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {v0}, Lmiuix/animation/internal/TransitionInfo;->getAnimStats()Lmiuix/animation/internal/AnimStats;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    add-long/2addr p2, p0

    goto :goto_0

    :cond_1
    return-wide p2
.end method

.method public static predictNextValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfig;)D
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 58
    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v2

    .line 59
    invoke-virtual/range {p1 .. p1}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    invoke-static {v3, v2}, Lmiuix/animation/internal/AnimConfigUtils;->getEase(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v3

    .line 61
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v14

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, v4}, Lmiuix/animation/internal/AnimManager;->getTransitionInfos(Ljava/util/List;)V

    .line 66
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/animation/internal/TransitionInfo;

    .line 67
    invoke-virtual {v5, v1}, Lmiuix/animation/internal/TransitionInfo;->containsProperty(Lmiuix/animation/property/FloatProperty;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    iget-object v4, v5, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-static {v4, v1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v4, :cond_5

    .line 72
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v5

    invoke-virtual {v5}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double v11, v5, v7

    .line 73
    iget v5, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v5}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    iget v5, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v5}, Lmiuix/animation/styles/PropertyStyle;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    move-result-object v5

    .line 75
    iget-object v6, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v6, v6, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    invoke-static {v6, v7}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v6

    if-eqz v6, :cond_2

    return-wide v0

    .line 79
    :cond_2
    iget-object v0, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    const/4 v1, 0x0

    aget-wide v7, v0, v1

    iget-object v0, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    const/4 v2, 0x1

    aget-wide v9, v0, v2

    const/4 v0, 0x2

    new-array v13, v0, [D

    iget-object v0, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    move-wide/from16 p0, v11

    iget-wide v11, v0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    aput-wide v11, v13, v1

    float-to-double v0, v3

    aput-wide v0, v13, v2

    move-object v4, v5

    move-wide v5, v14

    move-wide/from16 v2, p0

    move-wide v11, v2

    invoke-interface/range {v4 .. v13}, Lmiuix/animation/physics/PhysicsOperator;->updateVelocity(DDDD[D)D

    move-result-wide v4

    add-double/2addr v14, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v14, v4

    mul-double/2addr v14, v2

    add-double/2addr v0, v14

    goto :goto_1

    :cond_3
    move-wide v5, v11

    .line 85
    check-cast v2, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 86
    invoke-static {v2}, Lmiuix/animation/utils/EaseManager;->getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v1, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v9, v1, Lmiuix/animation/internal/AnimInfo;->startTime:J

    sub-long/2addr v7, v9

    double-to-long v5, v5

    add-long/2addr v7, v5

    .line 88
    iget-wide v5, v2, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    cmp-long v1, v7, v5

    if-gez v1, :cond_4

    long-to-float v1, v7

    .line 89
    iget-wide v2, v2, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    float-to-double v0, v0

    goto :goto_1

    .line 91
    :cond_4
    iget-object v0, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    :cond_5
    :goto_1
    return-wide v0
.end method

.method public static predictNextVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfig;)D
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 101
    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v2

    .line 102
    invoke-virtual/range {p1 .. p1}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    invoke-static {v3, v2}, Lmiuix/animation/internal/AnimConfigUtils;->getEase(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    .line 103
    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v3

    .line 104
    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v5

    .line 105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, v4}, Lmiuix/animation/internal/AnimManager;->getTransitionInfos(Ljava/util/List;)V

    .line 109
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/animation/internal/TransitionInfo;

    .line 110
    invoke-virtual {v7, v1}, Lmiuix/animation/internal/TransitionInfo;->containsProperty(Lmiuix/animation/property/FloatProperty;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 111
    iget-object v4, v7, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-static {v4, v1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v4, :cond_3

    .line 115
    iget v7, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v7}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 116
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v7

    invoke-virtual {v7}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    move-result-wide v7

    long-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double v11, v7, v9

    .line 117
    iget v7, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v7}, Lmiuix/animation/styles/PropertyStyle;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    move-result-object v7

    .line 118
    iget-object v8, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v8, v8, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    invoke-static {v8, v9}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v8

    if-eqz v8, :cond_2

    return-wide v0

    .line 121
    :cond_2
    iget-object v0, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    const/4 v1, 0x0

    aget-wide v8, v0, v1

    iget-object v0, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    const/4 v2, 0x1

    aget-wide v13, v0, v2

    const/4 v0, 0x2

    new-array v0, v0, [D

    iget-object v4, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    move-wide p0, v11

    iget-wide v10, v4, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    aput-wide v10, v0, v1

    float-to-double v3, v3

    aput-wide v3, v0, v2

    move-object v4, v7

    move-wide v7, v8

    move-wide v9, v13

    move-wide v11, p0

    move-object v13, v0

    invoke-interface/range {v4 .. v13}, Lmiuix/animation/physics/PhysicsOperator;->updateVelocity(DDDD[D)D

    move-result-wide v0

    :cond_3
    return-wide v0
.end method
