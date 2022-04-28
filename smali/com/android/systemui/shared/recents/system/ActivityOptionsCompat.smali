.class public abstract Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# static fields
.field public static final SPLIT_SCREEN_CREATE_MODE_BOTTOM_OR_RIGHT:I = 0x1

.field public static final SPLIT_SCREEN_CREATE_MODE_TOP_OR_LEFT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCustomAnimation(Landroid/content/Context;)Landroid/app/ActivityOptions;
    .locals 3

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 56
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mOverrideTaskTransition"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
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

    .line 78
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

    .line 81
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v9

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v10

    move-object v1, v6

    .line 77
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

    .line 83
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v6

    :goto_0
    if-nez p1, :cond_0

    .line 86
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v0, 0x5

    .line 87
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 88
    invoke-static {p0}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    :cond_0
    return-object p1
.end method

.method public static makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object p0

    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;
    .locals 2

    .line 41
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x3

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    xor-int/lit8 p0, p0, 0x1

    .line 43
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    return-object v0
.end method

.method public static setSmallWindowRemberLaunch(Landroid/app/ActivityOptions;)V
    .locals 7

    .line 70
    const-class v0, Landroid/app/ActivityOptions;

    const-string v2, "setMiuiConfigFlag"

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x4

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    move-object v1, p0

    .line 70
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
