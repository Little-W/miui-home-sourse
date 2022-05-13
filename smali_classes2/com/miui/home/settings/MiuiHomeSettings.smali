.class public Lcom/miui/home/settings/MiuiHomeSettings;
.super Lmiuix/preference/PreferenceFragment;
.source "MiuiHomeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field protected mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

.field protected mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

.field private mDefaultHomeSetting:Lcom/miui/home/settings/preference/ValuePreference;

.field private mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mHomeSettingIntent:Landroid/content/Intent;

.field private mIconSizeSetting:Lcom/miui/home/settings/preference/ValuePreference;

.field private mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

.field protected mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

.field private mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

.field private mNavigationTypeCategory:Landroidx/preference/PreferenceCategory;

.field private mNoWordModel:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field protected mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field protected mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPerfectIconsSwitch:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mPrivacyThumbailBlurSetting:Landroidx/preference/PreferenceScreen;

.field private final mReSelectableNoWordSwitch:Ljava/lang/Runnable;

.field private mRecentsConfigPrefCategory:Landroidx/preference/PreferenceCategory;

.field private mRecentsLayoutStyle:Landroidx/preference/PreferenceScreen;

.field private mRecentsShowRecommendCheckBoxPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

.field protected mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field protected mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

.field private mUseSecurityCenterAction:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSettingIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    .line 137
    iput-boolean v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mUseSecurityCenterAction:Z

    .line 138
    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 142
    new-instance v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$bLxD2_weBU4X2LhZ3blWUF64AwI;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$bLxD2_weBU4X2LhZ3blWUF64AwI;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mReSelectableNoWordSwitch:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/settings/MiuiHomeSettings;)Landroidx/preference/PreferenceScreen;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsLayoutStyle:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/settings/MiuiHomeSettings;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsConfigPrefCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/Context;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->setHomeScreenSearchBar(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/settings/MiuiHomeSettings;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/ContentResolver;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantState(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/settings/MiuiHomeSettings;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private addRecentsRecommend(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 395
    new-instance p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsShowRecommendCheckBoxPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

    .line 396
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsConfigPrefCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsShowRecommendCheckBoxPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 397
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsShowRecommendCheckBoxPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const v0, 0x7f1003c0

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setTitle(I)V

    .line 398
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsShowRecommendCheckBoxPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 399
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->updateRecentsShowRecommend()V

    :cond_0
    return-void
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 438
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android"

    .line 439
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f100352

    .line 440
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 442
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object p1
.end method

.method private getNavigationTypeName()Ljava/lang/String;
    .locals 3

    .line 452
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "force_fsg_nav_bar"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f10030a

    goto :goto_0

    :cond_0
    const v1, 0x7f100310

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivacyThumbnailBlurAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.miui.securitycenter.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    .line 349
    invoke-static {p0, v0}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "com.miui.securitycenter.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    return-object p0

    :cond_0
    const-string v0, "com.android.settings.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    .line 351
    invoke-static {p0, v0}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.android.settings.action.PRIVACY_THUMBNAIL_BLUR_SETTING"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initPersonalAssistant()V
    .locals 0

    .line 811
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initPersonalAssistantButton()V

    .line 812
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initPersonalAssistantSettings()V

    return-void
.end method

.method private initPersonalAssistantButton()V
    .locals 4

    .line 816
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/MiuiHomeSettings;->needHideMinusScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 820
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "open_personal_assistant"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private initPersonalAssistantSettings()V
    .locals 2

    .line 826
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->shouldHidePersonalAssistantSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 830
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const v1, 0x7f100320

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setTitle(I)V

    :cond_1
    return-void
.end method

.method private initPrivacyThumbnailBlurPref()V
    .locals 3

    .line 358
    sget-object v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$Uxr03vLi4wdBCAFYxbwEToTP8_o;->INSTANCE:Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$Uxr03vLi4wdBCAFYxbwEToTP8_o;

    new-instance v1, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$_6Q83BcqHl-XgELbbYZlBmVwdYA;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$_6Q83BcqHl-XgELbbYZlBmVwdYA;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private isSupportRecentsRecommend()Z
    .locals 4

    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 379
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.systemui"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MiuiHomeSettings"

    const-string v3, "isSupportRecentsRecommend: getPackageInfo error."

    .line 382
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 384
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 385
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "SupportRecentsRecommend"

    .line 387
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private isUseHomeNavBarTypeActivity()Z
    .locals 3

    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xc0000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$initPrivacyThumbnailBlurPref$7(Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 360
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 361
    invoke-static {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getPrivacyThumbnailBlurAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic lambda$initPrivacyThumbnailBlurPref$8(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPrivacyThumbailBlurSetting:Landroidx/preference/PreferenceScreen;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 367
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsConfigPrefCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPrivacyThumbailBlurSetting:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 144
    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setSwitchAble(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onCreatePreferences$1(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->isUseHomeNavBarTypeActivity()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onCreatePreferences$2(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Boolean;)V
    .locals 3

    const-string v0, "MiuiHomeSettings"

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUseHomeNavBarTypeActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.navigation_bar_type_settings"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "com.android.settings.FullScreenDisplaySettings"

    const v1, 0x7f10030b

    .line 249
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    .line 248
    invoke-static {p1, v1, v2}, Lcom/miui/home/launcher/util/SystemUiController;->getSystemUISettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 247
    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$onCreatePreferences$3(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 255
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.miui.settings.HOME_SETTINGS_MIUI"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 257
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onCreatePreferences$4(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Boolean;)V
    .locals 0

    .line 259
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mUseSecurityCenterAction:Z

    .line 260
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpDefaultHomePref()V

    return-void
.end method

.method public static synthetic lambda$onCreatePreferences$5(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->isSupportRecentsRecommend()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onCreatePreferences$6(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Boolean;)V
    .locals 0

    .line 270
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->addRecentsRecommend(Z)V

    return-void
.end method

.method public static synthetic lambda$onPreferenceChange$13(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Object;)V
    .locals 3

    .line 550
    check-cast p1, Ljava/lang/Boolean;

    .line 551
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_no_word_model"

    .line 553
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 551
    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 554
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingNoWord(Z)V

    return-void
.end method

.method public static synthetic lambda$setUpAnimationRateValue$11(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 495
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->updateAnimationRate(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$setUpAnimationRateValue$12(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/String;)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$updateRecentsShowRecommend$10(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Boolean;)V
    .locals 3

    .line 410
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsShowRecommendCheckBoxPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

    .line 412
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "miui_recents_show_recommend"

    .line 414
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 411
    invoke-static {v1, v2, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateRecentsShowRecommend$9(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 405
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 406
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "showRecentsRecommend"

    const-string v2, "isShow"

    .line 405
    invoke-static {p0, v1, v2, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getCloudDataBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static needHideMinusScreen(Landroid/content/Context;)Z
    .locals 2

    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 736
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private setHomeScreenSearchBar(Landroid/content/Context;Z)V
    .locals 1

    .line 664
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings$10;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;Landroid/content/Context;Z)V

    const/4 p1, 0x0

    invoke-static {v0, p1, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private setIconSettingValue()V
    .locals 3

    .line 770
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mIconSizeSetting:Lcom/miui/home/settings/preference/ValuePreference;

    const v1, 0x7f10023b

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setTitle(I)V

    .line 771
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mIconSizeSetting:Lcom/miui/home/settings/preference/ValuePreference;

    const v1, 0x7f10023a

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setSummary(I)V

    .line 772
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.ICON_CUSTOMIZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "miref"

    const-string v2, "miuiHome"

    .line 773
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mIconSizeSetting:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private setPersonalAssistantState(Landroid/content/ContentResolver;Z)V
    .locals 1

    const-string v0, "open_personal_assistant"

    .line 730
    invoke-static {p1, v0, p2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private setUpAnimationRateValue()V
    .locals 3

    .line 490
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->supportSetAnimationRate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues(I)V

    .line 492
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ListPreference;->setEntries(I)V

    .line 493
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 494
    new-instance v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$mZNCZ81XN8-ndDrtfmqivs94s78;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$mZNCZ81XN8-ndDrtfmqivs94s78;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance v1, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$UnhuqcSkzwg6p7tP70_gSsoN9YQ;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$UnhuqcSkzwg6p7tP70_gSsoN9YQ;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setUpAnimationRateVisible()V
    .locals 2

    .line 501
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->supportSetAnimationRate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ListPreference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method private setUpDefaultHomePref()V
    .locals 3

    .line 420
    iget-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mUseSecurityCenterAction:Z

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDefaultHomeSetting:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.settings.HOME_SETTINGS_MIUI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 424
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSettingIntent:Landroid/content/Intent;

    const-string v1, "com.miui.home"

    const-string v2, "com.miui.home.settings.DefaultHomeSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSettingIntent:Landroid/content/Intent;

    const-string v1, "com.miui.home"

    const-string v2, "com.miui.home.settings.DefaultHomeWithJeejenSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDefaultHomeSetting:Lcom/miui/home/settings/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSettingIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private setUpScreenCellsConfig(ZI)V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 509
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenUtils;->getScreenCellsSizeOptions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 512
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 514
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 515
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 518
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "miui_home_screen_cells_size"

    .line 517
    invoke-static {v0, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 521
    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/ListPreference;->setEnabled(Z)V

    .line 526
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ListPreference;->setDisableTips(I)V

    return-void
.end method

.method private shouldHidePersonalAssistantSettings()Z
    .locals 1

    .line 836
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private showDialog()V
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_1

    .line 677
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 678
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 679
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f100325

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 680
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    const v2, 0x7f100324

    goto :goto_0

    :cond_0
    const v2, 0x7f100323

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100321

    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$14;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$14;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 682
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100322

    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$13;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$13;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 690
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$12;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$12;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 700
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$11;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$11;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 706
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 712
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showHomeSearchBarDialog()V
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 625
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 626
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100133

    .line 627
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100136

    .line 628
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100134

    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$9;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$9;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 629
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100135

    new-instance v2, Lcom/miui/home/settings/MiuiHomeSettings$8;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$8;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 637
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/MiuiHomeSettings$7;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$7;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    .line 645
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    .line 654
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 657
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mHomeSearchBarDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private updateRecentsShowRecommend()V
    .locals 3

    .line 404
    sget-object v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$wTwIZH05P4rFNs0sskP39zicrCs;->INSTANCE:Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$wTwIZH05P4rFNs0sskP39zicrCs;

    new-instance v1, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$adt2rj0-K1WbAiAs4dyW6KDASPc;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$adt2rj0-K1WbAiAs4dyW6KDASPc;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected checkDefaultLauncher(Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.miui.home"

    .line 530
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 531
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 532
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setVisible(Z)V

    .line 533
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 534
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 535
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setVisible(Z)V

    .line 536
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    .line 152
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/MiuiHomeSettings$1;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 169
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const p1, 0x7f130016

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "defalut_launcher"

    .line 171
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDefaultHomeSetting:Lcom/miui/home/settings/preference/ValuePreference;

    const-string p1, "all_apps_setting_pref"

    .line 172
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    const-string p1, "launcher_search_bar"

    .line 173
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "navigation_type_category"

    .line 174
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationTypeCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "navigation_type"

    .line 175
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    const-string p1, "miui_screen_config_pref"

    .line 176
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    const-string p1, "recents_config_pref"

    .line 177
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsConfigPrefCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "privacy_thumbnail_blur_pref"

    .line 178
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPrivacyThumbailBlurSetting:Landroidx/preference/PreferenceScreen;

    const-string p1, "no_word_model"

    .line 179
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "auto_fill_empty_pref"

    .line 180
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "lock_screen_cells_pref"

    .line 181
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "icon_size_pref"

    .line 182
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mIconSizeSetting:Lcom/miui/home/settings/preference/ValuePreference;

    const-string p1, "open_personal_assistant_pref"

    .line 183
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "switch_personal_assistant_pref"

    .line 184
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    const-string p1, "open_personal_assistant_settings_pref"

    .line 185
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    .line 186
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "show_mem_info_pref"

    .line 187
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string p1, "screen_cell_config"

    .line 188
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    const-string p1, "perfect_icons_switch"

    .line 189
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPerfectIconsSwitch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    .line 190
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ListPreference;->setVisible(Z)V

    :cond_1
    const-string p1, "animation_rate"

    .line 193
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    .line 194
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpAnimationRateVisible()V

    .line 195
    invoke-static {}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->isNoWordAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    .line 196
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-eqz p1, :cond_3

    .line 197
    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setVisible(Z)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    if-nez p1, :cond_4

    .line 206
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPerfectIconsSwitch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setVisible(Z)V

    goto :goto_1

    .line 208
    :cond_4
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPerfectIconsSwitch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initPersonalAssistant()V

    .line 213
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p1

    .line 214
    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_7

    .line 216
    sget-boolean p2, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    if-eqz p2, :cond_5

    .line 217
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p2, p0}, Lcom/miui/home/settings/preference/ValuePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.LAUNCHER_PERSONAL_ASSISTANT_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 221
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 223
    :goto_2
    sget-boolean p2, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    if-eqz p2, :cond_6

    .line 224
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const v0, 0x7f1003fb

    invoke-virtual {p2, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setTitle(I)V

    .line 226
    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 228
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 229
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p2}, Lcom/miui/home/settings/preference/ValuePreference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 230
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    .line 233
    :cond_8
    :goto_3
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDefaultHomeSetting:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings$2;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/MiuiHomeSettings$2;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 241
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->isShowSystemNavTypePreferenceInMiuiSettings(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 242
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationTypeCategory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 243
    new-instance p2, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$NviUCZ7rbJfAEF-cAJrV6D3wn5s;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$NviUCZ7rbJfAEF-cAJrV6D3wn5s;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance v1, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$sRaXNZtZmUHOnYkcBSQ48ntG3Bs;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$sRaXNZtZmUHOnYkcBSQ48ntG3Bs;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    invoke-static {p2, v1, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 253
    :cond_9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_a

    .line 254
    sget-object p2, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$H0p7yeOJnXm-TE7JEZ4O3yr5dp8;->INSTANCE:Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$H0p7yeOJnXm-TE7JEZ4O3yr5dp8;

    new-instance v1, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$dGnwapqogLK4gPB8CQ3ns-PqelU;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$dGnwapqogLK4gPB8CQ3ns-PqelU;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    invoke-static {p2, v1, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_4

    .line 263
    :cond_a
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpDefaultHomePref()V

    .line 266
    :goto_4
    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_b

    .line 267
    new-instance p2, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$eT9GiVuncLVDLDRtHmLwmfX-aTk;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$eT9GiVuncLVDLDRtHmLwmfX-aTk;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance v1, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$gErmW6-TGH2nnRw_v3PJ4Rtec5U;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$gErmW6-TGH2nnRw_v3PJ4Rtec5U;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    invoke-static {p2, v1, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 274
    :cond_b
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->initPrivacyThumbnailBlurPref()V

    .line 276
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.ALL_APPS_SETTINGS"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "is_drawer_setting"

    .line 277
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v1, p2}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    .line 279
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    if-eqz p1, :cond_c

    const p1, 0x7f100057

    goto :goto_5

    :cond_c
    const p1, 0x7f100051

    :goto_5
    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    .line 281
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_d

    .line 282
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setIconSettingValue()V

    goto :goto_6

    .line 284
    :cond_d
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mIconSizeSetting:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.ICON_CUSTOMIZE"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    :goto_6
    const-string p1, "recents_layout_style"

    .line 286
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsLayoutStyle:Landroidx/preference/PreferenceScreen;

    .line 287
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsLayoutStyle:Landroidx/preference/PreferenceScreen;

    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.miui.home.recents.task_stack_view_layout_style"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 289
    new-instance p1, Lcom/miui/home/settings/MiuiHomeSettings$3;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$3;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance p2, Lcom/miui/home/settings/MiuiHomeSettings$4;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$4;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    invoke-static {p1, p2, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 303
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportIconSearchBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 304
    new-instance p1, Lcom/miui/home/settings/MiuiHomeSettings$5;

    invoke-direct {p1, p0}, Lcom/miui/home/settings/MiuiHomeSettings$5;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    new-instance p2, Lcom/miui/home/settings/MiuiHomeSettings$6;

    invoke-direct {p2, p0}, Lcom/miui/home/settings/MiuiHomeSettings$6;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;)V

    invoke-static {p1, p2, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_7

    .line 326
    :cond_e
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 328
    :goto_7
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 722
    :cond_0
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroy()V

    .line 723
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 724
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mReSelectableNoWordSwitch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LauncherModeChangedMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 340
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LauncherModeChangedMessage;->getModeName()Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 344
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Ljava/lang/String;)Z

    move-result p1

    .line 345
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    if-eqz p1, :cond_1

    const p1, 0x7f100057

    goto :goto_0

    :cond_1
    const p1, 0x7f100051

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 759
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 766
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 541
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    .line 544
    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setSwitchAble(Z)V

    .line 545
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    if-nez p1, :cond_0

    .line 546
    new-instance p1, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$YZFBWeiygbKycE30mjTVuWW8gnE;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$YZFBWeiygbKycE30mjTVuWW8gnE;-><init>(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 556
    :cond_1
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 557
    check-cast p2, Ljava/lang/Boolean;

    const-string p1, "miui_home_enable_auto_fill_empty_cells"

    .line 560
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 558
    invoke-static {v0, p1, v1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 561
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeMoreSettingsAutoFillEmptyCells(Z)V

    goto/16 :goto_0

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPerfectIconsSwitch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_3

    .line 563
    check-cast p2, Ljava/lang/Boolean;

    const-string p1, "key_miui_mod_icon_enable"

    .line 566
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 564
    invoke-static {v0, p1, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 567
    :cond_3
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_5

    .line 568
    check-cast p2, Ljava/lang/Boolean;

    const-string p1, "miui_home_lock_screen_cells"

    .line 571
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 569
    invoke-static {v0, p1, v1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 572
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 574
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShakeMonitor;->onLockScreenSwitchChanged()V

    .line 576
    :cond_4
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEnabled(Z)V

    .line 577
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeMoreSettingsLockScreenCells(Z)V

    goto/16 :goto_0

    .line 578
    :cond_5
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v1, :cond_6

    .line 579
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miui_home_screen_cells_size"

    .line 580
    invoke-static {v0, p2, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 583
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :cond_6
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_9

    .line 585
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 586
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_7

    sget-boolean p1, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    if-eqz p1, :cond_7

    .line 587
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackPersonalAssistantSwitch(Z)V

    .line 588
    invoke-direct {p0, v0, v2}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantState(Landroid/content/ContentResolver;Z)V

    goto/16 :goto_0

    .line 590
    :cond_7
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->showDialog()V

    goto/16 :goto_0

    .line 593
    :cond_8
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackPersonalAssistantSwitch(Z)V

    .line 594
    invoke-direct {p0, v0, v3}, Lcom/miui/home/settings/MiuiHomeSettings;->setPersonalAssistantState(Landroid/content/ContentResolver;Z)V

    .line 595
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_e

    .line 596
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, v3}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    goto :goto_0

    .line 599
    :cond_9
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_a

    .line 600
    check-cast p2, Ljava/lang/Boolean;

    const-string p1, "miui_recents_show_mem_info"

    .line 602
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 601
    invoke-static {v0, p1, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 603
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeMoreSettingsShowMemInfo(Z)V

    goto :goto_0

    .line 604
    :cond_a
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsShowRecommendCheckBoxPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    if-ne p1, v1, :cond_b

    .line 605
    check-cast p2, Ljava/lang/Boolean;

    const-string p1, "miui_recents_show_recommend"

    .line 607
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 606
    invoke-static {v0, p1, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 608
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeMoreSettingsShowRecentsRecommend(Z)V

    goto :goto_0

    .line 609
    :cond_b
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_d

    .line 610
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 611
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/miui/home/settings/MiuiHomeSettings;->setHomeScreenSearchBar(Landroid/content/Context;Z)V

    goto :goto_0

    .line 613
    :cond_c
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->showHomeSearchBarDialog()V

    goto :goto_0

    .line 615
    :cond_d
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    if-ne p1, v0, :cond_e

    .line 616
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 617
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setAnimationRate(Landroid/content/Context;I)V

    .line 618
    iget-object p2, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAnimationRate:Lcom/miui/home/settings/preference/ListPreference;

    invoke-virtual {p2, p1}, Lcom/miui/home/settings/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_e
    :goto_0
    return v3
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 779
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "open_personal_assistant_settings_pref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 781
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.personalassistant"

    .line 782
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pa://common_settings"

    .line 784
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "pa://settings"

    .line 786
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 788
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 789
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 793
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 458
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onResume()V

    .line 459
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDefaultHomeSetting:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-direct {p0, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationTypeCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNavigationType:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getNavigationTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentPersonalAssistantName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->checkDefaultLauncher(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    .line 469
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 470
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mNoWordModel:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 472
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty()Z

    move-result v0

    .line 473
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mEnableAutoFillEmptyCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 474
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mLockScreenCells:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    const v1, 0x7f1003a4

    .line 476
    invoke-direct {p0, v0, v1}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpScreenCellsConfig(ZI)V

    .line 477
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "miui_recents_show_mem_info"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 479
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mPerfectIconsSwitch:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_miui_mod_icon_enable"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 481
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setSelectable(Z)V

    .line 482
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpAnimationRateValue()V

    .line 484
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mRecentsShowRecommendCheckBoxPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 485
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->updateRecentsShowRecommend()V

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "PERSONAL_ASSISTANT"

    .line 742
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "open_personal_assistant"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 741
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 744
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStartSwitchingNoWord(Lcom/miui/home/launcher/common/messages/StartSwitchingNoWordModel;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 801
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mScreenCellsConfig:Lcom/miui/home/settings/preference/ListPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ListPreference;->setEnabled(Z)V

    .line 802
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/settings/MiuiHomeSettings;->setUpScreenCellsConfig(ZI)V

    .line 803
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    if-nez p1, :cond_0

    .line 804
    new-instance p1, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 807
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mReSelectableNoWordSwitch:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .line 749
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 751
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const-string v1, "PERSONAL_ASSISTANT"

    .line 752
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 751
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    .line 753
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    :cond_0
    return-void
.end method
