.class public abstract Lcom/miui/home/launcher/allapps/LauncherMode;
.super Ljava/lang/Object;
.source "LauncherMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRestoreFileFilter()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$LauncherMode$vpKTABrWCmfWhut2HUAVuuatli8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$LauncherMode$vpKTABrWCmfWhut2HUAVuuatli8;-><init>(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-object v0
.end method

.method public static synthetic lambda$getRestoreFileFilter$0(Lcom/miui/home/launcher/allapps/LauncherMode;Landroid/net/Uri;)Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getRestoreFileSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/core/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public backupDatabaseFile(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    .line 104
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f6

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getBackupFileSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {p1, v0}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->createFileInfoBundle(Ljava/io/File;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public canAddToFolder(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ")Z"
        }
    .end annotation

    .line 66
    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public canAddToWorkspace(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ")Z"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 45
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    iget v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-ne v1, v2, :cond_0

    iget v1, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    iget v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-ne v1, v2, :cond_0

    .line 48
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    :cond_1
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 51
    :cond_2
    iget-object v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_3

    const-string p1, "Launcher.LauncherMode"

    const-string p2, "step1: found the same shortcut, not add again"

    .line 52
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 55
    :cond_3
    iget-object v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    iget-object v1, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Launcher.LauncherMode"

    const-string p2, "step2: found the same shortcut, not add again"

    .line 57
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public canLoadShortcutInfo(Ljava/util/HashMap;Lcom/miui/home/launcher/ShortcutInfo;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Z)Z"
        }
    .end annotation

    .line 70
    new-instance p3, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->canShowShortcutMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBackupFileSuffix()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDefaultScreenId()J
    .locals 2

    .line 231
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentDefaultScreenIdFromPreference()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultWorkspaceNamePrefix()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconSizeScale()F
    .locals 1

    .line 227
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScaleFromSP()F

    move-result v0

    return v0
.end method

.method public getLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;
    .locals 1

    .line 142
    invoke-static {}, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->getInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v0

    return-object v0
.end method

.method public getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 82
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 87
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract getModeName()Ljava/lang/String;
.end method

.method public getPullDownGesture(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "launcher_pulldown_gesture"

    const-string v1, "notification_bar"

    .line 146
    invoke-static {p1, v0, v1}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getRestoreFileSuffix()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutTitleScale()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "launcher_slideup_gesture"

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "content_center"

    goto :goto_0

    :cond_0
    const-string v1, "global_search"

    .line 151
    :goto_0
    invoke-static {p1, v0, v1}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTransformationType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "pref_key_transformation_type"

    const/4 v1, 0x1

    .line 214
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAutoFillEmptyEnable()Z
    .locals 1

    .line 166
    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->enableAutoFillEmpty()Z

    move-result v0

    return v0
.end method

.method public isHomeSupportIconSearchBar(Landroid/content/Context;)Z
    .locals 1

    .line 222
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050016

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHomeSupportSearchBar(Landroid/content/Context;)Z
    .locals 1

    .line 218
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->isHomeSupportIconSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isIconPositionFixed(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isNoWordModel()Z
    .locals 1

    .line 174
    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->isNoWordModel()Z

    move-result v0

    return v0
.end method

.method public isPersonalAssistantOn(Landroid/content/Context;)Z
    .locals 2

    .line 204
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isAssistantOpen()Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "open_personal_assistant"

    const/4 v1, 0x1

    .line 207
    invoke-static {p1, v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->getBooleanValueFromMiuiSettings(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isScreenCellsLocked()Z
    .locals 1

    .line 170
    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->isScreenCellsLocked()Z

    move-result v0

    return v0
.end method

.method public refreshAutoFillEmpty(Landroid/content/Context;)V
    .locals 0

    .line 190
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->refreshAutoFillEmpty(Landroid/content/Context;)V

    return-void
.end method

.method public refreshDoubleTapLock(Landroid/content/Context;)V
    .locals 0

    .line 194
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->refreshDoubleTapLock(Landroid/content/Context;)V

    return-void
.end method

.method public refreshScreenCellsLocked(Landroid/content/Context;)V
    .locals 0

    .line 186
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->refreshScreenCellsLocked(Landroid/content/Context;)V

    return-void
.end method

.method public refreshScreenNoWordModel(Landroid/content/Context;)V
    .locals 0

    .line 178
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->refreshNoWord(Landroid/content/Context;)V

    return-void
.end method

.method public restoreDatabaseFile(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 117
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "Launcher.LauncherMode"

    const-string p2, "failed to create database folder"

    .line 119
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 122
    :cond_0
    invoke-static {v0}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->deleteContents(Ljava/io/File;)V

    .line 123
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getRestoreFileFilter()Ljava/util/function/Predicate;

    move-result-object v1

    .line 124
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 125
    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getBackupFileSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2

    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 132
    :cond_2
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v2, v5}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    const-string v3, "Launcher.Backup"

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restore file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 135
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public abstract supportAssistant()Z
.end method

.method public abstract supportFeed()Z
.end method
