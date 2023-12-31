.class public Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "AllAppsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "allapps"

    .line 27
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->registerOnSharedPreferenceChangeListener()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;
    .locals 1

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper$Holder;->access$100()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBackgroundAlpha()I
    .locals 2

    const/16 v0, 0xff

    const-string v1, "background_alpha"

    .line 61
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result p0

    return p0
.end method

.method public getSavedColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 2

    const-string v0, "color_mode"

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 46
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object p0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object p0

    .line 48
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object p0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object p0

    .line 50
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 51
    sget-object p0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object p0

    .line 53
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    :goto_0
    return-object p0
.end method

.method public isAppCategoryEnable()Z
    .locals 2

    const-string v0, "app_category_enable"

    const/4 v1, 0x1

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAutoAddNewAppShortcut()Z
    .locals 2

    .line 93
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "auto_add_app_shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isColorAnimEnabled()Z
    .locals 2

    const-string v0, "key_color_group_anim_open"

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isColorSearchEnabled()Z
    .locals 2

    const-string v0, "all_apps_color_filter_switch"

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isLetterFastScrollerEnable()Z
    .locals 2

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "letter_fast_scroller_enable"

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isRecommendAppsEnable()Z
    .locals 2

    const-string v0, "recommend_app_enable"

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setAppCategoryEnable(Z)V
    .locals 1

    const-string v0, "app_category_enable"

    .line 89
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAutoAddNewAppShortcut(Z)V
    .locals 1

    const-string v0, "auto_add_app_shortcut"

    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBackgroundAlpha(I)V
    .locals 1

    const-string v0, "background_alpha"

    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setColorAnimEnabled(Z)V
    .locals 1

    const-string v0, "key_color_group_anim_open"

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setColorMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "color_mode"

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setColorSearchEnabled(Z)V
    .locals 1

    const-string v0, "all_apps_color_filter_switch"

    .line 105
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLetterFastScrollerEnable(Z)V
    .locals 1

    const-string v0, "letter_fast_scroller_enable"

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRecommendAppsEnable(Z)V
    .locals 1

    const-string v0, "recommend_app_enable"

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
