.class public Lcom/miui/home/launcher/LauncherSettings;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherSettings$Settings;,
        Lcom/miui/home/launcher/LauncherSettings$Packages;,
        Lcom/miui/home/launcher/LauncherSettings$Screens;,
        Lcom/miui/home/launcher/LauncherSettings$Favorites;,
        Lcom/miui/home/launcher/LauncherSettings$BaseLauncherColumns;
    }
.end annotation


# static fields
.field public static final OPERATOR_RETAINED_LIST_PATH:Ljava/lang/String;

.field public static final PRESET_APPS_PATH:Ljava/lang/String;

.field private static mDownloadInstallInfoFileName:Ljava/lang/String;

.field private static mDownloadInstallInfoPath:Ljava/lang/String;

.field private static mRemovedComponentFileName:Ljava/lang/String;

.field private static mRemovedComponentPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    invoke-static {}, Lmiui/os/Environment;->getMiuiPresetAppDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherSettings;->PRESET_APPS_PATH:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-static {}, Lmiui/os/Environment;->getMiuiCustomizedDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "operator.retained.list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherSettings;->OPERATOR_RETAINED_LIST_PATH:Ljava/lang/String;

    const-string v0, "removed_component_info.txt"

    .line 51
    sput-object v0, Lcom/miui/home/launcher/LauncherSettings;->mRemovedComponentFileName:Ljava/lang/String;

    const-string v0, "download_install_info.txt"

    .line 52
    sput-object v0, Lcom/miui/home/launcher/LauncherSettings;->mDownloadInstallInfoFileName:Ljava/lang/String;

    return-void
.end method

.method public static deletePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 497
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    .line 498
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "delete"

    const/4 v2, 0x1

    .line 499
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 500
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p0

    const-string p2, "profileId"

    .line 502
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 503
    sget-object p0, Lcom/miui/home/launcher/LauncherSettings$Packages;->CONTENT_URI:Landroid/net/Uri;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static getDownloadInstallInfoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/miui/home/launcher/LauncherSettings;->mDownloadInstallInfoFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/LauncherSettings;->mDownloadInstallInfoPath:Ljava/lang/String;

    .line 63
    sget-object p0, Lcom/miui/home/launcher/LauncherSettings;->mDownloadInstallInfoPath:Ljava/lang/String;

    return-object p0
.end method

.method public static getRemovedComponentInfoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/miui/home/launcher/LauncherSettings;->mRemovedComponentFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/LauncherSettings;->mRemovedComponentPath:Ljava/lang/String;

    .line 58
    sget-object p0, Lcom/miui/home/launcher/LauncherSettings;->mRemovedComponentPath:Ljava/lang/String;

    return-object p0
.end method

.method public static isLoadMultiShortcutInfo(Landroid/content/ComponentName;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 516
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.clarodrive.android/com.owncloud.android.ui.splash.SplashActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isRetainedPackage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.stk"

    .line 507
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.orange.update"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
