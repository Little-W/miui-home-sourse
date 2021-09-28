.class public Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;
.super Ljava/lang/Object;
.source "SpringAnimationReflectUtils.java"


# static fields
.field private static sEndAnimationInternalMethod:Ljava/lang/reflect/Method;

.field private static sEndRequestField:Ljava/lang/reflect/Field;

.field private static sGetValueThresholdMethod:Ljava/lang/reflect/Method;

.field private static sPendingPositionField:Ljava/lang/reflect/Field;

.field private static sSetValueThresholdMethod:Ljava/lang/reflect/Method;

.field private static sStartAnimationInternalMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static animateToFinalPosition(Landroidx/dynamicanimation/animation/SpringAnimation;F)V
    .locals 2

    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sPendingPositionField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 98
    const-class v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    const-string v1, "mPendingPosition"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sPendingPositionField:Ljava/lang/reflect/Field;

    .line 100
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sPendingPositionField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sPendingPositionField:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 107
    :cond_2
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 108
    invoke-static {p0}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->start(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SpringAnimationReflectUtils"

    const-string v0, "animateToFinalPosition error"

    .line 111
    :goto_0
    return-void
.end method

.method public static cancel(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 6

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sEndAnimationInternalMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 83
    const-class v0, Landroidx/dynamicanimation/animation/DynamicAnimation;

    const-string v3, "endAnimationInternal"

    .line 84
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sEndAnimationInternalMethod:Ljava/lang/reflect/Method;

    .line 85
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sEndAnimationInternalMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 87
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sEndAnimationInternalMethod:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpringAnimationReflectUtils"

    const-string v1, "cancel error"

    .line 90
    :cond_1
    :goto_0
    return-void
.end method

.method public static end(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 3

    .line 65
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sEndRequestField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 68
    const-class v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    const-string v2, "mEndRequested"

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sEndRequestField:Ljava/lang/reflect/Field;

    .line 70
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sEndRequestField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sEndRequestField:Ljava/lang/reflect/Field;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpringAnimationReflectUtils"

    const-string v1, "end error"

    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method private static resetForceValueThreshold(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 7

    .line 32
    :try_start_0
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sSetValueThresholdMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "setValueThreshold"

    .line 35
    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sSetValueThresholdMethod:Ljava/lang/reflect/Method;

    .line 36
    sget-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sSetValueThresholdMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 38
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sGetValueThresholdMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 39
    const-class v1, Landroidx/dynamicanimation/animation/DynamicAnimation;

    const-string v4, "getValueThreshold"

    .line 40
    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sGetValueThresholdMethod:Ljava/lang/reflect/Method;

    .line 41
    sget-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sGetValueThresholdMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 43
    :cond_1
    sget-object v1, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sSetValueThresholdMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sGetValueThresholdMethod:Ljava/lang/reflect/Method;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpringAnimationReflectUtils"

    const-string v1, "resetForceValueThreshold error"

    .line 45
    :goto_0
    return-void
.end method

.method public static start(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 25
    invoke-static {p0}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->resetForceValueThreshold(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    .line 26
    invoke-static {p0}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->startAnimationInternal(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    :cond_0
    return-void
.end method

.method private static startAnimationInternal(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 4

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sStartAnimationInternalMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 53
    const-class v0, Landroidx/dynamicanimation/animation/DynamicAnimation;

    const-string v2, "startAnimationInternal"

    .line 54
    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sStartAnimationInternalMethod:Ljava/lang/reflect/Method;

    .line 55
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sStartAnimationInternalMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 57
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->sStartAnimationInternalMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SpringAnimationReflectUtils"

    const-string v1, "startAnimationInternal error"

    .line 60
    :cond_1
    :goto_0
    return-void
.end method
