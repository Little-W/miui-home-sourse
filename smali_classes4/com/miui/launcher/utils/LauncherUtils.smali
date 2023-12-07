.class public Lcom/miui/launcher/utils/LauncherUtils;
.super Ljava/lang/Object;


# static fields
.field public static final BACKUPMANAGER_STATE_BACKUP:I = 0x1

.field public static final BACKUPMANAGER_STATE_IDLE:I = 0x0

.field public static final BACKUPMANAGER_STATE_RESTORE:I = 0x2

.field public static final MIUI_HOME_ENABLE_AUTO_FILL_EMPTY_CELLS:Ljava/lang/String; = "miui_home_enable_auto_fill_empty_cells"

.field public static final MIUI_HOME_LOCK_SCREEN_CELLS:Ljava/lang/String; = "miui_home_lock_screen_cells"

.field public static final PACKAGE_DELETE_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.LauncherUtils"

.field public static final WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:I = 0x4

.field private static sIsAutoFillEmpty:Z = true

.field private static sIsDoubleTapLock:Z

.field private static sIsNoWordModel:Z

.field private static sIsOnlyWidgetNoWordModel:Z

.field private static sIsScreenCellsLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearLockedSetting(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "is_fingerprint_unlock"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static deletePackage(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/launcher/common/PackageDeleteObserverDelegate;->getDeleteObserver()Landroid/content/pm/IPackageDeleteObserver;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    return-void
.end method

.method public static deletePackageAsCurrentUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;)V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->deletePackageAsUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;II)V

    return-void
.end method

.method public static deletePackageAsUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;II)V
    .locals 10

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/miui/launcher/common/PackageDeleteObserverDelegate;->getDeleteObserver()Landroid/content/pm/IPackageDeleteObserver;

    move-result-object p2

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string p0, "package"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "deletePackageAsUser"

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 p0, 0x4

    new-array v4, p0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/pm/IPackageDeleteObserver;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    new-array v5, p0, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v9

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static deletePackageAsXspaceUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;)V
    .locals 2

    const/16 v0, 0x3e7

    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->deletePackageAsUser(Landroid/content/Context;Ljava/lang/String;Lcom/miui/launcher/common/PackageDeleteObserverDelegate;II)V

    return-void
.end method

.method public static dumpsys(Ljava/io/RandomAccessFile;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-interface {p1, v2, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p1

    long-to-int p1, p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p0

    new-instance p2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p0}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static enableAutoFillEmpty()Z
    .locals 1

    sget-boolean v0, Lcom/miui/launcher/utils/LauncherUtils;->sIsAutoFillEmpty:Z

    return v0
.end method

.method public static expandStatusBar(Landroid/content/Context;)V
    .locals 4

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "expand"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "expandNotificationsPanel"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static getAllUserHandle()Landroid/os/UserHandle;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public static getAppLaunchCount(Landroid/app/usage/UsageStats;)I
    .locals 0

    iget p0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    return p0
.end method

.method public static getBackupProcessingItem(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lmiui/app/backup/BackupManager;->getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/app/backup/BackupManager;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.LauncherUtils"

    const-string v1, "getBackupProcessingItem"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method public static getBackupState(Landroid/content/Context;)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Lmiui/app/backup/BackupManager;->getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/app/backup/BackupManager;->getState()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.LauncherUtils"

    const-string v1, "getBackupState"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getBooleanValueFromMiuiSettings(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getClearNothingId()I
    .locals 1

    const v0, 0x110e00a7

    return v0
.end method

.method public static getCurrentUserHandle()Landroid/os/UserHandle;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public static getCurrentUserId()I
    .locals 1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public static getMemoryClearResultId()I
    .locals 1

    const v0, 0x110e00a8

    return v0
.end method

.method public static getNaturalWidth(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result p0

    return p0
.end method

.method public static getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0

    invoke-static {p0, p1}, Lmiui/util/CustomizeUtil;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    return-void
.end method

.method public static getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getSecondSpaceId()I
    .locals 1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getSecondSpaceId()I

    move-result v0

    return v0
.end method

.method public static getSender(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getSender()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId(Landroid/os/UserHandle;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public static getUserSystemId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getWindowingModeFromConfiguration(Landroid/content/res/Configuration;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0}, Lmiui/content/res/ConfigurationExpose;->box(Ljava/lang/Object;)Lmiui/content/res/ConfigurationExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/content/res/ConfigurationExpose;->getWindowConfiguration()Lmiui/content/res/WindowConfigurationExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/content/res/WindowConfigurationExpose;->getWindowingMode()I

    move-result p0

    return p0
.end method

.method public static hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x3e7

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static hasSecondSpace(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lmiui/securityspace/CrossUserUtils;->hasSecondSpace(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isAirSpace(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isAppBackupRunning(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->getBackupProcessingItem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/miui/launcher/utils/LauncherUtils;->isPackageDisableAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") isDisable="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", backupProcessingPkg="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Launcher.LauncherUtils"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isAppCornerAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lmiui/provider/AppCornerProviderHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDoubleTapLock()Z
    .locals 1

    sget-boolean v0, Lcom/miui/launcher/utils/LauncherUtils;->sIsDoubleTapLock:Z

    return v0
.end method

.method public static isDoubleTapToLock(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_home_double_tap_to_lock"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isExcludingStopped(Landroid/content/Intent;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result p0

    return p0
.end method

.method public static isInMultiWindowMode(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNoWordModel()Z
    .locals 1

    sget-boolean v0, Lcom/miui/launcher/utils/LauncherUtils;->sIsNoWordModel:Z

    return v0
.end method

.method public static isOnlyWidgetNoWordModel()Z
    .locals 1

    sget-boolean v0, Lcom/miui/launcher/utils/LauncherUtils;->sIsOnlyWidgetNoWordModel:Z

    return v0
.end method

.method public static isPackageDisableAsUser(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2

    const-string v0, "Launcher.LauncherUtils"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "isPackageDisableAsUser, pkgInfo is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "isPackageDisableAsUser"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isResumed(Landroid/app/Activity;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static isScreenCellsLocked()Z
    .locals 1

    sget-boolean v0, Lcom/miui/launcher/utils/LauncherUtils;->sIsScreenCellsLocked:Z

    return v0
.end method

.method public static isUnLockedByFingerPrint(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_fingerprint_unlock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->clearLockedSetting(Landroid/content/Context;)V

    return v0
.end method

.method public static isXSpaceUser(Landroid/os/UserHandle;)Z
    .locals 0

    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static isXSpaceUserId(I)Z
    .locals 0

    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result p0

    return p0
.end method

.method public static refreshAutoFillEmpty(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_home_enable_auto_fill_empty_cells"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/launcher/utils/LauncherUtils;->sIsAutoFillEmpty:Z

    return-void
.end method

.method public static refreshDoubleTapLock(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/launcher/utils/LauncherUtils;->sIsDoubleTapLock:Z

    return-void
.end method

.method public static refreshNoWord(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_home_no_word_model"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/launcher/utils/LauncherUtils;->sIsNoWordModel:Z

    return-void
.end method

.method public static refreshOnlyWidgetNoWord(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_home_only_widget_no_word_model"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/launcher/utils/LauncherUtils;->sIsOnlyWidgetNoWordModel:Z

    return-void
.end method

.method public static refreshScreenCellsLocked(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_home_lock_screen_cells"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/launcher/utils/LauncherUtils;->sIsScreenCellsLocked:Z

    return-void
.end method

.method public static registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static setAsyncTaskDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-static {p0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static setProcessForeground(Landroid/os/IBinder;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v7, 0x19

    if-gt v0, v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v8, v2, [Ljava/lang/Class;

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    new-array v9, v2, [Ljava/lang/Object;

    aput-object p0, v9, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v5

    aput-object v6, v9, v3

    const-string v2, "setProcessForeground"

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v8, v5

    aput-object v6, v8, v3

    const-string p0, "launcher"

    aput-object p0, v8, v2

    const-string v2, "setProcessImportant"

    move-object v3, v7

    move-object v4, v9

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static tellBackupManagerNeedBeKilled(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lmiui/app/backup/BackupManager;->getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/app/backup/BackupManager;->setIsNeedBeKilled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.LauncherUtils"

    const-string v1, "tellBackupManagerNeedBeKilled"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
