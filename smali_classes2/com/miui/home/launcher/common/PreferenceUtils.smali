.class public Lcom/miui/home/launcher/common/PreferenceUtils;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "PreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/PreferenceUtils$Holder;
    }
.end annotation


# static fields
.field private static mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;


# instance fields
.field private mDesktopModeDefault:I

.field private mDrawerModeDefault:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "launcher_sharedpreference"

    .line 25
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/common/PreferenceUtils$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 51
    iput p1, p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mDrawerModeDefault:I

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mDesktopModeDefault:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/miui/home/launcher/common/PreferenceUtils$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/common/PreferenceUtils;)Lcom/miui/home/launcher/common/PreferenceUtils;
    .locals 0

    .line 22
    sput-object p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;

    return-object p0
.end method

.method public static commitInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 157
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putIntForce(Ljava/lang/String;I)V

    return-void
.end method

.method public static contains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 137
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getIconSizeScaleDefaultValue()F
    .locals 2

    .line 211
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f91a9fc    # 1.138f

    return p0

    .line 214
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    .line 215
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 216
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result p0

    if-le v0, p0, :cond_2

    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-eqz p0, :cond_2

    :cond_1
    const p0, 0x3f666666    # 0.9f

    return p0

    .line 224
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x3f849225

    goto :goto_0

    :cond_3
    const p0, 0x3f83482c

    :goto_0
    return p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;
    .locals 1

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils$Holder;->access$300()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 149
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 145
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

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 185
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 133
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static putFloat(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 0

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 153
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 125
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 141
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

    .line 177
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static removeKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 169
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

    .line 316
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getDrawerTransparencyType()I
    .locals 2

    const-string v0, "drawer_transparency_type"

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getIconScalePrefKey()Ljava/lang/String;
    .locals 0

    .line 193
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "icon_size_scale_no_word"

    return-object p0

    :cond_0
    const-string p0, "icon_size_scale"

    return-object p0
.end method

.method public getIconSizeScale()F
    .locals 0

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getIconSizeScale()F

    move-result p0

    return p0
.end method

.method public getIconSizeScaleFromSP()F
    .locals 2

    .line 200
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconScalePrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScaleDefaultValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getFloat(Ljava/lang/String;F)F

    move-result p0

    const v0, 0x3f70a3d7    # 0.94f

    const v1, 0x3f87ae14    # 1.06f

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p0

    return p0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconScalePrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScaleDefaultValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getFloat(Ljava/lang/String;F)F

    move-result p0

    const v0, 0x3f4ccccd    # 0.8f

    const v1, 0x3f99999a    # 1.2f

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p0

    return p0
.end method

.method public getIgnoreAlignScreenList()Ljava/lang/String;
    .locals 2

    const-string v0, "ignore_align_screen_list"

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsOnUpgradeMiui15()Z
    .locals 2

    const-string v0, "on_upgrade_miui15"

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getSearchBarData()Ljava/lang/String;
    .locals 2

    const-string v0, "key_search_bar_data_from_provider_new"

    const-string v1, ""

    .line 288
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchBarDataFromCloud()Ljava/lang/String;
    .locals 2

    const-string v0, "key_search_bar_data_from_cloud"

    const-string v1, ""

    .line 296
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchBarDataUpdateTime()J
    .locals 3

    const-string v0, "key_search_bar_data_update_time"

    const-wide/16 v1, 0x0

    .line 280
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSearchBarTestHash()I
    .locals 2

    const-string v0, "key_search_bar_test_hash"

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public hasSetDrawerModeEnable()Z
    .locals 1

    const-string v0, "is_all_apps_drawer_mode_enable"

    .line 233
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasSetIconSizeScale()Z
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconScalePrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCloudBackUpOrReplacement(Ljava/lang/String;)Z
    .locals 1

    .line 364
    sget-object p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isDrawerModeEnable()Z
    .locals 3

    .line 239
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetDrawerModeEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "is_all_apps_drawer_mode_enable"

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 242
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 243
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mDrawerModeDefault:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mDesktopModeDefault:I

    :goto_0
    const-string v2, "miui_home_drawer_default_enable"

    invoke-static {v0, v2, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public isFirstShowPairIcon()Z
    .locals 2

    const-string v0, "is_first_show_pair_icon"

    const/4 v1, 0x0

    .line 336
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isShouldShowAddPairToast()Z
    .locals 2

    const-string v0, "is_should_show_add_pair_toast"

    const/4 v1, 0x1

    .line 352
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setAddRecommendFolderIfNeed(Z)V
    .locals 1

    const-string v0, "key_need_add_recommend_folder"

    .line 312
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAllModeIsCloudBackUpOrReplacement(Z)V
    .locals 4

    .line 368
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getAllModes()[Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 369
    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getCloudBackUpOrReplacementPreKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIsCloudBackUpOrReplacement(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDrawerModeEnable(Z)V
    .locals 1

    const-string v0, "is_all_apps_drawer_mode_enable"

    .line 248
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIconSizeScale(F)V
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconScalePrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setIgnoreAlignScreenList(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ignore_align_screen_list"

    .line 276
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIsCloudBackUpOrReplacement(Ljava/lang/String;Z)V
    .locals 0

    .line 360
    sget-object p0, Lcom/miui/home/launcher/common/PreferenceUtils;->mPrivate:Lcom/miui/home/launcher/common/PreferenceUtils;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBooleanForce(Ljava/lang/String;Z)Z

    return-void
.end method

.method public setIsFirstShowPairIcon()V
    .locals 2

    const-string v0, "is_first_show_pair_icon"

    const/4 v1, 0x1

    .line 340
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBooleanForce(Ljava/lang/String;Z)Z

    return-void
.end method

.method public setIsOnUpgradeMiui15(Z)V
    .locals 1

    const-string v0, "on_upgrade_miui15"

    .line 253
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsShouldShowAddPairToast()V
    .locals 2

    const-string v0, "is_should_show_add_pair_toast"

    const/4 v1, 0x0

    .line 356
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBooleanForce(Ljava/lang/String;Z)Z

    return-void
.end method

.method public setSearchBarData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_search_bar_data_from_provider_new"

    .line 292
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSearchBarDataFromCloud(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_search_bar_data_from_cloud"

    .line 300
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSearchBarDataUpdateTime(J)V
    .locals 1

    const-string v0, "key_search_bar_data_update_time"

    .line 284
    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setSearchBarTestHash(I)V
    .locals 1

    const-string v0, "key_search_bar_test_hash"

    .line 308
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setShouldAlignScreen(Z)V
    .locals 1

    const-string v0, "should_align_screen"

    .line 268
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldAlignScreen()Z
    .locals 2

    const-string v0, "should_align_screen"

    const/4 v1, 0x0

    .line 264
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
