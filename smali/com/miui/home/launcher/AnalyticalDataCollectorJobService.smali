.class public Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;
.super Landroid/app/job/JobService;
.source "AnalyticalDataCollectorJobService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private getAllShortcutInfoPackageNameInFolder(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;
    .locals 2

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 361
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFolderSwitchState(ZZ)Ljava/lang/String;
    .locals 1

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "user_switch"

    goto :goto_0

    :cond_0
    const-string p1, "switch_default"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p1, "_on"

    goto :goto_1

    :cond_1
    const-string p1, "_off"

    .line 226
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFolderSwitchStateParams(Lcom/miui/home/launcher/FolderInfo;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/FolderInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->hasUserChangedRecommendSwitchState()Z

    move-result v0

    .line 215
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result p1

    .line 214
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getFolderSwitchState(ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "hasn\'t_this_folder"

    .line 218
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "switch_state"

    .line 219
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getNavBarTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "gestureWithoutLine"

    goto :goto_0

    :cond_0
    const-string p0, "gestureWithLine"

    :goto_0
    return-object p0

    .line 145
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isRightHand(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "buttonsSwitchOrder"

    goto :goto_1

    :cond_2
    const-string p0, "buttonsNormalOrder"

    :goto_1
    return-object p0
.end method

.method private static getWidgets(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 380
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v4, "itemType = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 382
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    .line 380
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_4

    .line 383
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 389
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 390
    sget-object v4, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    .line 391
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 390
    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 395
    :cond_1
    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 402
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_6
    throw p0

    :catch_0
    move-object v1, v0

    :catch_1
    if-eqz v1, :cond_7

    .line 402
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0
.end method

.method private isApplicationShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 284
    iget p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDefaultFolder(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.miui.home:string/default_folder_title_recommend"

    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.miui.home:string/default_folder_title_tools"

    .line 368
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isToggleShortcutInfo(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 288
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$onStartJob$0(Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;Landroid/app/job/JobParameters;)V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackFolderInfo(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V

    .line 82
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackCellScreenInfo(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V

    .line 84
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v2

    .line 85
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackAppCountEvent(Ljava/util/ArrayList;)V

    .line 86
    invoke-direct {p0, v2, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackToggleInfoEvent(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 88
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackGadgetInfoEvent(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V

    .line 90
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackWidgetEvent(Landroid/content/Context;)V

    .line 92
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackMiuiWidgets(Landroid/content/Context;)V

    .line 94
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->recordLockWallpaperProvider(Landroid/content/Context;)V

    .line 97
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackPersonalAssitantEvent(Landroid/content/Context;)V

    .line 98
    invoke-direct {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackScreenCellsSizeEvent()V

    .line 99
    invoke-direct {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackScreenCellsLockedEvent()V

    .line 100
    invoke-direct {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackNoWordStatusEvent()V

    .line 101
    invoke-direct {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackScreenAutoFillEmptyEvent()V

    .line 102
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSlidingOperationSwitch()V

    .line 105
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackMiuiHomeInfo()V

    .line 106
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsMode()V

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarSupport()V

    .line 108
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackPullDownGesture()V

    .line 109
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSlideUpGesture()V

    .line 110
    invoke-direct {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackUserHideApp()V

    .line 111
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackNavBarType(Landroid/content/Context;)V

    .line 112
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackRecentsLayoutStyle(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method private static recordLockWallpaperProvider(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 420
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 423
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 424
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isKeyguardShowLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "live"

    goto :goto_0

    .line 426
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDefaultLockStyle()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "third_theme"

    .line 429
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "miui_home_type"

    .line 430
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "lock_wallpaper_provider"

    .line 431
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private trackAppCountEvent(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 274
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->isApplicationShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_num"

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_num"

    .line 280
    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackCellScreenCountEvent(I)V
    .locals 2

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "screen_num"

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "screen_num"

    .line 305
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackCellScreenInfo(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V
    .locals 1

    .line 294
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackCellScreenCountEvent(I)V

    .line 298
    invoke-static {p2, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackDefaultScreenChangedEvent(Landroid/content/Context;Lcom/miui/home/launcher/Workspace;)V

    :cond_0
    return-void
.end method

.method private static trackDefaultScreenChangedEvent(Landroid/content/Context;Lcom/miui/home/launcher/Workspace;)V
    .locals 4

    .line 409
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getDesignedDefaultScreenId(Landroid/content/Context;)J

    move-result-wide v0

    .line 410
    sget-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    .line 411
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 412
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "is_changed"

    .line 413
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "home_change_default_screen"

    .line 414
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private trackFolderContentEvent(Ljava/lang/String;)V
    .locals 2

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "folder_content"

    .line 345
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "folder_content"

    .line 346
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackFolderInfo(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V
    .locals 8

    .line 310
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllFolders()Ljava/util/ArrayList;

    move-result-object p1

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v6, :cond_0

    .line 317
    invoke-virtual {v6, v1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v6, v1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 321
    invoke-direct {p0, v7}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->isDefaultFolder(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 327
    :goto_1
    invoke-virtual {v6}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v5, v6

    .line 331
    :cond_3
    invoke-virtual {v6}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 335
    :cond_4
    invoke-virtual {v6, p2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getAllShortcutInfoPackageNameInFolder(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 338
    :cond_5
    invoke-direct {p0, v2, v3, v4}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackFolderNumEvent(III)V

    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->trackFolderContentEvent(Ljava/lang/String;)V

    const-string p1, "recommend_folder_switch_state"

    .line 340
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getFolderSwitchStateParams(Lcom/miui/home/launcher/FolderInfo;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackFolderNumEvent(III)V
    .locals 2

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "defaultFolderNum"

    .line 351
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "userFolderNum"

    .line 352
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "recommendSwitchOnNum"

    .line 353
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "folder_num"

    .line 354
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackGadgetInfoEvent(Lcom/miui/home/launcher/Launcher;Landroid/content/Context;)V
    .locals 4

    .line 231
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllGadgets()Ljava/util/ArrayList;

    move-result-object p1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 239
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->isGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 241
    invoke-virtual {v2, p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 245
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "gadget_num"

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "gadget_list"

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "home_gadget_info"

    .line 248
    invoke-static {p2, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackNavBarType(Landroid/content/Context;)V
    .locals 2

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "navigationType"

    .line 135
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getNavBarTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "full_screen_gesture"

    .line 136
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackNoWordStatusEvent()V
    .locals 3

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "is_enable"

    .line 170
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "home_no_word_status"

    .line 171
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackPersonalAssitantEvent(Landroid/content/Context;)V
    .locals 2

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "is_enable"

    .line 188
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "home_personal_assistant_state"

    .line 189
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackRecentsLayoutStyle(Landroid/content/Context;)V
    .locals 2

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "horizontal"

    goto :goto_0

    :cond_0
    const-string p1, "vertical"

    :goto_0
    const-string v1, "style"

    .line 129
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "recents_layout_style"

    .line 130
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackScreenAutoFillEmptyEvent()V
    .locals 3

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "is_enable"

    .line 182
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "home_screen_auto_fill_empty_state"

    .line 183
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackScreenCellsLockedEvent()V
    .locals 3

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "is_enable"

    .line 176
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "home_screen_cells_locked"

    .line 177
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackScreenCellsSizeEvent()V
    .locals 3

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_name"

    .line 163
    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "size"

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentScreenCells()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cell_screen_size"

    .line 165
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackToggleInfoEvent(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 259
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->isToggleShortcutInfo(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 261
    invoke-virtual {v2, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 265
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "toggle_num"

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "toggle_lists"

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "home_toggle_info"

    .line 268
    invoke-static {p2, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackUserHideApp()V
    .locals 3

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/HideAppList;->getHideAppString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "user_hide_app"

    const/4 v2, 0x1

    .line 154
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "user_hide_app"

    const/4 v2, 0x0

    .line 156
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "miui_home_hide_app_info"

    .line 158
    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackWidgetEvent(Landroid/content/Context;)V
    .locals 3

    .line 193
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->getWidgets(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 195
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_1

    .line 197
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 201
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "widget_num"

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "widget_list"

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "home_widget_info"

    .line 204
    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/job/JobService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    const-string v0, "Launcher.AnalyticalDataCollectorJobService"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartJob   jobParameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorJobService$PVsqg1Y7Rft7Vk_jyGcwcJs53r0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorJobService$PVsqg1Y7Rft7Vk_jyGcwcJs53r0;-><init>(Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
