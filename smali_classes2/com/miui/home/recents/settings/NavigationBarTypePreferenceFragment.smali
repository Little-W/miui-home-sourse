.class public Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "NavigationBarTypePreferenceFragment.java"

# interfaces
.implements Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;


# static fields
.field private static sExistInputApk:I


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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private addIntentFlagsIfNeed(Landroid/content/Intent;)V
    .locals 1

    .line 183
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x10800000

    .line 184
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

    .line 273
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

    .line 200
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    .line 202
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gWoXBFweduJELZ-bYhcjtVaEIT0;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gWoXBFweduJELZ-bYhcjtVaEIT0;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-object p1
.end method

.method private initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;
    .locals 1

    .line 189
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WX0MFrKU-Eso0k6tfott8QWY6FQ;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WX0MFrKU-Eso0k6tfott8QWY6FQ;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-object p1
.end method

.method private initGuidePreferences()V
    .locals 2

    const-string v0, "navigation_guide_home"

    .line 140
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$1JPg0YTE_mEX5bNxSSmgaeassRE;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$1JPg0YTE_mEX5bNxSSmgaeassRE;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_recent"

    .line 147
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$zN6bEjdHB7fi6e9SEPEHF6Oo5xQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$zN6bEjdHB7fi6e9SEPEHF6Oo5xQ;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_back"

    .line 154
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VGg8SbDiH7_21ht7QDc-vdgJ208;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VGg8SbDiH7_21ht7QDc-vdgJ208;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_app_menu"

    .line 162
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$d_hec78IlsuK758cYxTn6g7N4bQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$d_hec78IlsuK758cYxTn6g7N4bQ;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppMenuGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_appswitch"

    .line 168
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$jUeTyOvKiFuvaW82iVWYSdpjwlo;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$jUeTyOvKiFuvaW82iVWYSdpjwlo;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_app_quick_switch"

    .line 174
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$z6Hwz2cMk-xXfjRNGYl8Tpiokbc;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$z6Hwz2cMk-xXfjRNGYl8Tpiokbc;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    return-void
.end method

.method private initSettingPreferences()V
    .locals 3

    const-string v0, "nav_bar_type_container_preference"

    .line 112
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setOnNavBarTypeChangedListener(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;)V

    :cond_0
    const-string v0, "navigation_position"

    .line 116
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$RECvCXdbFcKlXgAR6TOpnn2cBEA;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$RECvCXdbFcKlXgAR6TOpnn2cBEA;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initValuePreference(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/miui/home/settings/preference/ValuePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    .line 117
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.recents.navigation_position"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    const-string v0, "switch_screen_button_order"

    .line 118
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$mac2uedFWYXjE5sraRMdus_yC0M;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$mac2uedFWYXjE5sraRMdus_yC0M;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    const-string v0, "button_shortcut"

    .line 120
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v0, "audo_disable_screen_buttons"

    .line 121
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initInputSettingsPreference()V

    const-string v0, "fsg_mistake_touch"

    .line 123
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$KdC7k3MUJjSvgwQvuk13eaJUkYM;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$KdC7k3MUJjSvgwQvuk13eaJUkYM;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    const-string v0, "navigation_hide_gesture_line"

    .line 127
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$MksvKbIVVg-WQrunKQv-XrvN-xg;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$MksvKbIVVg-WQrunKQv-XrvN-xg;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    const-string v0, "navigation_appswitch_anim"

    .line 135
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gHwDIH2Vrnqj_Zym2iVwAQKgM-c;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gHwDIH2Vrnqj_Zym2iVwAQKgM-c;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method private initValuePreference(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/miui/home/settings/preference/ValuePreference;
    .locals 0

    .line 305
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    .line 306
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-object p1
.end method

.method private isAppSwitchFeatureEnable()Z
    .locals 3

    .line 250
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

    .line 242
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

    .line 273
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic lambda$asyncSetCheckboxPreferenceCheckedStatus$19(Landroidx/preference/CheckBoxPreference;Ljava/lang/Boolean;)V
    .locals 0

    .line 274
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$initCheckboxPreferenceItem$11(Ljava/util/function/Consumer;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 203
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initClickPreference$10(Ljava/lang/Runnable;Landroidx/preference/Preference;)Z
    .locals 0

    .line 192
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$initGuidePreferences$4(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    const-string v0, "home"

    .line 141
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_TO_HOME"

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$5(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    const-string v0, "recents"

    .line 148
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_TO_RECENTTASK"

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$6(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    const-string v0, "back"

    .line 155
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "FSG_BACK_GESTURE"

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEMO_STEP"

    const/4 v2, 0x1

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$7(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 2

    const-string v0, "in_app_function"

    .line 163
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.menu"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$8(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    .line 169
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAppSwitchFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11033f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$9(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 2

    const-string v0, "quick_switch"

    .line 175
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.quick_switch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$0(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->setRightHand(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$1(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    .line 124
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setMistakeTouchEnable(Z)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$2(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 129
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setHideGestureLine(Z)V

    if-eqz p1, :cond_0

    .line 130
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->isNeedShowGestureLineGuide()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->showNoGestureLineLearnDialog()V

    .line 132
    invoke-static {}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackShowLearnGesturesDialogEvent()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$3(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setAppSwitchFeatureEnable(Z)V

    return-void
.end method

.method static synthetic lambda$showNoGestureLineLearnDialog$20(Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isClickOnDialog:Z

    if-eqz v0, :cond_0

    .line 285
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

    .line 293
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/settings/NavigationUtils;->getNavigationPosition(Landroid/content/Context;)I

    move-result p1

    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$updateNavigationPosition$22(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Integer;)V
    .locals 2

    .line 294
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 295
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const v0, 0x7f110367

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 296
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const v0, 0x7f110368

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const v0, 0x7f110366

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$updatePreferenceVisibility$12(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$updatePreferenceVisibility$13(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 222
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateGestureLineVisible(Z)V

    return-void
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$14(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isRightHand(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$15(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isMistakeTouchEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$16(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$17(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    .line 268
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAppSwitchFeatureEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private setAppSwitchFeatureEnable(Z)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setHideGestureLine(Z)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateGestureLineVisible(Z)V

    return-void
.end method

.method private setMistakeTouchEnable(Z)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_mistake_touch_toast"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showNoGestureLineLearnDialog()V
    .locals 2

    .line 279
    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110353

    .line 280
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setTitle(I)V

    const v1, 0x7f110352

    .line 281
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setMessage(I)V

    const-string v1, "com.miui.systemui.fsgesture.quick_switch"

    .line 282
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setPositiveButtonIntentAction(Ljava/lang/String;)V

    .line 283
    sget-object v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g3RdU7aHPsdSp5DuAn2BlXyR5Pk;->INSTANCE:Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g3RdU7aHPsdSp5DuAn2BlXyR5Pk;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setClickDialogButtonConsume(Ljava/util/function/Consumer;)V

    .line 288
    invoke-virtual {v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->show()V

    return-void
.end method

.method private updateGestureLineVisible(Z)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const v1, 0x7f110334

    goto :goto_0

    :cond_0
    const v1, 0x7f110336

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 229
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    const v1, 0x7f08061a

    goto :goto_1

    :cond_1
    const v1, 0x7f080619

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 231
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_2

    const v1, 0x7f08061f

    goto :goto_2

    :cond_2
    const v1, 0x7f08061e

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 233
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_3

    const v1, 0x7f08061d

    goto :goto_3

    :cond_3
    const v1, 0x7f08061c

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 235
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_4

    const v1, 0x7f080621

    goto :goto_4

    :cond_4
    const v1, 0x7f080620

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 237
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppMenuGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_5

    const p1, 0x7f080618

    goto :goto_5

    :cond_5
    const p1, 0x7f080617

    :goto_5
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    return-void
.end method

.method private updateNavigationPosition()V
    .locals 3

    .line 292
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

    .line 210
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 212
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 213
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

    .line 214
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 215
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

    .line 216
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

    .line 217
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

    .line 218
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

    .line 219
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

    .line 220
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-nez v0, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 221
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

    .line 263
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$XzlGomXbSelglBvnVMoCVjhia2I;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$XzlGomXbSelglBvnVMoCVjhia2I;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    .line 264
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VWAiI4eJ3blTuUvI6BMaRszh8o0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VWAiI4eJ3blTuUvI6BMaRszh8o0;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    .line 265
    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$V1Q-dSTKGGkBiOn8dWsZpoHHgT4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$V1Q-dSTKGGkBiOn8dWsZpoHHgT4;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$dkAMm2yfehdCMmlVjApPNScZAzE;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$dkAMm2yfehdCMmlVjApPNScZAzE;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initInputApkStatus(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "com.miui.miinput"

    const/4 v1, 0x0

    .line 343
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const/4 v0, 0x1

    .line 344
    sput v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    .line 347
    sput v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    .line 348
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method public initInputSettingsPreference()V
    .locals 5

    .line 319
    sget v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initInputApkStatus(Landroid/content/Context;)Z

    .line 322
    :cond_0
    sget v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    const/4 v1, 0x1

    const v2, 0x7f1100af

    const v3, 0x7f11025f

    if-ne v0, v1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v1, "com.miui.miinput.keyshortcut.KeyShortcutActivity"

    .line 325
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 323
    invoke-static {v1, v3, v4}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiInputSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 326
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v1, "com.miui.miinput.disablebutton.AutoDisableScreenButtonsAppListSettingsActivity"

    .line 328
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 326
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiInputSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v1, "com.android.settings.KeyShortcutSettingsFragment"

    .line 332
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 330
    invoke-static {v1, v3, v4}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 333
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v1, "com.android.settings.AutoDisableScreenButtonsAppListSettings"

    .line 335
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 333
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f140023

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseGestureVersion3(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "navigation_guide_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    .line 100
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

    .line 101
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initSettingPreferences()V

    .line 102
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initGuidePreferences()V

    .line 103
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateSettingPreferencesCheckedState()V

    .line 104
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updatePreferenceVisibility()V

    return-void
.end method

.method public onNavBarTypeChanged()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updatePreferenceVisibility()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 312
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onResume()V

    .line 313
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/ValuePreference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateNavigationPosition()V

    :cond_0
    return-void
.end method
