.class public Lcom/miui/home/settings/MiuiHomeSettings;
.super Lmiuix/preference/PreferenceFragment;
.source "MiuiHomeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final ICON_URI:Landroid/net/Uri;


# instance fields
.field private final GLOBAL_SEARCH:Ljava/lang/String;

.field private final KEY_CONTENT_CENTER:Ljava/lang/String;

.field private final KEY_GLOBAL_SEARCH:Ljava/lang/String;

.field private final KEY_NOTIFICATION_BAR:Ljava/lang/String;

.field private final KEY_NO_ACTION:Ljava/lang/String;

.field private final NO_ACTION:Ljava/lang/String;

.field private currSlidDownConfig:Ljava/lang/String;

.field private currSlidUpConfig:Ljava/lang/String;

.field private mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

.field protected mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

.field protected mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

.field private mDoubleTapToLock:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mHomeSearchBarDialog:Lmiui/home/lib/dialog/AlertDialog;

.field private mHomeSettingIntent:Landroid/content/Intent;

.field protected mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

.field private mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

.field private mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field protected mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

.field private mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

.field private mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

.field private mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

.field protected mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field protected mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPersonalAssistantSimplified:Z

.field private mPullDownContentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsConfigPrefCategory:Landroidx/preference/PreferenceCategory;

.field private mRecentsLayoutStyle:Lcom/miui/home/settings/preference/ValuePreference;

.field private mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

.field protected mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mSettingClose:Ljava/lang/String;

.field private mSettingNoWord:Ljava/lang/String;

.field private mSettingOnlyWidgetNoWord:Ljava/lang/String;

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

.field protected mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "theme://zhuti.xiaomi.com/transfer?path=componentLocal&category=Icon&custom=true&showButton=true&miref=home&miback=true"

    .line 97
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/settings/MiuiHomeSettings;->ICON_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSettingIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    .line 157
    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiui/home/lib/dialog/AlertDialog;

    const-string v0, "global_search"

    .line 161
    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->GLOBAL_SEARCH:Ljava/lang/String;

    const-string v0, "no_action"

    .line 163
    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->NO_ACTION:Ljava/lang/String;

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110246

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110248

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NOTIFICATION_BAR:Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110245

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_CONTENT_CENTER:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f110247

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NO_ACTION:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/settings/MiuiHomeSettings;)Lcom/miui/home/settings/preference/ValuePreference;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsLayoutStyle:Lcom/miui/home/settings/preference/ValuePreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/settings/MiuiHomeSettings;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsConfigPrefCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/settings/MiuiHomeSettings;)Z
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->isSupportPA()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/settings/MiuiHomeSettings;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/settings/MiuiHomeSettings;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/settings/MiuiHomeSettings;)Lcom/miui/home/settings/preference/ListPreference;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/Context;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->setHomeScreenSearchBar(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/settings/MiuiHomeSettings;)Lmiui/home/lib/dialog/AlertDialog;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiui/home/lib/dialog/AlertDialog;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/ContentResolver;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantState(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/settings/MiuiHomeSettings;)Lmiui/home/lib/dialog/AlertDialog;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/settings/MiuiHomeSettings;)Z
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->personalAssistantSettingsCanBeResolved()Z

    move-result p0

    return p0
.end method

.method private dismissSpinnerPopupWindow(Lmiuix/preference/DropDownPreference;)V
    .locals 4

    .line 1052
    :try_start_0
    const-class p0, Lmiuix/preference/DropDownPreference;

    const-string v0, "mSpinner"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 1053
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1054
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1056
    const-class p1, Lmiuix/appcompat/widget/Spinner;

    const-string v1, "dismissPopup"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1057
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v2, [Ljava/lang/Object;

    .line 1058
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1061
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getNavigationTypeName()Ljava/lang/String;
    .locals 2

    .line 462
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {p0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f11037a

    goto :goto_0

    :cond_0
    const p0, 0x7f110380

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivacyThumbnailBlurAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.miui.securitycenter.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    .line 436
    invoke-static {p0, v0}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "com.android.settings.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    .line 438
    invoke-static {p0, v0}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initLauncherPullDown()V
    .locals 3

    .line 335
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "launcher_pull_down"

    .line 338
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ListPreference;

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    .line 340
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initPullDownContentMap()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 346
    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NOTIFICATION_BAR:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 347
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 348
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 351
    new-instance v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$7t1AIkHlgo5YazW09SIxfHWGFh4;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$7t1AIkHlgo5YazW09SIxfHWGFh4;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance v1, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$B2ceR997fZX7WrOnaHSSkE0GYtM;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$B2ceR997fZX7WrOnaHSSkE0GYtM;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private initLauncherSlideUp()V
    .locals 5

    .line 374
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    .line 379
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NO_ACTION:Ljava/lang/String;

    aput-object v1, v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 381
    iget-object v4, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_CONTENT_CENTER:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NO_ACTION:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 383
    :goto_0
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 384
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 387
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 389
    new-instance v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$Gq1Z1xsbCjaZbqSIzEOmOs3rjXY;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$Gq1Z1xsbCjaZbqSIzEOmOs3rjXY;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance v1, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$dggKxfoaqmviMxdkS3HL5YJ5OH0;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$dggKxfoaqmviMxdkS3HL5YJ5OH0;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private initPersonalAssistant()V
    .locals 0

    .line 940
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initPersonalAssistantButton()V

    .line 941
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initPersonalAssistantSettings()V

    return-void
.end method

.method private initPersonalAssistantButton()V
    .locals 3

    .line 945
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/MiuiHomeSettings;->needHideMinusScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 949
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "open_personal_assistant"

    invoke-static {p0, v2, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private initPersonalAssistantSettings()V
    .locals 2

    .line 955
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->shouldHidePersonalAssistantSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 959
    :cond_0
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$17;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/MiuiHomeSettings$17;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$18;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$18;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private initPullDownContentMap()V
    .locals 3

    .line 360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPullDownContentMap:Ljava/util/Map;

    .line 361
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPullDownContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    const-string v2, "pull_down_global_search"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPullDownContentMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NOTIFICATION_BAR:Ljava/lang/String;

    const-string v1, "notification_bar"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initSlideUpContentMap()V
    .locals 3

    .line 367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSlideUpContentMap:Ljava/util/Map;

    .line 368
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSlideUpContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_GLOBAL_SEARCH:Ljava/lang/String;

    const-string v2, "global_search"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSlideUpContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_CONTENT_CENTER:Ljava/lang/String;

    const-string v2, "content_center"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSlideUpContentMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_NO_ACTION:Ljava/lang/String;

    const-string v1, "no_action"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initSwipeUpHomeSettingGlobal()V
    .locals 2

    .line 399
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->showCheckSlidingSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 401
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 405
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private isSupportPA()Z
    .locals 0

    .line 993
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUseHomeNavBarTypeActivity()Z
    .locals 3

    .line 412
    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 415
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xc0000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static needHideMinusScreen(Landroid/content/Context;)Z
    .locals 2

    .line 873
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 874
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 875
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-eq p0, v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantInstalled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static noWordModelChange(Landroid/content/ContentResolver;)V
    .locals 3

    const-string v0, "miui_home_no_word_model"

    const/4 v1, 0x0

    .line 689
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 690
    invoke-static {p0, v0, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 691
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingNoWord(Z)V

    :cond_0
    const-string v0, "miui_home_only_widget_no_word_model"

    .line 693
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 694
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method private noWordModelPreferenceChange(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingNoWord:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->noWordModelChange(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingOnlyWidgetNoWord:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->onlyWidgetNoWordChange(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 683
    :cond_1
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingClose:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 684
    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->noWordOrOnlyWidgetNoWordClose(Landroid/content/ContentResolver;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static noWordOrOnlyWidgetNoWordClose(Landroid/content/ContentResolver;)V
    .locals 3

    const-string v0, "miui_home_no_word_model"

    const/4 v1, 0x0

    .line 709
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 710
    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingNoWord(Z)V

    .line 711
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "miui_home_only_widget_no_word_model"

    .line 712
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 713
    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingOnlyWidgetNoWord(Z)V

    .line 714
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static onlyWidgetNoWordChange(Landroid/content/ContentResolver;)V
    .locals 3

    const-string v0, "miui_home_only_widget_no_word_model"

    const/4 v1, 0x0

    .line 699
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 700
    invoke-static {p0, v0, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 701
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingOnlyWidgetNoWord(Z)V

    :cond_0
    const-string v0, "miui_home_no_word_model"

    .line 703
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 704
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method private personalAssistantSettingsCanBeResolved()Z
    .locals 1

    .line 983
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 984
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->isSupportPA()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "pa://common_settings"

    .line 985
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p0, "pa://settings"

    .line 987
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 989
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private setHomeScreenSearchBar(Landroid/content/Context;Z)V
    .locals 1

    .line 805
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings$12;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/Context;Z)V

    const/4 p0, 0x0

    invoke-static {v0, p0, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private setNoWordModelValue()V
    .locals 1

    .line 1066
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingNoWord:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1068
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isOnlyWidgetNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingOnlyWidgetNoWord:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingClose:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setPersonalAssistantSettingsVisible()V
    .locals 2

    .line 1015
    iget-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPersonalAssistantSimplified:Z

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 1017
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f11039f

    goto :goto_0

    :cond_0
    const p0, 0x7f11039e

    :goto_0
    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    goto :goto_1

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->isChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method private setPersonalAssistantSimplified()V
    .locals 4

    .line 999
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.personalassistant"

    const-string v3, "com.miui.personalassistant.settings.PASettingActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1003
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1006
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1007
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "personalassistantSupportSimplify"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPersonalAssistantSimplified:Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1009
    iput-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPersonalAssistantSimplified:Z

    :cond_1
    :goto_1
    return-void
.end method

.method private setPersonalAssistantState(Landroid/content/ContentResolver;Z)V
    .locals 0

    const-string p0, "open_personal_assistant"

    .line 868
    invoke-static {p1, p0, p2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private setUpAnimationRateValue()V
    .locals 2

    .line 501
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->supportSetAnimationRate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues(I)V

    .line 503
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ListPreference;->setEntries(I)V

    .line 504
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 505
    new-instance v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$gQW0smTVqTMTr39UvTkFbwYMLAM;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$gQW0smTVqTMTr39UvTkFbwYMLAM;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance v1, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$SxG7wkL3IWZeI3dXHsa1LjTySLs;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$SxG7wkL3IWZeI3dXHsa1LjTySLs;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setUpAnimationRateVisible()V
    .locals 1

    .line 512
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->supportSetAnimationRate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/ListPreference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method private setUpNoWordModelPreference()V
    .locals 2

    .line 1034
    invoke-static {}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->isNoWordAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 1036
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/ListPreference;->setVisible(Z)V

    goto :goto_1

    .line 1039
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isOnlyWidgetNoWordModelSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f03001b

    goto :goto_0

    :cond_1
    const v0, 0x7f03001c

    .line 1040
    :goto_0
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1041
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEntries(I)V

    .line 1042
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues(I)V

    .line 1043
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11043a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingNoWord:Ljava/lang/String;

    .line 1044
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11043b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingOnlyWidgetNoWord:Ljava/lang/String;

    .line 1045
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110439

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSettingClose:Ljava/lang/String;

    .line 1046
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setNoWordModelValue()V

    :cond_2
    :goto_1
    return-void
.end method

.method private setUpScreenCellsConfig(ZI)V
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 520
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenUtils;->getScreenCellsSizeOptions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 523
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 524
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 525
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/home/settings/preference/ListPreference;->setValueIndex(I)V

    .line 528
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 530
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "miui_home_screen_cells_size"

    .line 529
    invoke-static {v0, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    aget-object v0, v1, v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/ListPreference;->setEnabled(Z)V

    .line 538
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, p2}, Lcom/miui/home/settings/preference/ListPreference;->setDisableTips(I)V

    return-void
.end method

.method private shouldHidePersonalAssistantSettings()Z
    .locals 0

    .line 979
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private showDialog()V
    .locals 3

    .line 817
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    if-nez v0, :cond_1

    .line 818
    new-instance v0, Lmiui/home/lib/dialog/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 819
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setCancelable(Z)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 820
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f11039c

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 821
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-boolean v2, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    const v2, 0x7f11039b

    goto :goto_0

    :cond_0
    const v2, 0x7f11039a

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110398

    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$16;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$16;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 823
    invoke-virtual {v0, v1, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110399

    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$15;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$15;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 831
    invoke-virtual {v0, v1, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$14;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$14;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 841
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$13;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$13;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 847
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    .line 855
    :cond_1
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->show()V

    return-void
.end method

.method private showHomeSearchBarDialog()V
    .locals 3

    .line 765
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiui/home/lib/dialog/AlertDialog;

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Lmiui/home/lib/dialog/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 767
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setCancelable(Z)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11013a

    .line 768
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setTitle(I)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11013d

    .line 769
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setMessage(I)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11013b

    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$11;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$11;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 770
    invoke-virtual {v0, v1, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11013c

    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$10;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$10;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 778
    invoke-virtual {v0, v1, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$9;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$9;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 786
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiui/home/lib/dialog/AlertDialog;

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->show()V

    .line 795
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiui/home/lib/dialog/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 797
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 798
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiui/home/lib/dialog/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lmiui/home/lib/dialog/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 799
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p0, v2}, Lmiui/home/lib/dialog/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private showInstallDialog()V
    .locals 3

    .line 733
    new-instance v0, Lmiui/home/lib/dialog/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11004d

    .line 734
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setTitle(I)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11004c

    .line 735
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setMessage(I)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$8;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$8;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const v2, 0x7f1100d5

    .line 736
    invoke-virtual {v0, v2, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$7;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$7;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const v2, 0x7f11025b

    .line 742
    invoke-virtual {v0, v2, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$6;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$6;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 754
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p0

    .line 760
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p0

    .line 761
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected checkDefaultLauncher(Ljava/lang/String;)V
    .locals 3

    const-string v0, "com.miui.home"

    .line 542
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 543
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 544
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPersonalAssistantSimplified:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->shouldHidePersonalAssistantSettings()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setVisible(Z)V

    .line 545
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    if-nez p1, :cond_2

    .line 547
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    goto :goto_1

    .line 549
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantSettingsVisible()V

    .line 551
    :goto_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setVisible(Z)V

    .line 552
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void
.end method

.method public synthetic lambda$initLauncherPullDown$2$MiuiHomeSettings(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 352
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/LauncherGestureController;->getPullDownValue(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidDownConfig:Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$initLauncherPullDown$3$MiuiHomeSettings(Ljava/lang/Void;)V
    .locals 0

    .line 355
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidDownConfig:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initLauncherSlideUp$4$MiuiHomeSettings(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/ApplicationConfig;->initFeed(Landroid/content/Context;)V

    .line 391
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpValue(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$initLauncherSlideUp$5$MiuiHomeSettings(Ljava/lang/Void;)V
    .locals 0

    .line 394
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreatePreferences$0$MiuiHomeSettings(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 272
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->isUseHomeNavBarTypeActivity()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onCreatePreferences$1$MiuiHomeSettings(Ljava/lang/Boolean;)V
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUseHomeNavBarTypeActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHomeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 276
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.home.action.navigation_bar_type_settings"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f11037b

    .line 278
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "com.android.settings.FullScreenDisplaySettings"

    .line 277
    invoke-static {v1, p1, v0}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 275
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$setUpAnimationRateValue$6$MiuiHomeSettings(Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 506
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->updateAnimationRate(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$setUpAnimationRateValue$7$MiuiHomeSettings(Ljava/lang/String;)V
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    .line 721
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "launcher_slideup_gesture"

    invoke-static {p1, p3, p2}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 722
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "content_center"

    .line 723
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 724
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->KEY_CONTENT_CENTER:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 726
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    .line 184
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/MiuiHomeSettings$1;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 201
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const p1, 0x7f140019

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "launcher_slide_up"

    .line 204
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    :cond_1
    const-string p1, "miui_home_config_pref"

    .line 206
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    const-string p1, "launcher_slide_up_global_pref"

    .line 207
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "all_apps_setting_pref"

    .line 208
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    .line 209
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initLauncherPullDown()V

    const-string p1, "launcher_search_bar"

    .line 211
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "navigation_type"

    .line 212
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    const-string p1, "miui_screen_config_pref"

    .line 213
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    const-string p1, "recents_config_pref"

    .line 214
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsConfigPrefCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "no_word_model"

    .line 215
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    const-string p1, "double_tap_to_lock_pref"

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDoubleTapToLock:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "auto_fill_empty_pref"

    .line 216
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "lock_screen_cells_pref"

    .line 217
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "open_personal_assistant_pref"

    .line 218
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "switch_personal_assistant_pref"

    .line 219
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    const-string p1, "open_personal_assistant_settings_pref"

    .line 220
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    .line 221
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "screen_cell_config"

    .line 222
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    .line 223
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 224
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ListPreference;->setVisible(Z)V

    :cond_2
    const-string p1, "animation_rate"

    .line 226
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    .line 227
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpAnimationRateVisible()V

    .line 228
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpNoWordModelPreference()V

    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDoubleTapToLock:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 229
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initSlideUpContentMap()V

    .line 233
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->useListSlidingSetting()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 234
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initLauncherSlideUp()V

    goto :goto_0

    .line 236
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initSwipeUpHomeSettingGlobal()V

    .line 239
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initPersonalAssistant()V

    .line 240
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantSimplified()V

    .line 241
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPersonalAssistantSimplified:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->shouldHidePersonalAssistantSettings()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, p2

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setVisible(Z)V

    .line 242
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPersonalAssistantSimplified:Z

    if-eqz v0, :cond_6

    const v0, 0x7f110385

    goto :goto_3

    :cond_6
    const v0, 0x7f11039d

    :goto_3
    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setTitle(I)V

    .line 244
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p1

    .line 245
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-nez v0, :cond_7

    .line 246
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/settings/preference/ListPreference;->setVisible(Z)V

    .line 248
    :cond_7
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setVisible(Z)V

    .line 249
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_a

    .line 251
    sget-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    if-eqz v0, :cond_8

    .line 252
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.home.action.LAUNCHER_PERSONAL_ASSISTANT_SETTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 254
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 256
    :cond_8
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 258
    :goto_4
    sget-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    if-eqz v0, :cond_9

    .line 259
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const v2, 0x7f110488

    invoke-virtual {v0, v2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setTitle(I)V

    .line 261
    :cond_9
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 263
    :cond_a
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 264
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/ValuePreference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 265
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantSettingsVisible()V

    .line 269
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isShowSystemNavTypePreferenceInMiuiSettings(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 270
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 271
    new-instance v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$78gWGzBuDpqdcb6uItbJkJJG5hA;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$78gWGzBuDpqdcb6uItbJkJJG5hA;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance v3, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$o2daXsgdYLFKJ2bgjw0tuHyelw8;

    invoke-direct {v3, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$o2daXsgdYLFKJ2bgjw0tuHyelw8;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    invoke-static {v0, v3, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 282
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.home.action.ALL_APPS_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "is_drawer_setting"

    .line 283
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p2, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 285
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    if-eqz p1, :cond_d

    const p1, 0x7f110057

    goto :goto_6

    :cond_d
    const p1, 0x7f110051

    :goto_6
    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    const-string p1, "recents_layout_style"

    .line 287
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsLayoutStyle:Lcom/miui/home/settings/preference/ValuePreference;

    .line 288
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsLayoutStyle:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.home.recents.task_stack_view_layout_style"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 289
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsLayoutStyle:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result p2

    if-ne p2, v1, :cond_e

    const p2, 0x7f1103f8

    goto :goto_7

    :cond_e
    const p2, 0x7f1103f9

    :goto_7
    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    .line 291
    new-instance p1, Lcom/miui/home/settings/MiuiHomeSettings$2;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$2;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance p2, Lcom/miui/home/settings/MiuiHomeSettings$3;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$3;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    invoke-static {p1, p2, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 306
    sget-boolean p1, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportIconSearchBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 307
    new-instance p1, Lcom/miui/home/settings/MiuiHomeSettings$4;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$4;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance p2, Lcom/miui/home/settings/MiuiHomeSettings$5;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$5;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    invoke-static {p1, p2, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_8

    .line 329
    :cond_f
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeSettingConfig:Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 331
    :goto_8
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->dismiss()V

    .line 863
    :cond_0
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroy()V

    .line 864
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LauncherModeChangedMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 423
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LauncherModeChangedMessage;->getModeName()Ljava/lang/String;

    move-result-object p1

    .line 424
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 427
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Ljava/lang/String;)Z

    move-result p1

    .line 428
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    if-eqz p1, :cond_1

    const v1, 0x7f110057

    goto :goto_0

    :cond_1
    const v1, 0x7f110051

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    .line 429
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-nez v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ListPreference;->setVisible(Z)V

    .line 432
    :cond_2
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setVisible(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 898
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 905
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 901
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 595
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MiuiHomeSettings"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "contentResolver is null"

    .line 597
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 600
    :cond_0
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_1

    .line 601
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->noWordModelPreferenceChange(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 602
    :cond_1
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDoubleTapToLock:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    const-string p1, "miui_home_double_tap_to_lock"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v0, p1, p0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_3

    .line 603
    check-cast p2, Ljava/lang/Boolean;

    .line 606
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string p1, "miui_home_enable_auto_fill_empty_cells"

    .line 604
    invoke-static {v0, p1, p0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 607
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeMoreSettingsAutoFillEmptyCells(Z)V

    goto/16 :goto_0

    .line 608
    :cond_3
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_5

    .line 609
    check-cast p2, Ljava/lang/Boolean;

    .line 612
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "miui_home_lock_screen_cells"

    .line 610
    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 613
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 615
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShakeMonitor;->onLockScreenSwitchChanged()V

    .line 617
    :cond_4
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ListPreference;->setEnabled(Z)V

    .line 618
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeMoreSettingsLockScreenCells(Z)V

    goto/16 :goto_0

    .line 619
    :cond_5
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v3, :cond_6

    .line 620
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miui_home_screen_cells_size"

    .line 621
    invoke-static {v0, p2, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 624
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 625
    :cond_6
    iget-object v3, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_9

    .line 626
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 627
    sget-boolean p1, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_7

    sget-boolean p1, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    if-eqz p1, :cond_7

    .line 628
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackPersonalAssistantSwitch(Z)V

    .line 629
    invoke-direct {p0, v0, v2}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantState(Landroid/content/ContentResolver;Z)V

    goto/16 :goto_0

    .line 631
    :cond_7
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->showDialog()V

    goto/16 :goto_0

    .line 634
    :cond_8
    invoke-static {v4}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackPersonalAssistantSwitch(Z)V

    .line 635
    invoke-direct {p0, v0, v4}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantState(Landroid/content/ContentResolver;Z)V

    .line 636
    sget-boolean p1, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_11

    .line 637
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0, v4}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    goto/16 :goto_0

    .line 640
    :cond_9
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v0, :cond_c

    .line 641
    invoke-virtual {v0}, Lcom/miui/home/settings/preference/ListPreference;->isVisible()Z

    move-result p1

    if-nez p1, :cond_a

    .line 642
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string p1, "mLauncherSlideUp.isVisible()==false."

    .line 643
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mLauncherSlideUp.setValue    currSlidUpConfig="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 647
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 648
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSlideUpContentMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "content_center"

    .line 649
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedInstalled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 650
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->showInstallDialog()V

    goto/16 :goto_0

    .line 652
    :cond_b
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "launcher_slideup_gesture"

    invoke-static {v0, v1, p2}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 654
    invoke-static {v2}, Lcom/miui/home/settings/LauncherGestureController;->putSlideUpAppInstalling(Z)V

    .line 655
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->currSlidUpConfig:Ljava/lang/String;

    goto :goto_0

    .line 657
    :cond_c
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwipeUpHomeSettingGlobal:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_d

    .line 658
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->setGlobalSearchEnable(Landroid/content/Context;Z)V

    goto :goto_0

    .line 659
    :cond_d
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_f

    .line 660
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 661
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/miui/home/settings/MiuiHomeSettings;->setHomeScreenSearchBar(Landroid/content/Context;Z)V

    goto :goto_0

    .line 663
    :cond_e
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->showHomeSearchBarDialog()V

    goto :goto_0

    .line 665
    :cond_f
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v0, :cond_10

    .line 666
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 667
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setAnimationRate(Landroid/content/Context;I)V

    .line 668
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_10
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v0, :cond_11

    .line 670
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 671
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPullDownContentMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 672
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "launcher_pulldown_gesture"

    invoke-static {v0, v1, p2}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherPullDown:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_11
    :goto_0
    return v4
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 910
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "open_personal_assistant_settings_pref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 912
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 913
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.miui.personalassistant"

    .line 914
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->isSupportPA()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pa://common_settings"

    .line 916
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "param_setting_key"

    const-string v1, "fragment_privacy_setting"

    .line 917
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "pa://settings"

    .line 919
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    const-string v0, "is_simplified_key"

    const/4 v1, 0x1

    .line 921
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 922
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 927
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 468
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onResume()V

    .line 469
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 472
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLauncherSlideUp:Lcom/miui/home/settings/preference/ListPreference;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpValue(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v1}, Lcom/miui/home/settings/preference/ValuePreference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getNavigationTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 479
    :cond_2
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiui/home/lib/dialog/AlertDialog;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lmiui/home/lib/dialog/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 480
    :cond_3
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 482
    :cond_4
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentPersonalAssistantName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->checkDefaultLauncher(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isDoubleTapToLock(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDoubleTapToLock:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 484
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty()Z

    move-result v0

    .line 485
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 486
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    .line 487
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    const v1, 0x7f11042b

    .line 488
    invoke-direct {p0, v0, v1}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpScreenCellsConfig(ZI)V

    .line 489
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setSelectable(Z)V

    .line 490
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpAnimationRateValue()V

    .line 491
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setNoWordModelValue()V

    .line 492
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "open_personal_assistant"

    invoke-static {v2, v3, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f11039f

    goto :goto_0

    :cond_5
    const v2, 0x7f11039e

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    .line 494
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsLayoutStyle:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_6

    const v1, 0x7f1103f8

    goto :goto_1

    :cond_6
    const v1, 0x7f1103f9

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    .line 496
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->dismissSpinnerPopupWindow(Lmiuix/preference/DropDownPreference;)V

    .line 497
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->dismissSpinnerPopupWindow(Lmiuix/preference/DropDownPreference;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 881
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "open_personal_assistant"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "PERSONAL_ASSISTANT"

    .line 880
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 883
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStartSwitchingNoWord(Lcom/miui/home/launcher/common/messages/StartSwitchingNoWordModel;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 935
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEnabled(Z)V

    .line 936
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpScreenCellsConfig(ZI)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .line 888
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 890
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v1, "PERSONAL_ASSISTANT"

    .line 891
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 890
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 892
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    :cond_0
    return-void
.end method
