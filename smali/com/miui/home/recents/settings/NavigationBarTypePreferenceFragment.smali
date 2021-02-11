.class public Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "NavigationBarTypePreferenceFragment.java"

# interfaces
.implements Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;


# instance fields
.field private mAppMenuGuide:Landroidx/preference/Preference;

.field private mAppQuickSwitchGuide:Landroidx/preference/Preference;

.field private mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

.field private mAppSwitchGuide:Landroidx/preference/Preference;

.field private mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

.field private mBackGuide:Landroidx/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mGuideCategory:Landroidx/preference/PreferenceCategory;

.field private mHideGestureLine:Landroidx/preference/CheckBoxPreference;

.field private mHomeGuide:Landroidx/preference/Preference;

.field private mIsShowKeyShortcutsEntry:Z

.field private mIsUseGestureVersion3:Z

.field private mMistakeTouch:Landroidx/preference/CheckBoxPreference;

.field private mRecentGuide:Landroidx/preference/Preference;

.field private mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

.field private mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava8/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/CheckBoxPreference;",
            "Ljava8/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g70wt7Wi5RNbAB0qZnmXeNsDHWM;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g70wt7Wi5RNbAB0qZnmXeNsDHWM;-><init>(Ljava8/util/function/Supplier;)V

    new-instance p2, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$vBWcmkUMZWSWhIT8qzXrBb9bG5o;

    invoke-direct {p2, p1}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$vBWcmkUMZWSWhIT8qzXrBb9bG5o;-><init>(Landroidx/preference/CheckBoxPreference;)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private initCheckboxPreferenceItem(Ljava/lang/String;Ljava8/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava8/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/preference/CheckBoxPreference;"
        }
    .end annotation

    .line 176
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    .line 178
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$Zz3T_cUQq8kW9b0POgnJYA33g7U;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$Zz3T_cUQq8kW9b0POgnJYA33g7U;-><init>(Ljava8/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-object p1
.end method

.method private initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;
    .locals 1

    .line 165
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WX0MFrKU-Eso0k6tfott8QWY6FQ;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WX0MFrKU-Eso0k6tfott8QWY6FQ;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-object p1
.end method

.method private initGuidePreferences()V
    .locals 2

    const-string v0, "navigation_guide_home"

    .line 127
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$1JPg0YTE_mEX5bNxSSmgaeassRE;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$1JPg0YTE_mEX5bNxSSmgaeassRE;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_recent"

    .line 133
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$zN6bEjdHB7fi6e9SEPEHF6Oo5xQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$zN6bEjdHB7fi6e9SEPEHF6Oo5xQ;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_back"

    .line 139
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VGg8SbDiH7_21ht7QDc-vdgJ208;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VGg8SbDiH7_21ht7QDc-vdgJ208;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_app_menu"

    .line 146
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$d_hec78IlsuK758cYxTn6g7N4bQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$d_hec78IlsuK758cYxTn6g7N4bQ;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppMenuGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_appswitch"

    .line 151
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$jUeTyOvKiFuvaW82iVWYSdpjwlo;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$jUeTyOvKiFuvaW82iVWYSdpjwlo;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_app_quick_switch"

    .line 157
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$z6Hwz2cMk-xXfjRNGYl8Tpiokbc;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$z6Hwz2cMk-xXfjRNGYl8Tpiokbc;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    return-void
.end method

.method private initSettingPreferences()V
    .locals 4

    const-string v0, "nav_bar_type_container_preference"

    .line 96
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setOnNavBarTypeChangedListener(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;)V

    :cond_0
    const-string v0, "switch_screen_button_order"

    .line 101
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$IDkHg65eYCJLwW23qoBIWpDLRYI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$IDkHg65eYCJLwW23qoBIWpDLRYI;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava8/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    const-string v0, "button_shortcut"

    .line 103
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    .line 104
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v1, "com.android.settings.KeyShortcutSettingsFragment"

    const v2, 0x7f100152

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 104
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/util/SystemUiController;->getSystemUISettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    const-string v0, "audo_disable_screen_buttons"

    .line 106
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    .line 107
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v1, "com.android.settings.AutoDisableScreenButtonsAppListSettings"

    const v2, 0x7f10009b

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 107
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/util/SystemUiController;->getSystemUISettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    const-string v0, "fsg_mistake_touch"

    .line 109
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$FVT6pM21QYtHR5piayy2UGZzBiU;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$FVT6pM21QYtHR5piayy2UGZzBiU;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava8/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    const-string v0, "navigation_hide_gesture_line"

    .line 113
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$OnDYeTZyAekPP56q4Q7zCYZg_GA;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$OnDYeTZyAekPP56q4Q7zCYZg_GA;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava8/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    const-string v0, "navigation_appswitch_anim"

    .line 122
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$1B2d3fiRC8Lczgswn8OeA3cyHnM;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$1B2d3fiRC8Lczgswn8OeA3cyHnM;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava8/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method private isAppSwitchFeatureEnable()Z
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isMistakeTouchEnable()Z
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_mistake_touch_toast"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic lambda$asyncSetCheckboxPreferenceCheckedStatus$18(Ljava8/util/function/Supplier;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 249
    invoke-interface {p0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic lambda$asyncSetCheckboxPreferenceCheckedStatus$19(Landroidx/preference/CheckBoxPreference;Ljava/lang/Boolean;)V
    .locals 0

    .line 250
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$initCheckboxPreferenceItem$11(Ljava8/util/function/Consumer;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 179
    invoke-interface {p0, p2}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initClickPreference$10(Ljava/lang/Runnable;Landroidx/preference/Preference;)Z
    .locals 0

    .line 168
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$initGuidePreferences$4(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    const-string v0, "home"

    .line 128
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_TO_HOME"

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$5(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    const-string v0, "recents"

    .line 134
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_TO_RECENTTASK"

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$6(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    const-string v0, "back"

    .line 140
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "FSG_BACK_GESTURE"

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEMO_STEP"

    const/4 v2, 0x1

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$7(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 2

    const-string v0, "in_app_function"

    .line 147
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.menu"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$8(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    .line 152
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAppSwitchFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$9(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 2

    const-string v0, "quick_switch"

    .line 158
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.quick_switch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$0(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->setRightHand(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$1(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    .line 110
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setMistakeTouchEnable(Z)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$2(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 1

    .line 114
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->isNeedShowGestureLineGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->showNoGestureLineLearnDialog()V

    .line 117
    invoke-static {}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackShowLearnGesturesDialogEvent()V

    goto :goto_0

    .line 119
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setHideGestureLine(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$3(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    .line 123
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setAppSwitchFeatureEnable(Z)V

    return-void
.end method

.method public static synthetic lambda$showNoGestureLineLearnDialog$20(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V
    .locals 1

    .line 260
    iget-boolean v0, p1, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isClickOnDialog:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object v0

    iget-boolean p1, p1, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isCheckboxChecked:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->setNeedShowGestureLineGuide(Z)V

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setHideGestureLine(Z)V

    return-void
.end method

.method public static synthetic lambda$updatePreferenceVisibility$12(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$updatePreferenceVisibility$13(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 198
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateGestureLineVisible(Z)V

    return-void
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$14(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isRightHand(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$15(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 240
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isMistakeTouchEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$16(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$17(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 244
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAppSwitchFeatureEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private setAppSwitchFeatureEnable(Z)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setHideGestureLine(Z)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateGestureLineVisible(Z)V

    return-void
.end method

.method private setMistakeTouchEnable(Z)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_mistake_touch_toast"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showNoGestureLineLearnDialog()V
    .locals 2

    .line 255
    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1001a1

    .line 256
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setTitle(I)V

    const v1, 0x7f1001a0

    .line 257
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setMessage(I)V

    const-string v1, "com.miui.systemui.fsgesture.quick_switch"

    .line 258
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setPositiveButtonIntentAction(Ljava/lang/String;)V

    .line 259
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$HUup_7Nv07E9g1BqKGghMo0zKK4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$HUup_7Nv07E9g1BqKGghMo0zKK4;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setClickDialogButtonConsume(Ljava8/util/function/Consumer;)V

    .line 265
    invoke-virtual {v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->show()V

    return-void
.end method

.method private updateGestureLineVisible(Z)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const v1, 0x7f10018f

    goto :goto_0

    :cond_0
    const v1, 0x7f100190

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 205
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    const v1, 0x7f0801af

    goto :goto_1

    :cond_1
    const v1, 0x7f0801ae

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 207
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_2

    const v1, 0x7f0801b4

    goto :goto_2

    :cond_2
    const v1, 0x7f0801b3

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 209
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_3

    const v1, 0x7f0801b2

    goto :goto_3

    :cond_3
    const v1, 0x7f0801b1

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 211
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_4

    const v1, 0x7f0801b6

    goto :goto_4

    :cond_4
    const v1, 0x7f0801b5

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 213
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppMenuGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_5

    const p1, 0x7f0801ad

    goto :goto_5

    :cond_5
    const p1, 0x7f0801ac

    :goto_5
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    return-void
.end method

.method private updatePreferenceVisibility()V
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 189
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 190
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 191
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-boolean v2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 192
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    iget-boolean v2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 193
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 194
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 195
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 196
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-nez v0, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 197
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$Z9U7gcf4wIrGX68gD7ch614bdUc;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$Z9U7gcf4wIrGX68gD7ch614bdUc;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$RylZta4lisDbcO3ABOYBCOMt3HI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$RylZta4lisDbcO3ABOYBCOMt3HI;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updateSettingPreferencesCheckedState()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$FuUmK2IzgebDTe9qfHrlXl6QeC0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$FuUmK2IzgebDTe9qfHrlXl6QeC0;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava8/util/function/Supplier;)V

    .line 240
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$Em1PcyhEmeO_rPvv2KxEPVftIG4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$Em1PcyhEmeO_rPvv2KxEPVftIG4;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava8/util/function/Supplier;)V

    .line 241
    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$BhS86fLKqRpHGgGgGpMoaL5I2Bs;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$BhS86fLKqRpHGgGgGpMoaL5I2Bs;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava8/util/function/Supplier;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$8jmigTP6QZoTD-X_HgK_CfYPaJY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$8jmigTP6QZoTD-X_HgK_CfYPaJY;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava8/util/function/Supplier;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f13001d

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseGestureVersion3(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "navigation_guide_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "support_gesture_shortcut_settings"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    .line 85
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initSettingPreferences()V

    .line 86
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initGuidePreferences()V

    .line 87
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateSettingPreferencesCheckedState()V

    return-void
.end method

.method public onNavBarTypeChanged()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updatePreferenceVisibility()V

    return-void
.end method
