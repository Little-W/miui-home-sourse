.class public Lcom/miui/home/launcher/AnalyticalDataCollector;
.super Ljava/lang/Object;
.source "AnalyticalDataCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/AnalyticalDataCollector$_lancet;
    }
.end annotation


# static fields
.field private static sLaunchApplicationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static canTrackLaunchAppEvent()Z
    .locals 1

    .line 124
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static createCommonLaunchAppParams(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "launch_time"

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_name"

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static createLaunchDesktopAppEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/Launcher;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->createCommonLaunchAppParams(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "parent_container"

    const-string v2, "desktop"

    .line 143
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    iget-wide v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    const-string v1, "screen_index"

    add-int/lit8 v2, p1, 0x1

    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "row"

    .line 146
    iget v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "column"

    .line 147
    iget v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Launcher.AnalyticalDataCollector"

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inDesktop, screeniIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", row"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", column="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static createLaunchFolderAppEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/Launcher;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->createCommonLaunchAppParams(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "parent_container"

    const-string v2, "folder"

    .line 166
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "folder_title"

    .line 167
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderTitleByShortcutInfo(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "index_in_folder"

    .line 168
    iget v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Launcher.AnalyticalDataCollector"

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", folderTitle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderTitleByShortcutInfo(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", indexInFolder="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-static {v1, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static createLaunchHotseatAppEvent(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->createCommonLaunchAppParams(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "parent_container"

    const-string v2, "hotseat"

    .line 157
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "index_in_hotseat"

    .line 158
    iget v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Launcher.AnalyticalDataCollector"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inHotseat, , indexInHotseat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static extractPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFolderTitle(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    .line 426
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 427
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 428
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "recommend"

    return-object p0

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isToolsFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "tools"

    return-object p0

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isGoogleFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "google"

    return-object p0

    .line 434
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "games"

    return-object p0

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isUserGameFolder()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "user_created_games_folder"

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFolderTitleByShortcutInfo(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 207
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getParamsWithSearchBarSource(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "source"

    .line 511
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p0, :cond_0

    const-string v1, "screen_index"

    .line 513
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p0, "desktop_style"

    .line 515
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "exp_group_info"

    .line 516
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarExpGroupInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static isGoogleSearchWidget(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 400
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.googlequicksearchbox"

    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 401
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 402
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static recordLaunchApplicationEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 130
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->canTrackLaunchAppEvent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->createLaunchFolderAppEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isInHotseat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->createLaunchHotseatAppEvent(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->createLaunchDesktopAppEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public static trackAddWidget()V
    .locals 1

    const-string v0, "add_widget_to_workspace"

    .line 248
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackAllAppsClick(Ljava/lang/String;)V
    .locals 2

    .line 613
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 614
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "all_apps_click"

    .line 615
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsClose(Ljava/lang/String;)V
    .locals 2

    .line 575
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reason"

    .line 576
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "all_apps_close"

    .line 577
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsDelete(Ljava/lang/String;)V
    .locals 2

    .line 623
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 624
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "all_apps_delete"

    .line 625
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 634
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 635
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "package_name"

    .line 636
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "all_apps_drag"

    .line 637
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsIndex(Ljava/lang/String;)V
    .locals 2

    .line 585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 586
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "all_apps_index"

    .line 587
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsMode()V
    .locals 3

    .line 643
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 645
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    .line 644
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "all_apps_mode"

    .line 646
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsOpen()V
    .locals 1

    const-string v0, "all_apps_open"

    .line 564
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackAllAppsSearch(Ljava/lang/String;)V
    .locals 2

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 602
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "all_apps_search"

    .line 603
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackAllAppsSearchViewShow()V
    .locals 1

    const-string v0, "all_apps_search_view_show"

    .line 593
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackCancelShortcutMenu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 556
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "reason"

    .line 557
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "cancel_shortcut_menu"

    .line 558
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackClickJeejenHeadline()V
    .locals 1

    const-string v0, "click_jeejen_headline"

    .line 328
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackClickShortcutMenuItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 548
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 549
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "which"

    .line 550
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click_shortcut_menu_item"

    .line 551
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCloseFolderAfterBackToHome(Ljava/lang/String;)V
    .locals 2

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 285
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "close_folder_after_back_to_home"

    .line 286
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackDeletedShortCut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 298
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "intent"

    .line 299
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "delete_short"

    .line 300
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackDesktopSwipeLeftOrRight()V
    .locals 1

    const-string v0, "desktop_swipe_left_or_right"

    .line 289
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackDragApkToCenterDeleteDropTargetEvent(I)V
    .locals 2

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "count"

    .line 119
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "drag_app_to_uninstall"

    .line 120
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEditMode(Ljava/lang/String;)V
    .locals 2

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 216
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "enter_edit_mode"

    .line 217
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEditModeTopMenuClickEvent(Ljava/lang/String;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    .line 113
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click_edit_mode_top_menu"

    .line 114
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEditingEntryClicked(Ljava/lang/String;)V
    .locals 0

    .line 244
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackFolderClick(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 406
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderTitle(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object p0

    .line 407
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "folder_title"

    .line 409
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "launcher_folder_click"

    .line 410
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static trackFolderOpenTime(Lcom/miui/home/launcher/FolderInfo;J)V
    .locals 3

    .line 415
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderTitle(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object p0

    .line 416
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "folder_title"

    .line 418
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "duration_time"

    const-wide/16 v1, 0x3e8

    .line 419
    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "launcher_folder_open_duration_time"

    .line 420
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static trackFolderOpenWithRecommend(Z)V
    .locals 2

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "is_recommend_screen_visible"

    .line 222
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "folder_open"

    .line 223
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFolderRecommend(Ljava/lang/String;)V
    .locals 2

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 234
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "network"

    .line 235
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getNetWorkConnectedString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "recommend_app"

    .line 236
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFolderRecommendAppShow(IILcom/miui/home/launcher/FolderInfo;)V
    .locals 3

    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "screen_index"

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "show_app_count"

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "name"

    .line 457
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderTitle(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_folder_recommend_slots_count"

    .line 458
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackFolderRename(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 445
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getFolderTitle(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object p0

    .line 446
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "folder_title"

    .line 448
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "folder_rename"

    .line 449
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static trackGadgetClick(Ljava/lang/String;)V
    .locals 2

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gadget_title"

    .line 275
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "gadget_click"

    .line 276
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGadgetView(Ljava/lang/String;)V
    .locals 2

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gadget_title"

    .line 269
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "gadget_view_show"

    .line 270
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackGoolgPlay(Landroid/content/Intent;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "com.android.vending"

    .line 380
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 382
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "launch_google_play"

    .line 383
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static trackHomeComeBackEvent(Ljava/lang/String;)V
    .locals 4

    .line 183
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->canTrackLaunchAppEvent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 186
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->extractPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 187
    sget-object v0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    const-string v1, "return_from"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    const-string v1, "resume_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Launcher.AnalyticalDataCollector"

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back to home, packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "launch_application"

    .line 190
    sget-object v0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 191
    sput-object p0, Lcom/miui/home/launcher/AnalyticalDataCollector;->sLaunchApplicationEvent:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method public static trackHomeCreated(Ljava/lang/String;)V
    .locals 2

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 305
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_activity_created"

    .line 306
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeMoreSettingsAutoFillEmptyCells(Z)V
    .locals 2

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "switch"

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    .line 353
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_more_settings_auto_fill_empty_cells"

    .line 354
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeMoreSettingsDefaultHomeClicked()V
    .locals 1

    const-string v0, "home_more_settings_default_home"

    .line 348
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackHomeMoreSettingsLockScreenCells(Z)V
    .locals 2

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "switch"

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    .line 359
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_more_settings_lock_screen_cells"

    .line 360
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeMoreSettingsShowMemInfo(Z)V
    .locals 2

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "switch"

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    .line 365
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_more_settings_show_memory_info"

    .line 366
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeMoreSettingsShowRecentsRecommend(Z)V
    .locals 2

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "switch"

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    .line 371
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_more_settings_show_recents_recommend"

    .line 372
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeSettingSubAutoFill(Z)V
    .locals 2

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "switch"

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    .line 337
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_setting_sub_auto_fill"

    .line 338
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackHomeSettingSubClicked(Ljava/lang/String;)V
    .locals 0

    .line 332
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackHomeSettingSubLockLayout(Z)V
    .locals 2

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "switch"

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    .line 343
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_setting_sub_lock_layout"

    .line 344
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackInvalidateApplication(Ljava/lang/String;)V
    .locals 2

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "intent_uri"

    .line 228
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_invalidate_application"

    .line 229
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackItemMoved(Ljava/lang/String;)V
    .locals 0

    .line 280
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackLaunchAppAfterBackToHome(Ljava/lang/String;)V
    .locals 0

    .line 293
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackMiuiHomeInfo()V
    .locals 3

    .line 535
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "version_code"

    const v2, 0x2826e99

    .line 536
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version_name"

    const-string v2, "ALPHA-4.21.0.2425-10261728"

    .line 537
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "miui_home_info"

    .line 538
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackModuleLoad(Ljava/lang/String;ZI)V
    .locals 2

    .line 691
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    .line 692
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "is_success"

    .line 693
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string p0, "error_code"

    .line 695
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p0, "event_module_load"

    .line 697
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackNewHomeModuleLoaded()V
    .locals 4

    .line 703
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "is_success"

    .line 704
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v2

    const-string v3, "com.miui.newhome"

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->isModuleLoadSuccess(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "newhome_module_loaded"

    .line 705
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPersonalAssistantSwitch(Z)V
    .locals 2

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "switch"

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    .line 317
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_personal_assistant_switch"

    .line 318
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static trackPullDownGesture()V
    .locals 3

    .line 654
    invoke-static {}, Lcom/miui/home/settings/LauncherGestureController;->isHomeFeedRunInOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/LauncherGestureController;->getPullDownGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 657
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notification_bar"

    goto :goto_0

    :cond_1
    const-string v0, "global_search"

    goto :goto_0

    :cond_2
    const-string v0, "notification_bar"

    .line 665
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "miui_home_type"

    .line 666
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gesture_pull_down"

    .line 667
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackScreenCellsSizeChanged(Ljava/lang/String;)V
    .locals 2

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "layout_size"

    .line 259
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "screen_cells__changed"

    .line 260
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarClick(I)V
    .locals 1

    const-string v0, "search_bar_click"

    .line 490
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(I)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarSettingClick(I)V
    .locals 1

    const-string v0, "search_bar_setting_click"

    .line 506
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(I)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarSettingShow(I)V
    .locals 1

    const-string v0, "search_bar_setting_show"

    .line 502
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(I)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarShow(I)V
    .locals 1

    const-string v0, "search_bar_show"

    .line 486
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(I)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarSupport()V
    .locals 3

    const/4 v0, -0x1

    .line 478
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(I)Ljava/util/Map;

    move-result-object v0

    .line 479
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchSupportSearchBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "support"

    .line 481
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "search_bar_support"

    .line 482
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarTransferClick(Ljava/lang/String;)V
    .locals 2

    .line 527
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 528
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "search_bar_transfer_click"

    .line 529
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarTransferShow(Ljava/lang/String;)V
    .locals 2

    .line 521
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 522
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "search_bar_transfer_show"

    .line 523
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarXiaoAiClick(I)V
    .locals 1

    const-string v0, "search_bar_xiaoai_click"

    .line 498
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(I)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSearchBarXiaoAiShow(I)V
    .locals 1

    const-string v0, "search_bar_xiaoai_show"

    .line 494
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->getParamsWithSearchBarSource(I)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackShowDefaultLauncherSetting(Z)V
    .locals 2

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "is_jeejen_headline_option_show"

    if-eqz p0, :cond_0

    const-string p0, "show"

    goto :goto_0

    :cond_0
    const-string p0, "hide"

    .line 323
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "show_default_launcher_setting"

    .line 324
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackShowMarketConnectNetworkDialog()V
    .locals 1

    const-string v0, "market_show_dialog"

    .line 240
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackShowingShortcutMenuWhenDropIcon(Ljava/lang/String;)V
    .locals 2

    .line 542
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package_name"

    .line 543
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "showing_shortcut_menu_when_drop_icon"

    .line 544
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static trackSlideUpGesture()V
    .locals 3

    .line 672
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "all_apps"

    goto :goto_0

    .line 674
    :cond_0
    invoke-static {}, Lcom/miui/home/settings/LauncherGestureController;->isHomeFeedRunInOS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 677
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 679
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "global_search"

    goto :goto_0

    :cond_2
    const-string v0, "no_action"

    goto :goto_0

    :cond_3
    const-string v0, "no_action"

    .line 685
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "miui_home_type"

    .line 686
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gesture_slide_up"

    .line 687
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static trackSlidingOperationSwitch()V
    .locals 3

    .line 462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "status"

    .line 463
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "-1"

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sliding_operation_switch"

    .line 464
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackTransitionEffectChanged(Ljava/lang/String;)V
    .locals 2

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 253
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "transition_effect_changed"

    .line 254
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackUsingMultiSelect()V
    .locals 1

    const-string v0, "use_multi_select"

    .line 264
    invoke-static {v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackVerticalGesture(Z)V
    .locals 2

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "launch"

    if-eqz p0, :cond_0

    const-string p0, "global_search"

    goto :goto_0

    :cond_0
    const-string p0, "status_bar"

    .line 311
    :goto_0
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_vertical_gesture"

    .line 312
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackWidgetClick(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 388
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->isGoogleSearchWidget(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "click_google_search_widget"

    .line 389
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trackWidgetRemove(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 394
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->isGoogleSearchWidget(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "google_search_widget"

    .line 395
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
