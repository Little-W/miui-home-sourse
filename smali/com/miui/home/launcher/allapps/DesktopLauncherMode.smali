.class public Lcom/miui/home/launcher/allapps/DesktopLauncherMode;
.super Lcom/miui/home/launcher/allapps/LauncherMode;
.source "DesktopLauncherMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackupFileSuffix()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getDefaultWorkspaceNamePrefix()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 11
    sget-object p0, Lcom/miui/home/launcher/allapps/DesktopLauncherMode;->modeDatabasePath:Lcom/miui/home/launcher/allapps/LauncherModeDatabasePath;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherModeDatabasePath;->getDesktopModePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 0

    const-string p0, "desktop"

    return-object p0
.end method

.method protected getRestoreFileSuffix()Ljava/lang/String;
    .locals 0

    const-string p0, "db"

    return-object p0
.end method

.method public supportAssistant()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportFeed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
