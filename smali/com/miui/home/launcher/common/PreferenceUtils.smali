.class public Lcom/miui/home/launcher/common/PreferenceUtils;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "PreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/PreferenceUtils$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "launcher_sharedpreference"

    .line 21
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/common/PreferenceUtils$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;-><init>()V

    return-void
.end method

.method public static commitInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 133
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putIntForce(Ljava/lang/String;I)V

    return-void
.end method

.method public static contains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 149
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 113
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getIconSizeScaleDefaultValue()F
    .locals 4

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f91a9fc    # 1.138f

    return v0

    .line 187
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 188
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v2

    const v3, 0x3f666666    # 0.9f

    if-le v1, v2, :cond_1

    return v3

    .line 191
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 192
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v0

    if-le v1, v0, :cond_3

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-eqz v0, :cond_3

    :cond_2
    return v3

    :cond_3
    const v0, 0x3f83482c

    return v0
.end method

.method public static getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;
    .locals 1

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils$Holder;->access$100()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 125
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 121
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 109
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static putFloat(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 0

    .line 137
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static putStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static removeKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->remove(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAddRecommendFolderIfNeed()Z
    .locals 2

    const-string v0, "key_need_add_recommend_folder"

    const/4 v1, 0x0

    .line 285
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIconScalePrefKey()Ljava/lang/String;
    .locals 1

    .line 169
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "icon_size_scale_no_word"

    return-object v0

    :cond_0
    const-string v0, "icon_size_scale"

    return-object v0
.end method

.method public getIconSizeScale()F
    .locals 1

    .line 165
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getIconSizeScale()F

    move-result v0

    return v0
.end method

.method public getIconSizeScaleFromSP()F
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconScalePrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScaleDefaultValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3f99999a    # 1.2f

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v0

    return v0
.end method

.method public getIgnoreAlignScreenList()Ljava/lang/String;
    .locals 2

    const-string v0, "ignore_align_screen_list"

    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBarData()Ljava/lang/String;
    .locals 2

    const-string v0, "key_search_bar_data_from_provider_new"

    const-string v1, ""

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBarDataFromCloud()Ljava/lang/String;
    .locals 2

    const-string v0, "key_search_bar_data_from_cloud"

    const-string v1, ""

    .line 265
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBarDataUpdateTime()J
    .locals 3

    const-string v0, "key_search_bar_data_update_time"

    const-wide/16 v1, 0x0

    .line 249
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSearchBarTestHash()I
    .locals 2

    const-string v0, "key_search_bar_test_hash"

    const/4 v1, 0x0

    .line 273
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasSetDrawerModeEnable()Z
    .locals 1

    const-string v0, "is_all_apps_drawer_mode_enable"

    .line 208
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSetIconSizeScale()Z
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconScalePrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDrawerModeEnable()Z
    .locals 4

    .line 214
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 217
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetDrawerModeEnable()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "is_all_apps_drawer_mode_enable"

    .line 218
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 220
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "miui_home_drawer_default_enable"

    .line 221
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public isFirstShowPairIcon()Z
    .locals 2

    const-string v0, "is_first_show_pair_icon"

    const/4 v1, 0x0

    .line 313
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAddRecommendFolderIfNeed(Z)V
    .locals 1

    const-string v0, "key_need_add_recommend_folder"

    .line 281
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDrawerModeEnable(Z)V
    .locals 1

    const-string v0, "is_all_apps_drawer_mode_enable"

    .line 226
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIconSizeScale(F)V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconScalePrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setIgnoreAlignScreenList(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ignore_align_screen_list"

    .line 245
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIsFirstShowPairIcon()V
    .locals 2

    const-string v0, "is_first_show_pair_icon"

    const/4 v1, 0x1

    .line 317
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBooleanForce(Ljava/lang/String;Z)Z

    return-void
.end method

.method public setSearchBarData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_search_bar_data_from_provider_new"

    .line 261
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSearchBarDataFromCloud(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_search_bar_data_from_cloud"

    .line 269
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSearchBarDataUpdateTime(J)V
    .locals 1

    const-string v0, "key_search_bar_data_update_time"

    .line 253
    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setSearchBarTestHash(I)V
    .locals 1

    const-string v0, "key_search_bar_test_hash"

    .line 277
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setShouldAlignScreen(Z)V
    .locals 1

    const-string v0, "should_align_screen"

    .line 237
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldAlignScreen()Z
    .locals 2

    const-string v0, "should_align_screen"

    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
