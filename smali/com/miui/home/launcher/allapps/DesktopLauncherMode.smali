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
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getDefaultWorkspaceNamePrefix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "foo"

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    const-string v0, "desktop"

    return-object v0
.end method

.method protected getRestoreFileSuffix()Ljava/lang/String;
    .locals 1

    const-string v0, "db"

    return-object v0
.end method

.method public supportAssistant()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportFeed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
