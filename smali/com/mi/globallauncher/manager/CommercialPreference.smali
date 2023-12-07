.class Lcom/mi/globallauncher/manager/CommercialPreference;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/ICommercialPreference;


# static fields
.field private static volatile instance:Lcom/mi/globallauncher/manager/CommercialPreference;


# instance fields
.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/globallauncher/manager/BranchImplement;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/manager/CommercialPreference;->setupContext(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;
    .locals 2

    sget-object v0, Lcom/mi/globallauncher/manager/CommercialPreference;->instance:Lcom/mi/globallauncher/manager/CommercialPreference;

    if-nez v0, :cond_1

    const-class v0, Lcom/mi/globallauncher/manager/CommercialPreference;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mi/globallauncher/manager/CommercialPreference;->instance:Lcom/mi/globallauncher/manager/CommercialPreference;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mi/globallauncher/manager/CommercialPreference;

    invoke-direct {v1}, Lcom/mi/globallauncher/manager/CommercialPreference;-><init>()V

    sput-object v1, Lcom/mi/globallauncher/manager/CommercialPreference;->instance:Lcom/mi/globallauncher/manager/CommercialPreference;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/globallauncher/manager/CommercialPreference;->instance:Lcom/mi/globallauncher/manager/CommercialPreference;

    return-object v0
.end method


# virtual methods
.method public containKey(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/CommercialPreference;->mPref:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public enableSearchMaskRecommendConfig(Z)V
    .locals 1

    const-string v0, "search_mask_recommend_config"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/CommercialPreference;->mPref:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBranchSearchGuideShowTime()J
    .locals 3

    const-string v0, "branch_search_guide_show_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/globallauncher/manager/CommercialPreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBranchShowTypeVersion()I
    .locals 2

    const-string v0, "is_show_branch_new_version"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getEnterFolderTimestamp()J
    .locals 2

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getEnterFolderTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnterSearchTime()J
    .locals 3

    const-string v0, "enter_search_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/globallauncher/manager/CommercialPreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/CommercialPreference;->mPref:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastGetLocationTime()J
    .locals 3

    const-string v0, "get_location_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/globallauncher/manager/CommercialPreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastGetSearchHintTime()J
    .locals 3

    const-string v0, "last_get_search_hint_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/globallauncher/manager/CommercialPreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/CommercialPreference;->mPref:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMiuiBranchCloudConfig()Z
    .locals 2

    const-string v0, "miui_branch_cloud_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getMiuiQuickSearchCloudConfig()Z
    .locals 2

    const-string v0, "miui_quick_search_cloud_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getMiuiShowNewFeatureCloudConfig()Z
    .locals 2

    const-string v0, "miui_show_new_feature"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getRequestLocationPermissionTime()J
    .locals 3

    const-string v0, "request_location_permission_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/globallauncher/manager/CommercialPreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowNewFeatureCounts()I
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getShowNewFeatureCounts()I

    move-result p0

    return p0
.end method

.method public getShowNewFeatureTime()J
    .locals 2

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getShowNewFeatureTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/CommercialPreference;->mPref:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUniSearchPermissionGuideCloseCount()I
    .locals 2

    const-string/jumbo v0, "uni_search_permission_close"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getUniSearchPermissionGuideCloseTime()J
    .locals 3

    const-string/jumbo v0, "uni_search_permission_close_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/globallauncher/manager/CommercialPreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdateDrawerModeForCloudConfig()Z
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getUpdateDrawerModeForCloudConfig()Z

    move-result p0

    return p0
.end method

.method public getUuidCache()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "uuid_cache"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUuidExpireTime()J
    .locals 3

    const-string/jumbo v0, "uuid_expire"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mi/globallauncher/manager/CommercialPreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasChangedDrawerMode()Z
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->hasChangedDrawerMode()Z

    move-result p0

    return p0
.end method

.method public hasRequestedLocationPermission()Z
    .locals 2

    const-string v0, "requested_location_permission"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public hideSettingsTip()V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->hideSettingsTip()V

    return-void
.end method

.method public isBranchHasBeenOpened()Z
    .locals 2

    const-string v0, "branch_has_been_opened"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBranchOpenForNewUsers()Z
    .locals 2

    const-string v0, "branch_open"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBranchSearchGuideOpenClicked()Z
    .locals 2

    const-string v0, "branch_search_guide_open"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBranchSwitchOn()Z
    .locals 2

    const-string v0, "branch_switch_on"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isChangeToDrawerForBranch()Z
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->isChangeToDrawerForBranch()Z

    move-result p0

    return p0
.end method

.method public isCloudConfigReceived()Z
    .locals 2

    const-string v0, "is_cloud_config_received"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDragIconToHomeGuideShow()Z
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->isDragIconToHomeGuideShow()Z

    move-result p0

    return p0
.end method

.method public isFirstTimeEnterDrawer()Z
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->isFirstTimeEnterDrawer()Z

    move-result p0

    return p0
.end method

.method public isFocusSearchOnEnterDrawerSwitchOn()Z
    .locals 2

    const-string v0, "focus_search_on_enter_drawer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isGuildType1AlreadyShow()Z
    .locals 2

    const-string v0, "branch_guide_1_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isMaskViewPermissionButtonClicked()Z
    .locals 2

    const-string v0, "mask_view_permission_button_clicked"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNewFeatureFirstShow()Z
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->isNewFeatureFirstShow()Z

    move-result p0

    return p0
.end method

.method public isNewFeatureShowed()Z
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->isNewFeatureShowed()Z

    move-result p0

    return p0
.end method

.method public isRecommendInSearchOpen()Z
    .locals 2

    const-string v0, "search_mask_recommend_switch"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSearchMaskRecommendConfigEnabled()Z
    .locals 2

    const-string v0, "search_mask_recommend_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isUniSearchPermissionButtonClicked()Z
    .locals 2

    const-string/jumbo v0, "uni_search_permission_button_clicked"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isUseMiAppStore()Z
    .locals 2

    const-string/jumbo v0, "use_mi_app_store"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public needShowSettingTip()Z
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->needShowSettingTip()Z

    move-result p0

    return p0
.end method

.method public openDrawerByDefault()Z
    .locals 2

    const-string v0, "open_drawer_by_default"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public openRecommendInSearch(Z)V
    .locals 1

    const-string v0, "search_mask_recommend_switch"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/CommercialPreference;->mPref:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/CommercialPreference;->mPref:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/CommercialPreference;->mPref:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/manager/CommercialPreference;->mPref:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public resetShowNewFeatureCounts()V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->resetShowNewFeatureCounts()V

    return-void
.end method

.method public resetShowNewFeatureTime()V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->resetShowNewFeatureTime()V

    return-void
.end method

.method public setBranchHasBeenOpened(Z)V
    .locals 1

    const-string v0, "branch_has_been_opened"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBranchOpenForNewUsers(Z)V
    .locals 1

    const-string v0, "branch_open"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBranchSearchGuideOpenClicked()V
    .locals 2

    const-string v0, "branch_search_guide_open"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBranchSearchGuideShowTime(J)V
    .locals 1

    const-string v0, "branch_search_guide_show_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/mi/globallauncher/manager/CommercialPreference;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setBranchShowTypeVersion(I)V
    .locals 1

    const-string v0, "is_show_branch_new_version"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setBranchSwitchOn(Z)V
    .locals 1

    const-string v0, "branch_switch_on"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setChangeToDrawerForBranch()V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->setChangeToDrawerForBranch()V

    return-void
.end method

.method public setCloudConfigReceived(Z)V
    .locals 1

    const-string v0, "is_cloud_config_received"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDragIconToHomeGuideShow()V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->setDragIconToHomeGuideShow()V

    return-void
.end method

.method public setEnterFolderTimestamp(J)V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->setEnterFolderTimestamp(J)V

    return-void
.end method

.method public setEnterSearchTime(J)V
    .locals 1

    const-string v0, "enter_search_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/mi/globallauncher/manager/CommercialPreference;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setFirstTimeEnterDrawer(Z)V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->setFirstTimeEnterDrawer(Z)V

    return-void
.end method

.method public setFocusSearchOnEnterDrawerSwitch(Z)V
    .locals 1

    const-string v0, "focus_search_on_enter_drawer"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setGetLocationTime(J)V
    .locals 1

    const-string v0, "get_location_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/mi/globallauncher/manager/CommercialPreference;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setGuildType1AlreadyShow(Z)V
    .locals 1

    const-string v0, "branch_guide_1_show"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHasChangedDrawerMode(Z)V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->setHasChangedDrawerMode(Z)V

    return-void
.end method

.method public setHasRequestedLocationPermission()V
    .locals 2

    const-string v0, "requested_location_permission"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLastGetSearchHintTime(J)V
    .locals 1

    const-string v0, "last_get_search_hint_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/mi/globallauncher/manager/CommercialPreference;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setMaskViewPermissionButtonClicked()V
    .locals 2

    const-string v0, "mask_view_permission_button_clicked"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMiuiBranchCloudConfig(Z)V
    .locals 1

    const-string v0, "miui_branch_cloud_config"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMiuiQuickSearchCloudConfig(Z)V
    .locals 1

    const-string v0, "miui_quick_search_cloud_config"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMiuiShowNewFeatureCloudConfig(Z)V
    .locals 1

    const-string v0, "miui_show_new_feature"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNewFeatureFirstShow(Z)V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->setNewFeatureFirstShow(Z)V

    return-void
.end method

.method public setNewFeatureShowed(Z)V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->setNewFeatureShowed(Z)V

    return-void
.end method

.method public setOpenDrawerByDefault(Z)V
    .locals 1

    const-string v0, "open_drawer_by_default"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setQuickSearchGuideShowTime(J)V
    .locals 1

    const-string v0, "quick_search_guide_show_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/mi/globallauncher/manager/CommercialPreference;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setRequestLocationPermissionTime(J)V
    .locals 1

    const-string v0, "request_location_permission_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/mi/globallauncher/manager/CommercialPreference;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setShouldQuickSearchGuideShow(Z)V
    .locals 1

    const-string v0, "quick_search_guide_show"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShouldShownBranchSearchGuide(Z)V
    .locals 1

    const-string v0, "show_branch_search_guide"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUniSearchPermissionButtonClicked()V
    .locals 2

    const-string/jumbo v0, "uni_search_permission_button_clicked"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUniSearchPermissionGuideCloseCount(I)V
    .locals 1

    const-string/jumbo v0, "uni_search_permission_close"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setUniSearchPermissionGuideCloseTime(J)V
    .locals 1

    const-string/jumbo v0, "uni_search_permission_close_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/mi/globallauncher/manager/CommercialPreference;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setUpdateDrawerModeForCloudConfig(Z)V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->setUpdateDrawerModeForCloudConfig(Z)V

    return-void
.end method

.method public setUseMiAppStore(Z)V
    .locals 1

    const-string/jumbo v0, "use_mi_app_store"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUuidCache(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "uuid_cache"

    invoke-virtual {p0, v0, p1}, Lcom/mi/globallauncher/manager/CommercialPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUuidExpireTime(J)V
    .locals 1

    const-string/jumbo v0, "uuid_expire"

    invoke-virtual {p0, v0, p1, p2}, Lcom/mi/globallauncher/manager/CommercialPreference;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setupContext(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    :cond_1
    const/4 v0, 0x0

    const-string v1, "commercial_pref"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/manager/CommercialPreference;->mPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public shouldQuickSearchGuideShow()Z
    .locals 2

    const-string v0, "quick_search_guide_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public shouldShownBranchSearchGuide()Z
    .locals 2

    const-string v0, "show_branch_search_guide"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public updateShowNewFeatureCounts()V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->updateShowNewFeatureCounts()V

    return-void
.end method

.method public updateShowNewFeatureTime()V
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->getInstance()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;->updateShowNewFeatureTime()V

    return-void
.end method
