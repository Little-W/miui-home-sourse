.class public Lcom/miui/maml/util/HideSdkDependencyUtils;
.super Ljava/lang/Object;
.source "HideSdkDependencyUtils.java"


# static fields
.field private static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout"

.field private static final SURFACE_CONTROL:Ljava/lang/String; = "android.view.SurfaceControl"

.field private static final TAG:Ljava/lang/String; = "MAML_Reflect"

.field private static final TETHERING_WIFI:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Configuration_getThemeChanged(Landroid/content/res/Configuration;)I
    .locals 3

    const/4 v0, 0x0

    .line 48
    :try_start_0
    const-class v1, Landroid/content/res/Configuration;

    const-string v2, "extraConfig"

    invoke-static {v1, p0, v2}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/MiuiConfiguration;

    if-nez p0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "MAML_Reflect"

    const-string v2, "Invoke | Configuration_getThemeChanged() occur EXCEPTION: "

    .line 51
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static Context_getUserId(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    .line 104
    :try_start_0
    const-class v1, Landroid/content/Context;

    const-string v2, "getUserId"

    new-array v3, v0, [Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "MAML_Reflect"

    const-string v2, "Invoke | Context_getUserId() occur EXCEPTION: "

    .line 106
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static Context_startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 8

    .line 58
    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v1, "startActivityAsUser"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/os/UserHandle;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MAML_Reflect"

    const-string p2, "Invoke | Context_startActivityAsUser() occur EXCEPTION: "

    .line 61
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static Context_startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 7

    .line 67
    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v1, "startServiceAsUser"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "MAML_Reflect"

    const-string p2, "Invoke | Context_startServiceAsUser() occur EXCEPTION: "

    .line 70
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static MemoryFile_getFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;
    .locals 4

    .line 113
    :try_start_0
    const-class v0, Ljava/io/FileDescriptor;

    const-string v1, "getFileDescriptor"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "MAML_Reflect"

    const-string v1, "Invoke | MemoryFile_getFileDescriptor() occur EXCEPTION: "

    .line 115
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static MotionEvent_isTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 228
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "isTouchEvent"

    new-array v3, v0, [Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "MAML_Reflect"

    const-string v2, "Invoke | MotionEvent_isTouchEvent() occur EXCEPTION: "

    .line 230
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static PreloadedAppPolicy_installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.content.pm.PreloadedAppPolicy"

    .line 175
    invoke-static {v1}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 176
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-lt v2, v3, :cond_0

    const-string v2, "installPreloadedDataApp"

    .line 177
    new-array v3, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v3, v0

    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v8

    const-class v9, Landroid/content/pm/IPackageInstallObserver2;

    aput-object v9, v3, v6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v3, v5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v0

    aput-object p1, v7, v8

    new-instance p1, Lcom/miui/maml/util/HideSdkDependencyUtils$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/miui/maml/util/HideSdkDependencyUtils$1;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    aput-object p1, v7, v6

    .line 187
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v5

    .line 177
    invoke-static {v1, v4, v2, v3, v7}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v2, "installPreloadedDataApp"

    .line 189
    new-array v3, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v3, v0

    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v8

    const-class v9, Landroid/content/pm/IPackageInstallObserver;

    aput-object v9, v3, v6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v3, v5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v0

    aput-object p1, v7, v8

    new-instance p1, Lcom/miui/maml/util/HideSdkDependencyUtils$2;

    invoke-direct {p1, p0, p2, p3}, Lcom/miui/maml/util/HideSdkDependencyUtils$2;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    aput-object p1, v7, v6

    .line 195
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v5

    .line 189
    invoke-static {v1, v4, v2, v3, v7}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "MAML_Reflect"

    const-string p2, "Invoke | PreloadedAppPolicy_installPreloadedDataApp() occur EXCEPTION: "

    .line 198
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static SettingsSecure_UI_NIGHT_MODE()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 253
    :try_start_0
    const-class v1, Landroid/provider/Settings$Secure;

    const-string v2, "UI_NIGHT_MODE"

    invoke-static {v1, v0, v2}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "MAML_Reflect"

    const-string v3, "Invoke | SettingsSecure_UI_NIGHT_MODE() occur EXCEPTION: "

    .line 255
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static StorageManager_disableUsbMassStorage(Landroid/os/storage/StorageManager;)V
    .locals 4

    .line 140
    :try_start_0
    const-class v0, Landroid/os/storage/StorageManager;

    const-string v1, "disableUsbMassStorage"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MAML_Reflect"

    const-string v1, "Invoke | StorageManager_disableUsbMassStorage() occur EXCEPTION: "

    .line 142
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static StorageManager_enableUsbMassStorage(Landroid/os/storage/StorageManager;)V
    .locals 4

    .line 132
    :try_start_0
    const-class v0, Landroid/os/storage/StorageManager;

    const-string v1, "enableUsbMassStorage"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MAML_Reflect"

    const-string v1, "Invoke | StorageManager_enableUsbMassStorage() occur EXCEPTION: "

    .line 134
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static StorageManager_isUsbMassStorageEnabled(Landroid/os/storage/StorageManager;)Z
    .locals 5

    const/4 v0, 0x0

    .line 122
    :try_start_0
    const-class v1, Landroid/os/storage/StorageManager;

    const-string v2, "isUsbMassStorageEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "MAML_Reflect"

    const-string v2, "Invoke | StorageManager_isUsbMassStorageEnabled() occur EXCEPTION: "

    .line 124
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static SurfaceControl_closeTransaction()V
    .locals 5

    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 319
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "closeTransaction"

    const/4 v3, 0x0

    .line 320
    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MAML_Reflect"

    const-string v2, "Invoke | SurfaceControl_closeTransaction() occur EXCEPTION: "

    .line 322
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static SurfaceControl_getInstance()Landroid/view/SurfaceControl;
    .locals 3

    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 272
    :try_start_0
    const-class v0, Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MAML_Reflect"

    const-string v2, "Invoke | SurfaceControl_getInstance() occur EXCEPTION: "

    .line 274
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static SurfaceControl_getInstance_with_engine(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/SurfaceControl;
    .locals 3

    .line 396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 398
    :try_start_0
    const-class v0, Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    .line 399
    invoke-static {p0, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->initSurfaceControl(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "MAML_Reflect"

    const-string v1, "Invoke | SurfaceControl_getInstance() occur EXCEPTION: "

    .line 402
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static SurfaceControl_getInstance_with_params(Landroid/view/Surface;Landroid/view/SurfaceControl;Ljava/lang/String;III)Landroid/view/SurfaceControl;
    .locals 16

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.view.SurfaceSession"

    .line 283
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.SurfaceControl"

    .line 284
    invoke-static {v2}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "HIDDEN"

    .line 285
    invoke-static {v2, v1, v3}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 286
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    const/4 v6, 0x7

    const/16 v7, 0x8

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x6

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v4, v5, :cond_0

    .line 287
    new-array v4, v14, [Ljava/lang/Class;

    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 288
    new-array v5, v7, [Ljava/lang/Class;

    aput-object v0, v5, v14

    const-class v0, Ljava/lang/String;

    aput-object v0, v5, v13

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v12

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v11

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v9

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v8

    aput-object v2, v5, v10

    const-class v0, Landroid/util/SparseIntArray;

    aput-object v0, v5, v6

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v4, v0, v14

    aput-object p2, v0, v13

    .line 290
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v11

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    aput-object p1, v0, v10

    aput-object v1, v0, v6

    .line 288
    invoke-static {v2, v5, v0}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    return-object v0

    .line 291
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-ne v4, v5, :cond_1

    .line 292
    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Landroid/view/Surface;

    aput-object v5, v4, v14

    new-array v5, v13, [Ljava/lang/Object;

    aput-object p0, v5, v14

    invoke-static {v0, v4, v5}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x9

    .line 293
    new-array v15, v5, [Ljava/lang/Class;

    aput-object v0, v15, v14

    const-class v0, Ljava/lang/String;

    aput-object v0, v15, v13

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v15, v12

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v15, v11

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v15, v9

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v15, v8

    aput-object v2, v15, v10

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v15, v6

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v15, v7

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v4, v0, v14

    aput-object p2, v0, v13

    .line 295
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v11

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    aput-object p1, v0, v10

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    .line 293
    invoke-static {v2, v15, v0}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    return-object v0

    .line 296
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_3

    .line 297
    :cond_2
    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Landroid/view/Surface;

    aput-object v5, v4, v14

    new-array v5, v13, [Ljava/lang/Object;

    aput-object p0, v5, v14

    invoke-static {v0, v4, v5}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 298
    new-array v5, v10, [Ljava/lang/Class;

    aput-object v0, v5, v14

    const-class v0, Ljava/lang/String;

    aput-object v0, v5, v13

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v12

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v11

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v9

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v8

    new-array v0, v10, [Ljava/lang/Object;

    aput-object v4, v0, v14

    aput-object p2, v0, v13

    .line 300
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v11

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    .line 298
    invoke-static {v2, v5, v0}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "MAML_Reflect"

    const-string v3, "Invoke | SurfaceControl_getInstance_with_params() occur EXCEPTION: "

    .line 303
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object v1
.end method

.method public static SurfaceControl_hide(Landroid/view/SurfaceControl;)V
    .locals 4

    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 359
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "hide"

    const/4 v2, 0x0

    .line 360
    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MAML_Reflect"

    const-string v1, "Invoke | SurfaceControl_hide() occur EXCEPTION: "

    .line 362
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static SurfaceControl_openTransaction()V
    .locals 5

    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 310
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "openTransaction"

    const/4 v3, 0x0

    .line 311
    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MAML_Reflect"

    const-string v2, "Invoke | SurfaceControl_openTransaction() occur EXCEPTION: "

    .line 313
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static SurfaceControl_setBufferSize(Landroid/view/SurfaceControl;II)V
    .locals 7

    .line 346
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v1, :cond_0

    .line 347
    const-class v0, Landroid/view/SurfaceControl;

    const-string v1, "setBufferSize"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0, p0, v1, v5, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    const-string v0, "android.view.SurfaceControl"

    .line 349
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setSize"

    .line 350
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0, p0, v1, v5, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MAML_Reflect"

    const-string p2, "Invoke | SurfaceControl_setBufferSize() occur EXCEPTION: "

    .line 353
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static SurfaceControl_setLayer(Landroid/view/SurfaceControl;I)V
    .locals 6

    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 328
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayer"

    const/4 v2, 0x1

    .line 329
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MAML_Reflect"

    const-string v0, "Invoke | SurfaceControl_setLayer() occur EXCEPTION: "

    .line 331
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static SurfaceControl_setPosition(Landroid/view/SurfaceControl;FF)V
    .locals 7

    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 337
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setPosition"

    const/4 v2, 0x2

    .line 338
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MAML_Reflect"

    const-string p2, "Invoke | SurfaceControl_setPosition() occur EXCEPTION: "

    .line 340
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static SurfaceControl_show(Landroid/view/SurfaceControl;)V
    .locals 4

    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 368
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "show"

    const/4 v2, 0x0

    .line 369
    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v3, v2}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MAML_Reflect"

    const-string v1, "Invoke | SurfaceControl_show() occur EXCEPTION: "

    .line 371
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static Surface_copyFrom(Landroid/view/Surface;Landroid/view/SurfaceControl;)V
    .locals 6

    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 387
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 388
    const-class v1, Landroid/view/Surface;

    const-string v2, "copyFrom"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {v1, p0, v2, v4, v0}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MAML_Reflect"

    const-string v0, "Invoke | Surface_copyFrom() occur EXCEPTION: "

    .line 390
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static Surface_getInstance()Landroid/view/Surface;
    .locals 3

    .line 377
    :try_start_0
    const-class v0, Landroid/view/Surface;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MAML_Reflect"

    const-string v2, "Invoke | Surface_getInstance() occur EXCEPTION: "

    .line 379
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static SystemSettingsSystem_DARKEN_WALLPAPER_UNDER_DARK_MODE()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 262
    :try_start_0
    const-class v1, Landroid/provider/SystemSettings$System;

    const-string v2, "DARKEN_WALLPAPER_UNDER_DARK_MODE"

    invoke-static {v1, v0, v2}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "MAML_Reflect"

    const-string v3, "Invoke | SystemSettingsSystem_DARKEN_WALLPAPER_UNDER_DARK_MODE() occur EXCEPTION: "

    .line 264
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static TypefaceUtils_replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.util.TypefaceUtils"

    .line 165
    invoke-static {v1}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "replaceTypeface"

    const/4 v3, 0x2

    .line 166
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/graphics/Typeface;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    invoke-static {v1, v0, v2, v4, v3}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "MAML_Reflect"

    const-string v1, "Invoke | TypefaceUtils_replaceTypeface() occur EXCEPTION: "

    .line 168
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static UserHandle_CURRENT()Landroid/os/UserHandle;
    .locals 4

    const/4 v0, 0x0

    .line 86
    :try_start_0
    const-class v1, Landroid/os/UserHandle;

    const-string v2, "CURRENT"

    invoke-static {v1, v0, v2}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "MAML_Reflect"

    const-string v3, "Invoke | UserHandle_CURRENT() occur EXCEPTION: "

    .line 88
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static UserHandle_getIdentifier(Landroid/os/UserHandle;)I
    .locals 5

    const/4 v0, 0x0

    .line 77
    :try_start_0
    const-class v1, Landroid/os/UserHandle;

    const-string v2, "getIdentifier"

    new-array v3, v0, [Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "MAML_Reflect"

    const-string v2, "Invoke | UserHandle_getIdentifier() occur EXCEPTION: "

    .line 79
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static UserHandle_getInstance_with_int(I)Landroid/os/UserHandle;
    .locals 5

    .line 95
    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v0, v2, v1}, Lcom/miui/maml/util/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "MAML_Reflect"

    const-string v1, "Invoke | UserHandle_getInstance_with_int() occur EXCEPTION: "

    .line 97
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static WifiManager_isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 5

    const/4 v0, 0x0

    .line 148
    :try_start_0
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "isWifiApEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3, v4}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "MAML_Reflect"

    const-string v2, "Invoke | WifiManager_isWifiApEnabled() occur EXCEPTION: "

    .line 150
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static WindowManager_LayoutParams_setLayoutParamsBlurRatio(Landroid/view/WindowManager$LayoutParams;F)V
    .locals 2

    .line 157
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "blurRatio"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0, p0, v1, p1}, Lcom/miui/maml/util/ReflectionHelper;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MAML_Reflect"

    const-string v0, "Invoke | WindowManager_LayoutParams_setLayoutParamsBlurRatio() occur EXCEPTION: "

    .line 159
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static initSurfaceControl(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/SurfaceControl;)V
    .locals 38

    move-object/from16 v0, p0

    :try_start_0
    const-string v1, "android.view.IWindowSession"

    .line 411
    invoke-static {v1}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.view.IWindow"

    .line 412
    invoke-static {v2}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "com.android.internal.view.BaseIWindow"

    .line 413
    invoke-static {v3}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "android.view.DisplayCutout$ParcelableWrapper"

    .line 414
    invoke-static {v4}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "android.view.InsetsState"

    .line 415
    invoke-static {v5}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "android.util.MergedConfiguration"

    .line 416
    invoke-static {v6}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 418
    const-class v7, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v8, "mSession"

    invoke-static {v7, v0, v8}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 419
    const-class v8, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v9, "mWindow"

    invoke-static {v8, v0, v9}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 420
    const-class v9, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v10, "mDisplayCutout"

    invoke-static {v9, v0, v10}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 421
    const-class v10, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v11, "mInsetsState"

    invoke-static {v10, v0, v11}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 422
    const-class v11, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v12, "mMergedConfiguration"

    invoke-static {v11, v0, v12}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 424
    const-class v12, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v13, "mLayout"

    invoke-static {v12, v0, v13}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    const-string v13, "mSeq"

    .line 426
    invoke-static {v3, v8, v13}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 427
    const-class v13, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v14, "mWidth"

    invoke-static {v13, v0, v14}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 428
    const-class v14, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v15, "mHeight"

    invoke-static {v14, v0, v15}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 430
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    move-object/from16 v16, v1

    const-string v1, "mVisibleInsets"

    invoke-static {v15, v0, v1}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 431
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    move-object/from16 v17, v10

    const-string v10, "mWinFrame"

    invoke-static {v15, v0, v10}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 432
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    move-object/from16 v18, v11

    const-string v11, "mOverscanInsets"

    invoke-static {v15, v0, v11}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 433
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    move-object/from16 v19, v9

    const-string v9, "mContentInsets"

    invoke-static {v15, v0, v9}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 434
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    move-object/from16 v20, v1

    const-string v1, "mStableInsets"

    invoke-static {v15, v0, v1}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 435
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    move-object/from16 v21, v1

    const-string v1, "mOutsets"

    invoke-static {v15, v0, v1}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 436
    const-class v15, Landroid/service/wallpaper/WallpaperService$Engine;

    move-object/from16 v22, v1

    const-string v1, "mBackdropFrame"

    invoke-static {v15, v0, v1}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v7, :cond_0

    const/16 v1, 0x13

    .line 439
    new-array v15, v1, [Ljava/lang/Class;

    const/16 v23, 0x0

    aput-object v2, v15, v23

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v24, 0x1

    aput-object v2, v15, v24

    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v25, 0x2

    aput-object v2, v15, v25

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x3

    aput-object v2, v15, v26

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x4

    aput-object v2, v15, v27

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x5

    aput-object v2, v15, v28

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v29, 0x6

    aput-object v2, v15, v29

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v30, 0x7

    aput-object v2, v15, v30

    const-class v2, Landroid/graphics/Rect;

    const/16 v31, 0x8

    aput-object v2, v15, v31

    const-class v2, Landroid/graphics/Rect;

    const/16 v32, 0x9

    aput-object v2, v15, v32

    const-class v2, Landroid/graphics/Rect;

    const/16 v33, 0xa

    aput-object v2, v15, v33

    const-class v2, Landroid/graphics/Rect;

    const/16 v34, 0xb

    aput-object v2, v15, v34

    const-class v2, Landroid/graphics/Rect;

    const/16 v35, 0xc

    aput-object v2, v15, v35

    const-class v2, Landroid/graphics/Rect;

    const/16 v36, 0xd

    aput-object v2, v15, v36

    const/16 v2, 0xe

    const-class v37, Landroid/graphics/Rect;

    aput-object v37, v15, v2

    const/16 v2, 0xf

    aput-object v4, v15, v2

    const/16 v2, 0x10

    aput-object v6, v15, v2

    const/16 v2, 0x11

    const-class v4, Landroid/view/SurfaceControl;

    aput-object v4, v15, v2

    const/16 v2, 0x12

    aput-object v5, v15, v2

    .line 446
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v23

    .line 447
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v24

    aput-object v12, v1, v25

    .line 448
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v26

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v27

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v28

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v29

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v30

    aput-object v10, v1, v31

    aput-object v11, v1, v32

    aput-object v9, v1, v33

    aput-object v20, v1, v34

    aput-object v21, v1, v35

    aput-object v22, v1, v36

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const/16 v0, 0xf

    aput-object v19, v1, v0

    const/16 v0, 0x10

    aput-object v18, v1, v0

    const/16 v0, 0x11

    aput-object p1, v1, v0

    const/16 v0, 0x12

    aput-object v17, v1, v0

    const-string v0, "relayout"

    move-object/from16 v2, v16

    .line 453
    invoke-static {v2, v7, v0, v15, v1}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MAML_Reflect"

    const-string v2, "Invoke | initSurfaceControl() occur EXCEPTION: "

    .line 456
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static isShowDebugLayout()Z
    .locals 6

    const/4 v0, 0x0

    .line 238
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const-string v1, "android.sysprop.DisplayProperties"

    .line 239
    invoke-static {v1}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "debug_layout"

    .line 240
    new-array v4, v0, [Ljava/lang/Class;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    .line 241
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-string v1, "debug.layout"

    .line 243
    invoke-static {v1, v0}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "MAML_Reflect"

    const-string v3, "Invoke | isShowDebugLayout() occur EXCEPTION: "

    .line 246
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static setWifiApEnabled(Landroid/content/Context;Z)V
    .locals 9

    .line 206
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v1, :cond_1

    const-string v0, "connectivity"

    .line 207
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const-string v0, "android.net.ConnectivityManager$OnStartTetheringCallback"

    .line 208
    invoke-static {v0}, Lcom/miui/maml/util/ReflectionHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 210
    const-class p1, Landroid/net/ConnectivityManager;

    const-string v1, "startTethering"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    aput-object v0, v7, v3

    new-array v0, v6, [Ljava/lang/Object;

    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    aput-object v2, v0, v3

    .line 210
    invoke-static {p1, p0, v1, v7, v0}, Lcom/miui/maml/util/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_0
    const-class p1, Landroid/net/ConnectivityManager;

    const-string v0, "stopTethering"

    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    new-array v2, v4, [Ljava/lang/Object;

    .line 214
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 213
    invoke-static {p1, p0, v0, v1, v2}, Lcom/miui/maml/util/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "wifi"

    .line 217
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 218
    const-class v0, Landroid/net/wifi/WifiManager;

    const-string v1, "setWifiApEnabled"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/net/wifi/WifiConfiguration;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    .line 219
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v4

    .line 218
    invoke-static {v0, p0, v1, v6, v3}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MAML_Reflect"

    const-string v0, "Invoke | setWifiApEnabled() occur EXCEPTION: "

    .line 222
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
