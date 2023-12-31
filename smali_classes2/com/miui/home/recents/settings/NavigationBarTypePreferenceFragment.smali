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

.field private mAssistGesture:Landroidx/preference/CheckBoxPreference;

.field private mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

.field private mBackGuide:Landroidx/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mGuideCategory:Landroidx/preference/PreferenceCategory;

.field private mHideGestureLine:Landroidx/preference/CheckBoxPreference;

.field private mHomeGuide:Landroidx/preference/Preference;

.field private mIsShowKeyShortcutsEntry:Z

.field private mIsSupportQuickSwitchGesture:Z

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
    .locals 1

    .line 37
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportQuickSwitchGesture()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsSupportQuickSwitchGesture:Z

    return-void
.end method

.method private addIntentFlagsIfNeed(Landroid/content/Intent;)V
    .locals 0

    .line 194
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/high16 p0, 0x10800000

    .line 195
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/CheckBoxPreference;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 295
    new-instance p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$HuWXNY0YIrcF-WWkZFHdWnH4LeY;

    invoke-direct {p0, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$HuWXNY0YIrcF-WWkZFHdWnH4LeY;-><init>(Ljava/util/function/Supplier;)V

    new-instance p2, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g7bzjzTNpqkv-_rmU6L6Nb5axa8;

    invoke-direct {p2, p1}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g7bzjzTNpqkv-_rmU6L6Nb5axa8;-><init>(Landroidx/preference/CheckBoxPreference;)V

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;
    .locals 0
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

    .line 211
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_0

    .line 213
    new-instance p1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$V5SgPtGcaA7634j9gWrHhwBeOiY;

    invoke-direct {p1, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$V5SgPtGcaA7634j9gWrHhwBeOiY;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-object p0
.end method

.method private initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 202
    new-instance p1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$_Tud_-K1SXA0hEjvfVObKMTlVDw;

    invoke-direct {p1, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$_Tud_-K1SXA0hEjvfVObKMTlVDw;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-object p0
.end method

.method private initGuidePreferences()V
    .locals 2

    .line 151
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$zN6bEjdHB7fi6e9SEPEHF6Oo5xQ;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$zN6bEjdHB7fi6e9SEPEHF6Oo5xQ;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_guide_home"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuide:Landroidx/preference/Preference;

    .line 158
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VGg8SbDiH7_21ht7QDc-vdgJ208;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VGg8SbDiH7_21ht7QDc-vdgJ208;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_guide_recent"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuide:Landroidx/preference/Preference;

    .line 165
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$d_hec78IlsuK758cYxTn6g7N4bQ;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$d_hec78IlsuK758cYxTn6g7N4bQ;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_guide_back"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuide:Landroidx/preference/Preference;

    .line 173
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$jUeTyOvKiFuvaW82iVWYSdpjwlo;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$jUeTyOvKiFuvaW82iVWYSdpjwlo;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_guide_app_menu"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppMenuGuide:Landroidx/preference/Preference;

    .line 179
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$z6Hwz2cMk-xXfjRNGYl8Tpiokbc;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$z6Hwz2cMk-xXfjRNGYl8Tpiokbc;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_guide_appswitch"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchGuide:Landroidx/preference/Preference;

    .line 185
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$0r4vc6IQNzLOCoTS5LQ-nbV4Ua8;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$0r4vc6IQNzLOCoTS5LQ-nbV4Ua8;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_guide_app_quick_switch"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    return-void
.end method

.method private initSettingPreferences()V
    .locals 3

    const-string v0, "nav_bar_type_container_preference"

    .line 119
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setOnNavBarTypeChangedListener(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;)V

    .line 123
    :cond_0
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$RECvCXdbFcKlXgAR6TOpnn2cBEA;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$RECvCXdbFcKlXgAR6TOpnn2cBEA;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_position"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initValuePreference(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/miui/home/settings/preference/ValuePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    .line 124
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.recents.navigation_position"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 125
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$mac2uedFWYXjE5sraRMdus_yC0M;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$mac2uedFWYXjE5sraRMdus_yC0M;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "switch_screen_button_order"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    const-string v0, "button_shortcut"

    .line 127
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v0, "audo_disable_screen_buttons"

    .line 128
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initInputSettingsPreference()V

    .line 130
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$KdC7k3MUJjSvgwQvuk13eaJUkYM;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$KdC7k3MUJjSvgwQvuk13eaJUkYM;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "fsg_mistake_touch"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    .line 133
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$MksvKbIVVg-WQrunKQv-XrvN-xg;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$MksvKbIVVg-WQrunKQv-XrvN-xg;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "fsg_assist_enable"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAssistGesture:Landroidx/preference/CheckBoxPreference;

    .line 137
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gHwDIH2Vrnqj_Zym2iVwAQKgM-c;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gHwDIH2Vrnqj_Zym2iVwAQKgM-c;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_hide_gesture_line"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    .line 146
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WKStR96ijiIxvvaadY55J0IdmcI;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WKStR96ijiIxvvaadY55J0IdmcI;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const-string v1, "navigation_appswitch_anim"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method private initValuePreference(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/miui/home/settings/preference/ValuePreference;
    .locals 0

    .line 340
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/miui/home/settings/preference/ValuePreference;

    .line 341
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-object p0
.end method

.method private isAppSwitchFeatureEnable()Z
    .locals 2

    .line 271
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "show_gesture_appswitch_feature"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isAssistGestureEnable()Z
    .locals 2

    .line 263
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "google_assist_enable"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isMistakeTouchEnable()Z
    .locals 2

    .line 255
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "show_mistake_touch_toast"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$RECvCXdbFcKlXgAR6TOpnn2cBEA(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateNavigationPosition()V

    return-void
.end method

.method static synthetic lambda$asyncSetCheckboxPreferenceCheckedStatus$20(Ljava/util/function/Supplier;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 295
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic lambda$asyncSetCheckboxPreferenceCheckedStatus$21(Landroidx/preference/CheckBoxPreference;Ljava/lang/Boolean;)V
    .locals 0

    .line 296
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$initCheckboxPreferenceItem$12(Ljava/util/function/Consumer;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 214
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initClickPreference$11(Ljava/lang/Runnable;Landroidx/preference/Preference;)Z
    .locals 0

    .line 203
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$showNoGestureLineLearnDialog$22(Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isClickOnDialog:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object v0

    iget-boolean p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isCheckboxChecked:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->setNeedShowGestureLineGuide(Z)V

    :cond_0
    return-void
.end method

.method private setAppSwitchFeatureEnable(Z)V
    .locals 1

    .line 275
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_gesture_appswitch_feature"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setAssistGestureEnable(Z)V
    .locals 1

    .line 267
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "google_assist_enable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setHideGestureLine(Z)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateGestureLineVisible(Z)V

    return-void
.end method

.method private setMistakeTouchEnable(Z)V
    .locals 1

    .line 259
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_mistake_touch_toast"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showNoGestureLineLearnDialog()V
    .locals 1

    .line 301
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    .line 302
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 308
    :cond_0
    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;-><init>(Landroid/content/Context;)V

    const p0, 0x7f11035e

    .line 309
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setTitle(I)V

    const p0, 0x7f11035d

    .line 310
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setMessage(I)V

    const-string p0, "com.miui.systemui.fsgesture.quick_switch"

    .line 311
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setPositiveButtonIntentAction(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setIsAddNewTaskFlag(Z)V

    .line 313
    sget-object p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$mWVtiJN6lAngEkH5BuhttSWB6fM;->INSTANCE:Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$mWVtiJN6lAngEkH5BuhttSWB6fM;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setClickDialogButtonConsume(Ljava/util/function/Consumer;)V

    .line 318
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x7f6

    .line 319
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setType(I)V

    .line 321
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->show()V

    return-void
.end method

.method private updateGestureLineVisible(Z)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const v1, 0x7f11033f

    goto :goto_0

    :cond_0
    const v1, 0x7f110341

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 242
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    const v1, 0x7f080658

    goto :goto_1

    :cond_1
    const v1, 0x7f080657

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 244
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_2

    const v1, 0x7f08065d

    goto :goto_2

    :cond_2
    const v1, 0x7f08065c

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 246
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_3

    const v1, 0x7f08065b

    goto :goto_3

    :cond_3
    const v1, 0x7f08065a

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 248
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_4

    const v1, 0x7f08065f

    goto :goto_4

    :cond_4
    const v1, 0x7f08065e

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 250
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppMenuGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_5

    const p1, 0x7f080656

    goto :goto_5

    :cond_5
    const p1, 0x7f080655

    :goto_5
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    return-void
.end method

.method private updateNavigationPosition()V
    .locals 2

    .line 325
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gjzRgTi6fIneov6FjkV8WqlrYgM;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gjzRgTi6fIneov6FjkV8WqlrYgM;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$GQ6tOYS9LQlv3htx4jEMrXJ7RVI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$GQ6tOYS9LQlv3htx4jEMrXJ7RVI;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updatePreferenceVisibility()V
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 223
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 224
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAssistGesture:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    sget-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-eqz v4, :cond_0

    .line 225
    invoke-static {}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->getInstance()Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->isSupportGoogleAssist()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 224
    :goto_0
    invoke-virtual {v1, v4}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 226
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    if-nez v0, :cond_1

    sget-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 227
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 228
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {v1, v4}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 229
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    invoke-virtual {v1, v4}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 230
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    invoke-virtual {v1, v4}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 231
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_5

    :cond_5
    move v4, v2

    :goto_5
    invoke-virtual {v1, v4}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    .line 232
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsSupportQuickSwitchGesture:Z

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_6

    :cond_6
    move v4, v2

    :goto_6
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 233
    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-nez v0, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 234
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$HVNW_Orjw_Ju-IXoIlZS2veQg1Y;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$HVNW_Orjw_Ju-IXoIlZS2veQg1Y;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$ZTlHduzUyWiRfJ2hV3rhD2aZTPA;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$ZTlHduzUyWiRfJ2hV3rhD2aZTPA;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updateSettingPreferencesCheckedState()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VWAiI4eJ3blTuUvI6BMaRszh8o0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VWAiI4eJ3blTuUvI6BMaRszh8o0;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    .line 285
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$V1Q-dSTKGGkBiOn8dWsZpoHHgT4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$V1Q-dSTKGGkBiOn8dWsZpoHHgT4;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    .line 286
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAssistGesture:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$dkAMm2yfehdCMmlVjApPNScZAzE;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$dkAMm2yfehdCMmlVjApPNScZAzE;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    .line 287
    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$aoajDzN3pmIMPR2CCTHhRf-PBBY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$aoajDzN3pmIMPR2CCTHhRf-PBBY;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$yo-DVycuhBxUcFL9doO_EeLED_8;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$yo-DVycuhBxUcFL9doO_EeLED_8;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initInputApkStatus(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    .line 377
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/util/SettingsIntentUtil;->INPUT_SETTINGS_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const/4 v0, 0x1

    .line 379
    sput v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    move p0, v0

    :cond_0
    return p0

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    .line 382
    sput v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    .line 383
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return p0
.end method

.method public initInputSettingsPreference()V
    .locals 5

    .line 354
    sget v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initInputApkStatus(Landroid/content/Context;)Z

    .line 357
    :cond_0
    sget v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    const/4 v1, 0x1

    const v2, 0x7f1100ab

    const v3, 0x7f110267

    if-ne v0, v1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    .line 360
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.miui.miinput.keyshortcut.KeyShortcutActivity"

    .line 358
    invoke-static {v4, v3, v1}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiInputSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 361
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    .line 363
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "com.miui.miinput.disablebutton.AutoDisableScreenButtonsAppListSettingsActivity"

    .line 361
    invoke-static {v1, v2, p0}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiInputSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    .line 367
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.android.settings.KeyShortcutSettingsFragment"

    .line 365
    invoke-static {v4, v3, v1}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 368
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    .line 370
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "com.android.settings.AutoDisableScreenButtonsAppListSettings"

    .line 368
    invoke-static {v1, v2, p0}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initGuidePreferences$10$NavigationBarTypePreferenceFragment()V
    .locals 2

    const-string v0, "quick_switch"

    .line 186
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.quick_switch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initGuidePreferences$5$NavigationBarTypePreferenceFragment()V
    .locals 3

    const-string v0, "home"

    .line 152
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_TO_HOME"

    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initGuidePreferences$6$NavigationBarTypePreferenceFragment()V
    .locals 3

    const-string v0, "recents"

    .line 159
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_TO_RECENTTASK"

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initGuidePreferences$7$NavigationBarTypePreferenceFragment()V
    .locals 3

    const-string v0, "back"

    .line 166
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "FSG_BACK_GESTURE"

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEMO_STEP"

    const/4 v2, 0x1

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initGuidePreferences$8$NavigationBarTypePreferenceFragment()V
    .locals 2

    const-string v0, "in_app_function"

    .line 174
    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.menu"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initGuidePreferences$9$NavigationBarTypePreferenceFragment()V
    .locals 2

    .line 180
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAppSwitchFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11034a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initSettingPreferences$0$NavigationBarTypePreferenceFragment(Ljava/lang/Object;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->setRightHand(Landroid/content/Context;Z)V

    return-void
.end method

.method public synthetic lambda$initSettingPreferences$1$NavigationBarTypePreferenceFragment(Ljava/lang/Object;)V
    .locals 0

    .line 131
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setMistakeTouchEnable(Z)V

    return-void
.end method

.method public synthetic lambda$initSettingPreferences$2$NavigationBarTypePreferenceFragment(Ljava/lang/Object;)V
    .locals 0

    .line 134
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setAssistGestureEnable(Z)V

    return-void
.end method

.method public synthetic lambda$initSettingPreferences$3$NavigationBarTypePreferenceFragment(Ljava/lang/Object;)V
    .locals 1

    .line 138
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 139
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setHideGestureLine(Z)V

    .line 140
    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsSupportQuickSwitchGesture:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 141
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->isNeedShowGestureLineGuide()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->showNoGestureLineLearnDialog()V

    .line 143
    invoke-static {}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackShowLearnGesturesDialogEvent()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initSettingPreferences$4$NavigationBarTypePreferenceFragment(Ljava/lang/Object;)V
    .locals 0

    .line 147
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setAppSwitchFeatureEnable(Z)V

    return-void
.end method

.method public synthetic lambda$updateNavigationPosition$23$NavigationBarTypePreferenceFragment(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 326
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/settings/NavigationUtils;->getNavigationPosition(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$updateNavigationPosition$24$NavigationBarTypePreferenceFragment(Ljava/lang/Integer;)V
    .locals 2

    .line 327
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 330
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const p1, 0x7f110372

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 331
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 332
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const p1, 0x7f110373

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const p1, 0x7f110371

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$updatePreferenceVisibility$13$NavigationBarTypePreferenceFragment(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$updatePreferenceVisibility$14$NavigationBarTypePreferenceFragment(Ljava/lang/Boolean;)V
    .locals 0

    .line 235
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateGestureLineVisible(Z)V

    return-void
.end method

.method public synthetic lambda$updateSettingPreferencesCheckedState$15$NavigationBarTypePreferenceFragment()Ljava/lang/Boolean;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isRightHand(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$updateSettingPreferencesCheckedState$16$NavigationBarTypePreferenceFragment()Ljava/lang/Boolean;
    .locals 0

    .line 285
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isMistakeTouchEnable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$updateSettingPreferencesCheckedState$17$NavigationBarTypePreferenceFragment()Ljava/lang/Boolean;
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAssistGestureEnable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$updateSettingPreferencesCheckedState$18$NavigationBarTypePreferenceFragment()Ljava/lang/Boolean;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$updateSettingPreferencesCheckedState$19$NavigationBarTypePreferenceFragment()Ljava/lang/Boolean;
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAppSwitchFeatureEnable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f140026

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseGestureVersion3(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "navigation_guide_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "support_gesture_shortcut_settings"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    .line 108
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initSettingPreferences()V

    .line 109
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initGuidePreferences()V

    .line 110
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateSettingPreferencesCheckedState()V

    .line 111
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updatePreferenceVisibility()V

    return-void
.end method

.method public onNavBarTypeChanged()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updatePreferenceVisibility()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 347
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onResume()V

    .line 348
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/ValuePreference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateNavigationPosition()V

    :cond_0
    return-void
.end method
