.class public Lcom/miui/home/settings/AllAppsSettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "AllAppsSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;


# instance fields
.field private final CONTENT_CENTER:Ljava/lang/String;

.field private final FAST_SCROLLER_DEFAULT:Ljava/lang/String;

.field private final FAST_SCROLLER_LETTER:Ljava/lang/String;

.field private final GLOBAL_SEARCH:Ljava/lang/String;

.field private final KEY_CONTENT_CENTER:Ljava/lang/String;

.field private final KEY_GLOBAL_SEARCH:Ljava/lang/String;

.field private final KEY_NO_ACTION:Ljava/lang/String;

.field private final NO_ACTION:Ljava/lang/String;

.field private mAppCategory:Lcom/miui/home/settings/preference/ValuePreference;

.field private mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mClassicSettings:Landroidx/preference/PreferenceCategory;

.field private mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

.field private mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

.field private mDrawerSettings:Landroidx/preference/PreferenceCategory;

.field private mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

.field private mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

.field private mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mSlideUpContentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const-string v0, "global_search"

    .line 64
    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->GLOBAL_SEARCH:Ljava/lang/String;

    const-string v0, "content_center"

    .line 65
    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->CONTENT_CENTER:Ljava/lang/String;

    const-string v0, "no_action"

    .line 66
    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->NO_ACTION:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100143

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100142

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100144

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100050

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->FAST_SCROLLER_DEFAULT:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f10004f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->FAST_SCROLLER_LETTER:Ljava/lang/String;

    return-void
.end method

.method private findPreferences()V
    .locals 1

    const-string v0, "desktop_mode"

    .line 161
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/DesktopModePreference;

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    const-string v0, "classic_settings"

    .line 162
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    const-string v0, "launcher_slide_up"

    .line 163
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ListPreference;

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    const-string v0, "launcher_slide_up_global_pref"

    .line 164
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "drawer_settings"

    .line 165
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_recommend_apps"

    .line 166
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_app_category"

    .line 167
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mAppCategory:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v0, "key_drawer_background"

    .line 168
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v0, "fast_scroller_style"

    .line 169
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ListPreference;

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    const-string v0, "key_auto_add_new_app_shortcut"

    .line 170
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    return-void
.end method

.method private initSlideUpContentMap()V
    .locals 3

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    .line 135
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    const-string v2, "global_search"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    const-string v2, "content_center"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    const-string v2, "no_action"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateViewIfDesktopModeChange(Z)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 204
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public OnDesktopModeTemporaryChange(Z)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/miui/home/settings/AllAppsSettingsFragment;->updateViewIfDesktopModeChange(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    const/high16 p1, 0x7f130000

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/AllAppsSettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->findPreferences()V

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "is_drawer_setting"

    .line 80
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "is_slide_up_setting"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 83
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setVisible(Z)V

    .line 84
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setVisible(Z)V

    .line 87
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p1

    .line 90
    invoke-direct {p0, p1}, Lcom/miui/home/settings/AllAppsSettingsFragment;->updateViewIfDesktopModeChange(Z)V

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setOnDesktopModeTemporaryChangeListener(Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;)V

    .line 95
    invoke-direct {p0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->initSlideUpContentMap()V

    .line 96
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 p2, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 99
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 102
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedInstalled()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 103
    new-array p1, p1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object v2, p1, v0

    iget-object v2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    aput-object v2, p1, v1

    iget-object v2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    aput-object v2, p1, p2

    goto :goto_1

    .line 105
    :cond_3
    new-array p1, p2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object v2, p1, v0

    iget-object v2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    aput-object v2, p1, v1

    .line 107
    :goto_1
    iget-object v2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpValue(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 111
    iget-object v2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 115
    :goto_2
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mAppCategory:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.home.action.CATEGORY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 120
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.home.action.DRAWER_COLOR_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 123
    new-array p1, p2, [Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->FAST_SCROLLER_DEFAULT:Ljava/lang/String;

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->FAST_SCROLLER_LETTER:Ljava/lang/String;

    aput-object p2, p1, v1

    .line 124
    iget-object p2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 125
    iget-object p2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 126
    iget-object p2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isLetterFastScrollerEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object p1, p1, v1

    goto :goto_3

    :cond_4
    aget-object p1, p1, v0

    :goto_3
    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAutoAddNewAppShortcut()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 130
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 148
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroyView()V

    .line 149
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 154
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 181
    :cond_1
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 187
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setRecommendAppsEnable(Z)V

    goto :goto_1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->FAST_SCROLLER_LETTER:Ljava/lang/String;

    if-ne p2, v0, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setLetterFastScrollerEnable(Z)V

    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 191
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setAutoAddNewAppShortcut(Z)V

    goto :goto_1

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v0, :cond_4

    .line 193
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "launcher_slideup_gesture"

    iget-object v2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p2, v0, v2}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object p2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_5

    .line 197
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/DeviceConfig;->setGlobalSearchEnable(Landroid/content/Context;Z)V

    :cond_5
    :goto_1
    return v1
.end method

.method public onStart()V
    .locals 2

    .line 209
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onStart()V

    .line 210
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/DesktopModePreference;->setInitValue(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 215
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onStop()V

    .line 216
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setDesktopMode()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 143
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method
