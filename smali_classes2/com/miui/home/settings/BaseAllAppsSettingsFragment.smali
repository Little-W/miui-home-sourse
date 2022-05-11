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

.field private mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

.field private mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

.field private mDrawerSettings:Landroidx/preference/PreferenceCategory;

.field private mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

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

    .line 48
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const-string v0, "global_search"

    .line 82
    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->GLOBAL_SEARCH:Ljava/lang/String;

    const-string v0, "no_action"

    .line 84
    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->NO_ACTION:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f10022f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f10022e

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100230

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100058

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->FAST_SCROLLER_DEFAULT:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f100057

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->FAST_SCROLLER_LETTER:Ljava/lang/String;

    const/4 v0, 0x2

    .line 93
    new-array v0, v0, [Ljava/lang/String;

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

    .line 48
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateBranchStateOnChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)Lcom/miui/home/settings/preference/ListPreference;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    return-object p0
.end method

.method private branchSettingChange(Ljava/lang/Boolean;)V
    .locals 3

    .line 250
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 252
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSettingManager()Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;->branchSettingChange(Ljava/lang/Boolean;Landroid/app/Activity;Z)V

    goto :goto_0

    .line 254
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

    .line 264
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchSwitchOn(Z)V

    .line 265
    invoke-direct {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateBranchStateOnChanged(Z)V

    :goto_0
    return-void
.end method

.method private initSlideUpContentMap()V
    .locals 3

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    .line 169
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    const-string v2, "global_search"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    const-string v2, "content_center"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    const-string v2, "no_action"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$onCreatePreferences$0(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/ApplicationConfig;->initFeed(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$onCreatePreferences$1(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;Ljava/lang/Void;)V
    .locals 1

    .line 133
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpValue(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private showInstallDialog()V
    .locals 3

    .line 269
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10004c

    .line 270
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10004b

    .line 271
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$4;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    const v2, 0x7f1000d4

    .line 272
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$3;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    const v2, 0x7f10023f

    .line 278
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$2;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    .line 290
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private updateBranchStateOnChanged(Z)V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 368
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;

    invoke-direct {v1, p1}, Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 369
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->branchOpenWithOptChange()Z

    return-void
.end method

.method private updateViewIfDesktopModeChange(Z)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 313
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public OnDesktopModeTemporaryChange(Z)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateViewIfDesktopModeChange(Z)V

    return-void
.end method

.method public changeBranchSetting()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 352
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method public changeQuickSetting()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 363
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isQuickSearchOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method protected findPreferences()V
    .locals 1

    const-string v0, "desktop_mode"

    .line 195
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/DesktopModePreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    const-string v0, "classic_settings"

    .line 196
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    const-string v0, "launcher_slide_up"

    .line 197
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ListPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    const-string v0, "launcher_slide_up_global_pref"

    .line 198
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "drawer_settings"

    .line 199
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_recommend_apps"

    .line 200
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_app_category"

    .line 201
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAppCategory:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v0, "key_drawer_background"

    .line 202
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v0, "fast_scroller_style"

    .line 203
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ListPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    const-string v0, "key_auto_add_new_app_shortcut"

    .line 204
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_branch_open"

    .line 205
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v0, "key_quick_search_in_drawer"

    .line 206
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "launcher_slideup_gesture"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "content_center"

    .line 303
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const/high16 p1, 0x7f130000

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreferences()V

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "is_drawer_setting"

    .line 100
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "is_slide_up_setting"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 103
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setVisible(Z)V

    .line 104
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setVisible(Z)V

    .line 107
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p1

    .line 110
    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateViewIfDesktopModeChange(Z)V

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSettingManager()Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;->branchAutoAddAppShortcut()Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 113
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setOnDesktopModeTemporaryChangeListener(Lcom/miui/home/settings/preference/DesktopModePreference$OnDesktopModeTemporaryChangeListener;)V

    .line 115
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->initSlideUpContentMap()V

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->useNewSlidingSetting()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 119
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 p2, 0x2

    if-nez p1, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x3

    .line 122
    new-array p1, p1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object v2, p1, v0

    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_CONTENT_CENTER:Ljava/lang/String;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    aput-object v0, p1, p2

    goto :goto_2

    .line 120
    :cond_3
    :goto_1
    new-array p1, p2, [Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->KEY_NO_ACTION:Ljava/lang/String;

    aput-object p2, p1, v1

    .line 124
    :goto_2
    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 125
    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 129
    new-instance p1, Lcom/miui/home/settings/-$$Lambda$BaseAllAppsSettingsFragment$JF7DGhO-g7bEFZuOGh6avsz9giI;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/-$$Lambda$BaseAllAppsSettingsFragment$JF7DGhO-g7bEFZuOGh6avsz9giI;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    new-instance p2, Lcom/miui/home/settings/-$$Lambda$BaseAllAppsSettingsFragment$OhlNxIkfstN9KGtv0wb_dy4ahKk;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/-$$Lambda$BaseAllAppsSettingsFragment$OhlNxIkfstN9KGtv0wb_dy4ahKk;-><init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_4

    .line 137
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->showOldSlidingSetting()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 138
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    .line 141
    :cond_5
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 143
    :goto_3
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mClassicSettings:Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 145
    :goto_4
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSettingManager()Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;->setBranchSettingCallBack(Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;)V

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

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 330
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroy()V

    .line 331
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSettingManager()Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;->privacyDialogDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 182
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroyView()V

    .line 183
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

    .line 188
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerBackground:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 217
    :cond_1
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 324
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onPause()V

    .line 325
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/DesktopModePreference;->setDesktopMode()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 223
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setRecommendAppsEnable(Z)V

    goto/16 :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mFastScrollerStyle:Lcom/miui/home/settings/preference/ListPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 225
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->FAST_SCROLLER_LETTER:Ljava/lang/String;

    if-ne p2, v0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setLetterFastScrollerEnable(Z)V

    goto/16 :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 227
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setAutoAddNewAppShortcut(Z)V

    goto :goto_0

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v0, :cond_5

    .line 229
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSlideUpContentMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "content_center"

    .line 231
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedInstalled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 232
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->showInstallDialog()V

    goto :goto_0

    .line 234
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "launcher_slideup_gesture"

    invoke-static {v0, v3, p2}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p2, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 236
    invoke-static {v2}, Lcom/miui/home/settings/LauncherGestureController;->putSlideUpAppInstalling(Z)V

    .line 237
    iput-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->currSlidUpConfig:Ljava/lang/String;

    goto :goto_0

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_6

    .line 240
    invoke-virtual {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/DeviceConfig;->setGlobalSearchEnable(Landroid/content/Context;Z)V

    goto :goto_0

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_7

    .line 242
    check-cast p2, Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->branchSettingChange(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_8

    .line 244
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setQuickSearchSwitchOn(Z)V

    :cond_8
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 318
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onResume()V

    .line 319
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDesktopMode:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/DesktopModePreference;->setInitValue(Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 161
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onStart()V

    .line 162
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mRecommendApps:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
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

    .line 164
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mAutoAddNewAppShortcut:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAutoAddNewAppShortcut()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 176
    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 177
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public removeBranchSetting()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mBranchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public removeQuickSetting()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mDrawerSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->mQuickSearchSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public setMiHomePrivacyDialogDismiss(Z)V
    .locals 0

    .line 341
    invoke-direct {p0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->updateBranchStateOnChanged(Z)V

    return-void
.end method
