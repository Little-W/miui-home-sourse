.class public Lcom/mi/mibridge/DeviceLevel;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static CPU:I

.field public static GPU:I

.field public static HIGH:I

.field public static IS_MIUI_GO_VERSION:Z

.field public static IS_MIUI_LITE_VERSION:Z

.field public static IS_MIUI_MIDDLE_VERSION:Z

.field public static LOW:I

.field public static MIDDLE:I

.field public static RAM:I

.field public static TOTAL_RAM:I

.field public static UNKNOWN:I

.field public static final a:Ljava/lang/String;

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Ljava/lang/reflect/Method;

.field public static e:Ljava/lang/reflect/Method;

.field public static f:Ljava/lang/reflect/Method;

.field public static g:Ljava/lang/reflect/Method;

.field public static h:Ljava/lang/Class;

.field public static i:Ldalvik/system/PathClassLoader;

.field public static j:Landroid/app/Application;

.field public static k:Landroid/content/Context;

.field public static l:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "getDeviceLevel"

    const-string v1, "DeviceLevelUtils(): newInstance Exception:"

    const-string v2, "DeviceLevel"

    sget-object v3, Lcom/mi/mibridge/MiBridge;->JAR_PATH:Ljava/lang/String;

    sput-object v3, Lcom/mi/mibridge/DeviceLevel;->a:Ljava/lang/String;

    const/4 v3, 0x0

    sput-object v3, Lcom/mi/mibridge/DeviceLevel;->b:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/DeviceLevel;->c:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/DeviceLevel;->d:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/DeviceLevel;->e:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/DeviceLevel;->f:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/DeviceLevel;->g:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/mi/mibridge/DeviceLevel;->l:Ljava/lang/reflect/Constructor;

    sput-object v3, Lcom/mi/mibridge/DeviceLevel;->m:Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ldalvik/system/PathClassLoader;

    sget-object v7, Lcom/mi/mibridge/DeviceLevel;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v6, Lcom/mi/mibridge/DeviceLevel;->i:Ldalvik/system/PathClassLoader;

    const-string v7, "com.miui.performance.DeviceLevelUtils"

    invoke-virtual {v6, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    sput-object v6, Lcom/mi/mibridge/DeviceLevel;->l:Ljava/lang/reflect/Constructor;

    sget-object v6, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "initDeviceLevel"

    :try_start_1
    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/mi/mibridge/DeviceLevel;->b:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    sget-object v7, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    invoke-virtual {v7, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/mi/mibridge/DeviceLevel;->c:Ljava/lang/reflect/Method;

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    sget-object v7, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    invoke-virtual {v7, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/DeviceLevel;->d:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "isSupportPrune"

    :try_start_2
    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/DeviceLevel;->e:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    const-string v6, "DEVICE_LEVEL_FOR_RAM"

    invoke-static {v0, v6}, Lcom/mi/mibridge/DeviceLevel;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mi/mibridge/DeviceLevel;->RAM:I

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    const-string v6, "DEVICE_LEVEL_FOR_CPU"

    invoke-static {v0, v6}, Lcom/mi/mibridge/DeviceLevel;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mi/mibridge/DeviceLevel;->CPU:I

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    const-string v6, "DEVICE_LEVEL_FOR_GPU"

    invoke-static {v0, v6}, Lcom/mi/mibridge/DeviceLevel;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mi/mibridge/DeviceLevel;->GPU:I

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    const-string v6, "LOW_DEVICE"

    invoke-static {v0, v6}, Lcom/mi/mibridge/DeviceLevel;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mi/mibridge/DeviceLevel;->LOW:I

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    const-string v6, "MIDDLE_DEVICE"

    invoke-static {v0, v6}, Lcom/mi/mibridge/DeviceLevel;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mi/mibridge/DeviceLevel;->MIDDLE:I

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    const-string v6, "HIGH_DEVICE"

    invoke-static {v0, v6}, Lcom/mi/mibridge/DeviceLevel;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mi/mibridge/DeviceLevel;->HIGH:I

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    const-string v6, "DEVICE_LEVEL_UNKNOWN"

    invoke-static {v0, v6}, Lcom/mi/mibridge/DeviceLevel;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mi/mibridge/DeviceLevel;->UNKNOWN:I

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    const-string v6, "IS_MIUI_LITE_VERSION"

    invoke-static {v0, v6}, Lcom/mi/mibridge/DeviceLevel;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/mi/mibridge/DeviceLevel;->IS_MIUI_LITE_VERSION:Z

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    const-string v6, "IS_MIUI_GO_VERSION"

    invoke-static {v0, v6}, Lcom/mi/mibridge/DeviceLevel;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/mi/mibridge/DeviceLevel;->IS_MIUI_GO_VERSION:Z

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    const-string v6, "TOTAL_RAM"

    invoke-static {v0, v6}, Lcom/mi/mibridge/DeviceLevel;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/mi/mibridge/DeviceLevel;->TOTAL_RAM:I

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "getMiuiLiteVersion"

    :try_start_3
    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/DeviceLevel;->f:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MiDeviceLevelBridge(): Load Class Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_4
    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;

    const-string v6, "IS_MIUI_MIDDLE_VERSION"

    invoke-static {v0, v6}, Lcom/mi/mibridge/DeviceLevel;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/mi/mibridge/DeviceLevel;->IS_MIUI_MIDDLE_VERSION:Z

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->h:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v6, "getMiuiMiddleVersion"

    :try_start_5
    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/DeviceLevel;->g:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->k:Landroid/content/Context;

    if-nez v0, :cond_0

    :try_start_6
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const-string v6, "currentApplication"

    :try_start_7
    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/mi/mibridge/DeviceLevel;->j:Landroid/app/Application;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/DeviceLevel;->k:Landroid/content/Context;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.app.ActivityThread Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->k:Landroid/content/Context;

    if-nez v0, :cond_1

    :try_start_8
    const-string v0, "android.app.AppGlobals"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    const-string v6, "getInitialApplication"

    :try_start_9
    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/mi/mibridge/DeviceLevel;->j:Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/DeviceLevel;->k:Landroid/content/Context;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.app.AppGlobals Exception:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    :try_start_a
    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->l:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->l:Ljava/lang/reflect/Constructor;

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/mi/mibridge/DeviceLevel;->k:Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/DeviceLevel;->m:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_4
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceLevel(I)I
    .locals 4

    :try_start_0
    sget-object v0, Lcom/mi/mibridge/DeviceLevel;->d:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/mi/mibridge/DeviceLevel;->m:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceLevel failed , e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceLevel"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method
