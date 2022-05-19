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

.field private mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

.field private mRecentGuide:Landroidx/preference/Preference;

.field private mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

.field private mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private addIntentFlagsIfNeed(Landroid/content/Intent;)V
    .locals 1

    .line 175
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x10800000

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/CheckBoxPreference;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 265
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$_2gTYyRHGpIS21NPXdYTzHjkrSM;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$_2gTYyRHGpIS21NPXdYTzHjkrSM;-><init>(Ljava/util/function/Supplier;)V

    new-instance p2, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$xxwVmn9yNMNNLyWuDT9l-1bIE0s;

    invoke-direct {p2, p1}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$xxwVmn9yNMNNLyWuDT9l-1bIE0s;-><init>(Landroidx/preference/CheckBoxPreference;)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/preference/CheckBoxPreference;"
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    .line 194
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gWoXBFweduJELZ-bYhcjtVaEIT0;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gWoXBFweduJELZ-bYhcjtVaEIT0;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-object p1
.end method

.method private initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;
    .locals 1

    .line 181
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WX0MFrKU-Eso0k6tfott8QWY6FQ;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WX0MFrKU-Eso0k6tfott8QWY6FQ;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-object p1
.end method

.method private initGuidePreferences()V
    .locals 2

    const-string v0, "navigation_guide_home"

    .line 132
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$1JPg0YTE_mEX5bNxSSmgaeassRE;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$1JPg0YTE_mEX5bNxSSmgaeassRE;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_recent"

    .line 139
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$zN6bEjdHB7fi6e9SEPEHF6Oo5xQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$zN6bEjdHB7fi6e9SEPEHF6Oo5xQ;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_back"

    .line 146
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VGg8SbDiH7_21ht7QDc-vdgJ208;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VGg8SbDiH7_21ht7QDc-vdgJ208;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_app_menu"

    .line 154
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$d_hec78IlsuK758cYxTn6g7N4bQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$d_hec78IlsuK758cYxTn6g7N4bQ;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppMenuGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_appswitch"

    .line 160
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$jUeTyOvKiFuvaW82iVWYSdpjwlo;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$jUeTyOvKiFuvaW82iVWYSdpjwlo;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_app_quick_switch"

    .line 166
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

    .line 101
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setOnNavBarTypeChangedListener(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;)V

    :cond_0
    const-string v0, "navigation_position"

    .line 105
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$RECvCXdbFcKlXgAR6TOpnn2cBEA;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$RECvCXdbFcKlXgAR6TOpnn2cBEA;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initValuePreference(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/miui/home/settings/preference/ValuePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    .line 106
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.recents.navigation_position"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    const-string v0, "switch_screen_button_order"

    .line 107
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$mac2uedFWYXjE5sraRMdus_yC0M;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$mac2uedFWYXjE5sraRMdus_yC0M;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    const-string v0, "button_shortcut"

    .line 109
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    .line 110
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v1, "com.android.settings.KeyShortcutSettingsFragment"

    const v2, 0x7f10024d

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 110
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/util/SystemUiController;->getSystemUISettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    const-string v0, "audo_disable_screen_buttons"

    .line 112
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    .line 113
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v1, "com.android.settings.AutoDisableScreenButtonsAppListSettings"

    const v2, 0x7f1000ad

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 113
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/util/SystemUiController;->getSystemUISettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    const-string v0, "fsg_mistake_touch"

    .line 115
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$KdC7k3MUJjSvgwQvuk13eaJUkYM;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$KdC7k3MUJjSvgwQvuk13eaJUkYM;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    const-string v0, "navigation_hide_gesture_line"

    .line 119
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$MksvKbIVVg-WQrunKQv-XrvN-xg;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$MksvKbIVVg-WQrunKQv-XrvN-xg;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    const-string v0, "navigation_appswitch_anim"

    .line 127
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gHwDIH2Vrnqj_Zym2iVwAQKgM-c;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gHwDIH2Vrnqj_Zym2iVwAQKgM-c;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method private initValuePreference(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/miui/home/settings/preference/ValuePreference;
    .locals 0

    .line 297
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    .line 298
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-object p1
.end method

.method private isAppSwitchFeatureEnable()Z
    .locals 3

    .line 242
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

    .line 234
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

.method public static synthetic lambda$RECvCXdbFcKlXgAR6TOpnn2cBEA(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateNavigationPosition()V

    return-void
.end method

.method static synthetic lambda$asyncSetCheckboxPreferenceCheckedStatus$18(Ljava/util/function/Supplier;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 265
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic lambda$asyncSetCheckboxPreferenceCheckedStatus$19(Landroidx/preference/CheckBoxPreference;Ljava/lang/Boolean;)V
    .locals 0

    .line 266
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$initCheckboxPreferenceItem$11(Ljava/util/function/Consumer;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 195
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initClickPreference$10(Ljava/lang/Runnable;Landroidx/preference/Preference;)Z
    .locals 0

    .line 184
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$initGuidePreferences$4(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    const-string v0, "home"

    .line 133
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_TO_HOME"

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$5(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    const-string v0, "recents"

    .line 140
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_TO_RECENTTASK"

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$6(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    const-string v0, "back"

    .line 147
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "FSG_BACK_GESTURE"

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEMO_STEP"

    const/4 v2, 0x1

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$7(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 2

    const-string v0, "in_app_function"

    .line 155
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.menu"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$8(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    .line 161
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAppSwitchFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$9(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 2

    const-string v0, "quick_switch"

    .line 167
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.quick_switch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$0(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->setRightHand(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$1(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setMistakeTouchEnable(Z)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$2(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 121
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setHideGestureLine(Z)V

    if-eqz p1, :cond_0

    .line 122
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->isNeedShowGestureLineGuide()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->showNoGestureLineLearnDialog()V

    .line 124
    invoke-static {}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackShowLearnGesturesDialogEvent()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$3(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setAppSwitchFeatureEnable(Z)V

    return-void
.end method

.method static synthetic lambda$showNoGestureLineLearnDialog$20(Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isClickOnDialog:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object v0

    iget-boolean p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isCheckboxChecked:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->setNeedShowGestureLineGuide(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateNavigationPosition$21(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 285
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/settings/NavigationUtils;->getNavigationPosition(Landroid/content/Context;)I

    move-result p1

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$updateNavigationPosition$22(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Integer;)V
    .locals 2

    .line 286
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 287
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const v0, 0x7f100309

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 288
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 289
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const v0, 0x7f10030a

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const v0, 0x7f100308

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$updatePreferenceVisibility$12(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$updatePreferenceVisibility$13(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 214
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateGestureLineVisible(Z)V

    return-void
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$14(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isRightHand(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$15(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isMistakeTouchEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$16(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$17(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 260
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAppSwitchFeatureEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private setAppSwitchFeatureEnable(Z)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setHideGestureLine(Z)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateGestureLineVisible(Z)V

    return-void
.end method

.method private setMistakeTouchEnable(Z)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_mistake_touch_toast"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showNoGestureLineLearnDialog()V
    .locals 2

    .line 271
    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1002f5

    .line 272
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setTitle(I)V

    const v1, 0x7f1002f4

    .line 273
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setMessage(I)V

    const-string v1, "com.miui.systemui.fsgesture.quick_switch"

    .line 274
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setPositiveButtonIntentAction(Ljava/lang/String;)V

    .line 275
    sget-object v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g3RdU7aHPsdSp5DuAn2BlXyR5Pk;->INSTANCE:Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g3RdU7aHPsdSp5DuAn2BlXyR5Pk;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setClickDialogButtonConsume(Ljava/util/function/Consumer;)V

    .line 280
    invoke-virtual {v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->show()V

    return-void
.end method

.method private updateGestureLineVisible(Z)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const v1, 0x7f1002d6

    goto :goto_0

    :cond_0
    const v1, 0x7f1002d8

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 221
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    const v1, 0x7f080516

    goto :goto_1

    :cond_1
    const v1, 0x7f080515

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 223
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_2

    const v1, 0x7f08051b

    goto :goto_2

    :cond_2
    const v1, 0x7f08051a

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 225
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_3

    const v1, 0x7f080519

    goto :goto_3

    :cond_3
    const v1, 0x7f080518

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 227
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_4

    const v1, 0x7f08051d

    goto :goto_4

    :cond_4
    const v1, 0x7f08051c

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 229
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppMenuGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_5

    const p1, 0x7f080514

    goto :goto_5

    :cond_5
    const p1, 0x7f080513

    :goto_5
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    return-void
.end method

.method private updateNavigationPosition()V
    .locals 3

    .line 284
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$5Pcx2DIEdLbI3at1pw6Diy1fh8A;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$5Pcx2DIEdLbI3at1pw6Diy1fh8A;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gHnbI2syQPlhTbWZqSIO6hkrgng;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gHnbI2syQPlhTbWZqSIO6hkrgng;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updatePreferenceVisibility()V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 204
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 205
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    sget-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 206
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 207
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 208
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {v1, v4}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 209
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    invoke-virtual {v1, v4}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 210
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    invoke-virtual {v1, v4}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 211
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_5

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_5

    :cond_5
    move v4, v2

    :goto_5
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 212
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-nez v0, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 213
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$j8-YWNpl5P90hDkkN_4tYbasJes;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$j8-YWNpl5P90hDkkN_4tYbasJes;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$LPwvdshGhTpz1DPe2lkOtEAwoDY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$LPwvdshGhTpz1DPe2lkOtEAwoDY;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updateSettingPreferencesCheckedState()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$XzlGomXbSelglBvnVMoCVjhia2I;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$XzlGomXbSelglBvnVMoCVjhia2I;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    .line 256
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VWAiI4eJ3blTuUvI6BMaRszh8o0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VWAiI4eJ3blTuUvI6BMaRszh8o0;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    .line 257
    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$V1Q-dSTKGGkBiOn8dWsZpoHHgT4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$V1Q-dSTKGGkBiOn8dWsZpoHHgT4;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$dkAMm2yfehdCMmlVjApPNScZAzE;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$dkAMm2yfehdCMmlVjApPNScZAzE;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f13001f

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseGestureVersion3(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "navigation_guide_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    .line 89
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

    .line 90
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initSettingPreferences()V

    .line 91
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initGuidePreferences()V

    .line 92
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateSettingPreferencesCheckedState()V

    .line 93
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updatePreferenceVisibility()V

    return-void
.end method

.method public onNavBarTypeChanged()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updatePreferenceVisibility()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 304
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onResume()V

    .line 305
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/ValuePreference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateNavigationPosition()V

    :cond_0
    return-void
.end method
