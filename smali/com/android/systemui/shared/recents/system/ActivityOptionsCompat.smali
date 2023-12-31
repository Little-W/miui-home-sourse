.class public abstract Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# static fields
.field public static final SPLIT_SCREEN_CREATE_MODE_BOTTOM_OR_RIGHT:I = 0x1

.field public static final SPLIT_SCREEN_CREATE_MODE_TOP_OR_LEFT:I = 0x0

.field public static final TYPE_RECENTS_ANIMATION:I = 0x4

.field private static sSetFreezeRecentTasksReorderingMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCustomAnimation(Landroid/content/Context;)Landroid/app/ActivityOptions;
    .locals 3

    const/4 v0, 0x0

    .line 75
    invoke-static {p0, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 76
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mOverrideTaskTransition"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static makeFreeformActivityOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 11

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "android.util.MiuiMultiWindowUtils"

    .line 116
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getActivityOptions"

    const-class v3, Landroid/app/ActivityOptions;

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v5, v4, v9

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v5, v4, v10

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v7

    aput-object p1, v5, v8

    .line 119
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v9

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v10

    move-object v1, v6

    .line 115
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityOptions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher"

    const-string v1, "MiuiMultiWindowUtils getActivityOptions error"

    .line 121
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v6

    :goto_0
    if-nez p1, :cond_0

    .line 124
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    .line 125
    invoke-static {p1}, Lmiui/app/ActivityOptionsExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityOptionsExpose;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lmiui/app/ActivityOptionsExpose;->setLaunchWindowingMode(I)V

    .line 126
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    :cond_0
    return-object p1
.end method

.method public static makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object p0

    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;Lcom/android/systemui/shared/system/RemoteTransitionCompat;)Landroid/app/ActivityOptions;
    .locals 8

    .line 68
    const-class v0, Landroid/app/ActivityOptions;

    const-class v3, Landroid/app/ActivityOptions;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    const-class v2, Landroid/view/RemoteAnimationAdapter;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-class v2, Landroid/window/RemoteTransition;

    const/4 v6, 0x1

    aput-object v2, v4, v6

    new-array v7, v1, [Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object p0

    aput-object p0, v7, v5

    .line 71
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getWrapped()Landroid/window/RemoteTransition;

    move-result-object p0

    aput-object p0, v7, v6

    const/4 v1, 0x0

    const-string v2, "makeRemoteAnimation"

    move-object v5, v7

    .line 68
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public static makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;
    .locals 3

    .line 49
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lmiui/app/ActivityOptionsExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityOptionsExpose;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lmiui/app/ActivityOptionsExpose;->setLaunchWindowingMode(I)V

    xor-int/lit8 p0, p0, 0x1

    .line 51
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    return-object v0
.end method

.method public static setFreezeRecentTasksReordering(Landroid/app/ActivityOptions;)V
    .locals 4

    .line 135
    :try_start_0
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->sSetFreezeRecentTasksReorderingMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "android.app.ActivityOptions"

    .line 136
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setFreezeRecentTasksReordering"

    new-array v3, v1, [Ljava/lang/Class;

    .line 137
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->sSetFreezeRecentTasksReorderingMethod:Ljava/lang/reflect/Method;

    .line 139
    :cond_0
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->sSetFreezeRecentTasksReorderingMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setSmallWindowRemberLaunch(Landroid/app/ActivityOptions;)V
    .locals 7

    .line 90
    const-class v0, Landroid/app/ActivityOptions;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x4

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    const-string v2, "setMiuiConfigFlag"

    move-object v1, p0

    move-object v5, v6

    .line 90
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setSourceInfo(Landroid/app/ActivityOptions;IJ)V
    .locals 8

    .line 103
    const-class v0, Landroid/app/ActivityOptions;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v2, v4, v6

    new-array v7, v1, [Ljava/lang/Object;

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    .line 109
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v6

    const-string v2, "setSourceInfo"

    move-object v1, p0

    move-object v5, v7

    .line 103
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setTransientLaunch(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .locals 6

    .line 95
    const-class v0, Landroid/app/ActivityOptions;

    const-class v3, Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v2, "setTransientLaunch"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityOptions;

    return-object p0
.end method
