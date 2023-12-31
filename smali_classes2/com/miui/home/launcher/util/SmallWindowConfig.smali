.class public Lcom/miui/home/launcher/util/SmallWindowConfig;
.super Ljava/lang/Object;
.source "SmallWindowConfig.java"


# static fields
.field private static sHasShellFeature:Z = false

.field private static sSupportFreeFormManager:Z = false

.field private static sSupportMultipleSmallWindows:Z = false

.field private static sSupportMultipleSmallWindowsFeature:Z = false

.field private static sSupportPin:Z = false

.field private static sSupportSmallWindow:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static checkIsPhoneSupportMultiSmallWindowsFeature()Z
    .locals 1

    .line 119
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static checkIsPhoneSupportMultipleSmallWindows()Z
    .locals 8

    const-string v0, "SmallWindowConfig"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.util.MiuiMultiWindowUtils"

    .line 132
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "multiFreeFormSupported"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-static {v2, v3, v4, v6, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIsPhoneSupportMultipleSmallWindows: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "isPhoneSupportMultipleSmallWindows: "

    .line 136
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private static checkIsShellFeature()Z
    .locals 7

    const-string v0, "SmallWindowConfig"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "miui.app.MiuiFreeFormManager"

    .line 156
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "hasMiuiFreeformOnShellFeature"

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsShellFeature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "checkIsShellFeature error"

    .line 159
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method private static checkIsSupportFreeFormManager()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.app.MiuiFreeFormManager"

    .line 103
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "getMiuiFreeformVersion"

    const/4 v4, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SmallWindowConfig"

    const-string v3, "getMiuiFreeformVersion error"

    .line 105
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static checkIsSupportMultipleSmallWindowsFeature()Z
    .locals 1

    .line 87
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->checkIsPhoneSupportMultiSmallWindowsFeature()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 88
    :cond_2
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportFreeFormManager()Z

    move-result v0

    return v0
.end method

.method public static checkIsSupportPin()Z
    .locals 7

    const-string v0, "SmallWindowConfig"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "miui.app.MiuiFreeFormManager"

    .line 145
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "isSupportPin"

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsSupportPin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "checkIsSupportPin error"

    .line 148
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method private static checkIsSupportSmallWindow()Z
    .locals 5

    const-string v0, "SmallWindowConfig"

    const/4 v1, 0x0

    .line 67
    :try_start_0
    sget-boolean v2, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz v2, :cond_0

    const-string v2, "miui.app.MiuiFreeFormManager"

    .line 68
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "supportFreeform"

    new-array v4, v1, [Ljava/lang/Class;

    .line 69
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 70
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const-string v2, "android.view.Display"

    .line 72
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "hasSmallFreeformFeature"

    new-array v4, v1, [Ljava/lang/Class;

    .line 73
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 74
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 76
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsSupportSmallWindow: isSupportSmallWindow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "isSupportSmallWindow: reflect error"

    .line 78
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v1
.end method

.method public static hasShellFeature()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/miui/home/launcher/util/SmallWindowConfig;->sHasShellFeature:Z

    return v0
.end method

.method public static init()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->checkIsSupportSmallWindow()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/util/SmallWindowConfig;->sSupportSmallWindow:Z

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->checkIsSupportFreeFormManager()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/util/SmallWindowConfig;->sSupportFreeFormManager:Z

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->checkIsSupportMultipleSmallWindowsFeature()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/util/SmallWindowConfig;->sSupportMultipleSmallWindowsFeature:Z

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->checkIsPhoneSupportMultipleSmallWindows()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/util/SmallWindowConfig;->sSupportMultipleSmallWindows:Z

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->checkIsSupportPin()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/util/SmallWindowConfig;->sSupportPin:Z

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->checkIsShellFeature()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/util/SmallWindowConfig;->sHasShellFeature:Z

    return-void
.end method

.method public static isSupportFreeFormManager()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/miui/home/launcher/util/SmallWindowConfig;->sSupportFreeFormManager:Z

    return v0
.end method

.method public static isSupportMultipleSmallWindowFeature()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/miui/home/launcher/util/SmallWindowConfig;->sSupportMultipleSmallWindowsFeature:Z

    return v0
.end method

.method public static isSupportMultipleSmallWindows()Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/miui/home/launcher/util/SmallWindowConfig;->sSupportMultipleSmallWindows:Z

    return v0
.end method

.method public static isSupportPin()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/miui/home/launcher/util/SmallWindowConfig;->sSupportPin:Z

    return v0
.end method

.method public static isSupportSmallWindow()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/miui/home/launcher/util/SmallWindowConfig;->sSupportSmallWindow:Z

    return v0
.end method
