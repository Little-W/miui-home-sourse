.class public Lcom/miui/home/settings/BaseAllAppsSettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "BaseAllAppsSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;
.implements Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;


# instance fields
.field private final FAST_SCROLLER_DEFAULT:Ljava/lang/String;

.field private final FAST_SCROLLER_LETTER:Ljava/lang/String;

.field private final GLOBAL_SEARCH:Ljava/lang/String;

.field private final KEY_CONTENT_CENTER:Ljava/lang/String;

.field private final KEY_GLOBAL_SEARCH:Ljava/lang/String;

.field private final KEY_NO_ACTION:Ljava/lang/String;

.field private final NO_ACTION:Ljava/lang/String;

.field private currSlidUpConfig:Ljava/lang/String;

.field entries:[Ljava/lang/String;

.field private mAppCategory:Lcom/miui/home/settings/preference/ValuePreference;

.field private mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mClassicSettings:Landroidx/preference/PreferenceCategory;

.field private mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mColorSearch:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

.field private mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

.field private mDrawerSettings:Landroidx/preference/PreferenceCategory;

.field private mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

.field private mJeejenSettings:Landroidx/preference/PreferenceCategory;

.field private mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

.field private mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

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
    .locals 3

    .line 49
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const-string v0, "global_search"

    .line 89
    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->GLOBAL_SEARCH:Ljava/lang/String;

    const-string v0, "no_action"

    .line 91
    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->NO_ACTION:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110246

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110245

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110247

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f11005a

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->FAST_SCROLLER_DEFAULT:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110059

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->FAST_SCROLLER_LETTER:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->FAST_SCROLLER_DEFAULT:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->FAST_SCROLLER_LETTER:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->entries:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)Lcom/miui/home/settings/preference/CheckBoxPreference;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateBranchStateOnChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)Lcom/miui/home/settings/preference/ListPreference;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    return-object p0
.end method

.method private branchSettingChange(Ljava/lang/Boolean;)V
    .locals 3

    .line 290
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 291
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 292
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSettingManager()Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v1

    invoke-interface {p1, v0, p0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;->branchSettingChange(Ljava/lang/Boolean;Landroid/app/Activity;Z)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getPocoBranchSearchManager()Lcom/mi/globallauncher/poco/IPocoBranchSearchGuideManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v2

    xor-int/2addr v0, v2

    new-instance v2, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$1;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    invoke-interface {p1, v1, v0, v2}, Lcom/mi/globallauncher/poco/IPocoBranchSearchGuideManager;->showPocoBranchSearchGuideView(Landroid/app/Activity;ZLcom/mi/globallauncher/poco/PocoBranchGuideCallBack;)V

    goto :goto_0

    .line 304
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchSwitchOn(Z)V

    .line 305
    invoke-direct {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateBranchStateOnChanged(Z)V

    :goto_0
    return-void
.end method

.method private createColorFilterPreferences()V
    .locals 3

    .line 435
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->hasWorkUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorSearch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setVisible(Z)V

    .line 437
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setVisible(Z)V

    goto :goto_0

    .line 439
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorSearchEnabled()Z

    move-result v0

    .line 440
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorSearch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 441
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorSearch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 442
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorAnimEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 443
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 444
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private initLauncherSlideUp()V
    .locals 5

    .line 177
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 180
    iget-object v4, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    aput-object v1, v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    new-array v0, v3, [Ljava/lang/String;

    .line 178
    iget-object v3, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 182
    :goto_1
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 183
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 187
    new-instance v0, Lcom/miui/home/settings/-$$Lambda$BaseAllAppsSettingsFragment$jt7tgV5yMqewD6c7_0h7sCttRoA;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/-$$Lambda$BaseAllAppsSettingsFragment$jt7tgV5yMqewD6c7_0h7sCttRoA;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    new-instance v1, Lcom/miui/home/settings/-$$Lambda$BaseAllAppsSettingsFragment$9nXGqb9FtY7mbjOWEn5tW3dF2-Q;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/-$$Lambda$BaseAllAppsSettingsFragment$9nXGqb9FtY7mbjOWEn5tW3dF2-Q;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private initSlideUpContentMap()V
    .locals 3

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    .line 170
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    const-string v2, "global_search"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    const-string v2, "content_center"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    const-string v1, "no_action"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initSwipeUpHomeSettingGlobal()V
    .locals 2

    .line 197
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->showCheckSlidingSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private showInstallDialog()V
    .locals 3

    .line 310
    new-instance v0, Lmiui/home/lib/dialog/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11004d

    .line 311
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setTitle(I)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11004c

    .line 312
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setMessage(I)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$4;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    const v2, 0x7f1100d5

    .line 313
    invoke-virtual {v0, v2, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$3;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    const v2, 0x7f11025b

    .line 319
    invoke-virtual {v0, v2, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$2;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    .line 331
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p0

    .line 337
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p0

    .line 338
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->show()V

    return-void
.end method

.method private updateBranchStateOnChanged(Z)V
    .locals 1

    .line 429
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 430
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;

    invoke-direct {v0, p1}, Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 431
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->branchOpenWithOptChange()Z

    return-void
.end method

.method private updateDesktopMode()V
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setDesktopMode()V

    return-void
.end method

.method private updateViewIfDesktopModeChange(I)V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 354
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 355
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-nez v0, :cond_2

    .line 356
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mJeejenSettings:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public OnDesktopModeTemporaryChange(I)V
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateViewIfDesktopModeChange(I)V

    return-void
.end method

.method public changeBranchSetting()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 414
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method public changeQuickSetting()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 425
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isQuickSearchOpen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method protected findPreferences()V
    .locals 1

    const-string v0, "desktop_mode"

    .line 227
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/DesktopModePreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    const-string v0, "classic_settings"

    .line 228
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    const-string v0, "jeejen_settings"

    .line 229
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mJeejenSettings:Landroidx/preference/PreferenceCategory;

    const-string v0, "drawer_settings"

    .line 230
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    const-string v0, "launcher_slide_up"

    .line 231
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ListPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    const-string v0, "launcher_slide_up_global_pref"

    .line 232
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_recommend_apps"

    .line 233
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_app_category"

    .line 234
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAppCategory:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v0, "key_drawer_background"

    .line 235
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v0, "fast_scroller_style"

    .line 236
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ListPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    const-string v0, "key_auto_add_new_app_shortcut"

    .line 237
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_branch_open"

    .line 238
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_quick_search_in_drawer"

    .line 239
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_color_pref"

    .line 240
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorSearch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_color_anim"

    .line 241
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    return-void
.end method

.method public synthetic lambda$initLauncherSlideUp$0$BaseAllAppsSettingsFragment(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->initFeed(Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$initLauncherSlideUp$1$BaseAllAppsSettingsFragment(Ljava/lang/Void;)V
    .locals 1

    .line 191
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpValue(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "launcher_slideup_gesture"

    invoke-static {p1, p3, p2}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "content_center"

    .line 344
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 345
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const/high16 p1, 0x7f140000

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreferences()V

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "is_drawer_setting"

    .line 112
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "is_slide_up_setting"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 115
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setVisible(Z)V

    .line 116
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p1

    if-nez p1, :cond_3

    .line 118
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mJeejenSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setVisible(Z)V

    .line 122
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p1

    if-nez p1, :cond_3

    .line 124
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mJeejenSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 129
    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateViewIfDesktopModeChange(I)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateViewIfDesktopModeChange(I)V

    .line 134
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setOnDesktopModeTemporaryChangeListener(Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;)V

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->queryJeejenReceiverInfo()Ljava/util/List;

    .line 137
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->initSlideUpContentMap()V

    .line 139
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->useListSlidingSetting()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 140
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->initLauncherSlideUp()V

    goto :goto_1

    .line 142
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->initSwipeUpHomeSettingGlobal()V

    .line 145
    :goto_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSettingManager()Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;

    move-result-object p1

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;->setBranchSettingCallBack(Ljava/lang/ref/WeakReference;)V

    .line 146
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSettingManager()Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;->controlBranchSetting()V

    .line 147
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAppCategory:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.home.action.CATEGORY_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 151
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p2

    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.home.action.DRAWER_COLOR_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 153
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->entries:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->entries:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->createColorFilterPreferences()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 392
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroy()V

    .line 393
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSettingManager()Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;->privacyDialogDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 214
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroyView()V

    .line 215
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

    .line 220
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 252
    :cond_1
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 377
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onPause()V

    .line 378
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateDesktopMode()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 258
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setRecommendAppsEnable(Z)V

    goto/16 :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 260
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->FAST_SCROLLER_LETTER:Ljava/lang/String;

    if-ne p2, p0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setLetterFastScrollerEnable(Z)V

    goto/16 :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 262
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setAutoAddNewAppShortcut(Z)V

    goto/16 :goto_0

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v0, :cond_5

    .line 264
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "content_center"

    .line 266
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedInstalled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 267
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->showInstallDialog()V

    goto/16 :goto_0

    .line 269
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "launcher_slideup_gesture"

    invoke-static {v0, v3, p2}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 271
    invoke-static {v2}, Lcom/miui/home/settings/LauncherGestureController;->putSlideUpAppInstalling(Z)V

    .line 272
    iput-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    goto :goto_0

    .line 274
    :cond_5
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_6

    .line 275
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->setGlobalSearchEnable(Landroid/content/Context;Z)V

    goto :goto_0

    .line 276
    :cond_6
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_7

    .line 277
    check-cast p2, Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->branchSettingChange(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 278
    :cond_7
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_8

    .line 279
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setQuickSearchSwitchOn(Z)V

    goto :goto_0

    .line 280
    :cond_8
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorSearch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_9

    .line 281
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setColorSearchEnabled(Z)V

    .line 282
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 283
    :cond_9
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mColorAnim:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, p0, :cond_a

    .line 284
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setColorAnimEnabled(Z)V

    :cond_a
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 366
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onResume()V

    .line 367
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setInitValue(I)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setInitValue(I)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 162
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onStart()V

    .line 163
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isLetterFastScrollerEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->entries:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->entries:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAutoAddNewAppShortcut()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 383
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onStop()V

    .line 384
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isJeejenBroadcastSend()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 385
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->setJeejenBroadcastSend(Z)V

    .line 386
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 208
    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 209
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public removeBranchSetting()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public removeQuickSetting()V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public setMiHomePrivacyDialogDismiss(Z)V
    .locals 0

    .line 403
    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateBranchStateOnChanged(Z)V

    return-void
.end method
