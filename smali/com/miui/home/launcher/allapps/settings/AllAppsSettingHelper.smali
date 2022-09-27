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

    .line 24
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    .line 25
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

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper$Holder;->access$100()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBackgroundAlpha()I
    .locals 3

    const-string v0, "background_alpha"

    const/16 v1, 0xff

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v0

    return v0
.end method

.method public getSavedColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 2

    const-string v0, "color_mode"

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object v0

    .line 45
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object v0

    .line 47
    :cond_1
    sget-object v1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object v0

    .line 50
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    :goto_0
    return-object v0
.end method

.method public isAppCategoryEnable()Z
    .locals 2

    const-string v0, "app_category_enable"

    const/4 v1, 0x1

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAutoAddNewAppShortcut()Z
    .locals 2

    const-string v0, "auto_add_app_shortcut"

    .line 90
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLetterFastScrollerEnable()Z
    .locals 3

    const-string v0, "letter_fast_scroller_enable"

    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRecommendAppsEnable()Z
    .locals 2

    const-string v0, "recommend_app_enable"

    const/4 v1, 0x1

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setAppCategoryEnable(Z)V
    .locals 1

    const-string v0, "app_category_enable"

    .line 86
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAutoAddNewAppShortcut(Z)V
    .locals 1

    const-string v0, "auto_add_app_shortcut"

    .line 94
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBackgroundAlpha(I)V
    .locals 1

    const-string v0, "background_alpha"

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setColorMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "color_mode"

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLetterFastScrollerEnable(Z)V
    .locals 1

    const-string v0, "letter_fast_scroller_enable"

    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRecommendAppsEnable(Z)V
    .locals 1

    const-string v0, "recommend_app_enable"

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
