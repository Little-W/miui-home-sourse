.class public abstract Lcom/miui/home/launcher/allapps/LauncherMode;
.super Ljava/lang/Object;
.source "LauncherMode.java"


# static fields
.field protected static final modeDatabasePath:Lcom/miui/home/launcher/allapps/LauncherModeDatabasePath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/allapps/PocoDatabasePath;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/PocoDatabasePath;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/allapps/MiuiDatabasePath;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/MiuiDatabasePath;-><init>()V

    :goto_0
    sput-object v0, Lcom/miui/home/launcher/allapps/LauncherMode;->modeDatabasePath:Lcom/miui/home/launcher/allapps/LauncherModeDatabasePath;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDefaultPullDownGesture()Ljava/lang/String;
    .locals 0

    .line 158
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_SHENNONG:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_HOUJI:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "notification_bar"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "pull_down_global_search"

    return-object p0
.end method

.method private getDefaultSlideUpGesture()Ljava/lang/String;
    .locals 0

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "content_center"

    return-object p0

    :cond_0
    const-string p0, "global_search"

    return-object p0
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

    .line 97
    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$LauncherMode$vpKTABrWCmfWhut2HUAVuuatli8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$LauncherMode$vpKTABrWCmfWhut2HUAVuuatli8;-><init>(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-object v0
.end method


# virtual methods
.method public backupDatabaseFile(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    .line 106
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f6

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getBackupFileSuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-static {p1, p0}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->createFileInfoBundle(Ljava/io/File;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
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

    .line 68
    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
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

    .line 46
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 47
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    :cond_1
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    :cond_2
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "Launcher.LauncherMode"

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_3

    const-string p0, "step1: found the same shortcut, not add again"

    .line 54
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 57
    :cond_3
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    iget-object v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "step2: found the same shortcut, not add again"

    .line 59
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public canLoadShortcutInfo(Ljava/util/HashMap;Lcom/miui/home/launcher/ShortcutInfo;Z)Z
    .locals 0
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

    .line 72
    new-instance p0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->canShowShortcutMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 229
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBackupFileSuffix()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCloudBackUpOrReplacementPreKey()Ljava/lang/String;
    .locals 1

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_is_cloud_backup_or_replacement"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDefaultScreenId()J
    .locals 2

    .line 264
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentDefaultScreenIdFromPreference()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultWorkspaceNamePrefix()Ljava/lang/String;
    .locals 1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconSizeScale()F
    .locals 0

    .line 260
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScaleFromSP()F

    move-result p0

    return p0
.end method

.method public getLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;
    .locals 0

    .line 144
    invoke-static {}, Lcom/miui/home/launcher/compat/LauncherCellCountCompat;->getInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object p0

    return-object p0
.end method

.method public getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 84
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 89
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract getModeName()Ljava/lang/String;
.end method

.method public getPullDownGesture(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getDefaultPullDownGesture()Ljava/lang/String;

    move-result-object p0

    const-string v0, "launcher_pulldown_gesture"

    .line 153
    invoke-static {p1, v0, p0}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getRestoreFileSuffix()Ljava/lang/String;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutTitleScale()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 167
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getDefaultSlideUpGesture()Ljava/lang/String;

    move-result-object p0

    const-string v0, "launcher_slideup_gesture"

    .line 166
    invoke-static {p1, v0, p0}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTransformationType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 242
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 243
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 246
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "pref_key_transformation_type"

    .line 245
    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAutoFillEmptyEnable()Z
    .locals 0

    .line 187
    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->enableAutoFillEmpty()Z

    move-result p0

    return p0
.end method

.method public isHomeSupportIconSearchBar(Landroid/content/Context;)Z
    .locals 0

    .line 255
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f050016

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHomeSupportSearchBar(Landroid/content/Context;)Z
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->isHomeSupportIconSearchBar(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIconPositionFixed(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNoWordModel()Z
    .locals 0

    .line 195
    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->isNoWordModel()Z

    move-result p0

    return p0
.end method

.method public isOnlyWidgetNoWordModel()Z
    .locals 0

    .line 199
    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->isOnlyWidgetNoWordModel()Z

    move-result p0

    return p0
.end method

.method public isPersonalAssistantOn(Landroid/content/Context;)Z
    .locals 1

    .line 233
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 234
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isAssistantOpen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    const-string v0, "open_personal_assistant"

    .line 236
    invoke-static {p1, v0, p0}, Lcom/miui/launcher/utils/LauncherUtils;->getBooleanValueFromMiuiSettings(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isScreenCellsLocked()Z
    .locals 0

    .line 191
    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->isScreenCellsLocked()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$getRestoreFileFilter$0$LauncherMode(Landroid/net/Uri;)Z
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getRestoreFileSuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/core/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public refreshAutoFillEmpty(Landroid/content/Context;)V
    .locals 0

    .line 219
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->refreshAutoFillEmpty(Landroid/content/Context;)V

    return-void
.end method

.method public refreshDoubleTapLock(Landroid/content/Context;)V
    .locals 0

    .line 223
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->refreshDoubleTapLock(Landroid/content/Context;)V

    return-void
.end method

.method public refreshScreenCellsLocked(Landroid/content/Context;)V
    .locals 0

    .line 215
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->refreshScreenCellsLocked(Landroid/content/Context;)V

    return-void
.end method

.method public refreshScreenNoWordModel(Landroid/content/Context;)V
    .locals 0

    .line 203
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->refreshNoWord(Landroid/content/Context;)V

    return-void
.end method

.method public refreshScreenOnlyWidgetNoWordModel(Landroid/content/Context;)V
    .locals 0

    .line 207
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->refreshOnlyWidgetNoWord(Landroid/content/Context;)V

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

    .line 119
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Launcher.LauncherMode"

    const-string p1, "failed to create database folder"

    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    invoke-static {v0}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->deleteContents(Ljava/io/File;)V

    .line 125
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getRestoreFileFilter()Ljava/util/function/Predicate;

    move-result-object v1

    .line 126
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

    .line 127
    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getBackupFileSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2

    .line 132
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 134
    :cond_2
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v2, v5}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    const-string v3, "Launcher.Backup"

    .line 135
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

    .line 137
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public abstract supportAssistant()Z
.end method

.method public abstract supportFeed()Z
.end method
