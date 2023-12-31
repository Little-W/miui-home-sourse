.class public Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "TaskStackViewLayoutStylePreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPrivacyThumbailBlurSetting:Landroidx/preference/PreferenceScreen;

.field private mRecentsConfig:Landroidx/preference/PreferenceCategory;

.field private mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

.field private mTaskStackViewLayoutStyle:Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private initPrivacyThumbnailBlurPref()V
    .locals 2

    .line 70
    sget-object v0, Lcom/miui/home/recents/settings/-$$Lambda$TaskStackViewLayoutStylePreferenceFragment$3HUVkuPeWeWAUOA7EJNVx8HQ_oM;->INSTANCE:Lcom/miui/home/recents/settings/-$$Lambda$TaskStackViewLayoutStylePreferenceFragment$3HUVkuPeWeWAUOA7EJNVx8HQ_oM;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$TaskStackViewLayoutStylePreferenceFragment$aUa8AaKiVy8cFS6IFfFjP6LE2pY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$TaskStackViewLayoutStylePreferenceFragment$aUa8AaKiVy8cFS6IFfFjP6LE2pY;-><init>(Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$initPrivacyThumbnailBlurPref$0(Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 73
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->getPrivacyThumbnailBlurAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public synthetic lambda$initPrivacyThumbnailBlurPref$1$TaskStackViewLayoutStylePreferenceFragment(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mPrivacyThumbailBlurSetting:Landroidx/preference/PreferenceScreen;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mRecentsConfig:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mPrivacyThumbailBlurSetting:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f140037

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "task_stack_view_layout_style_container_preference"

    .line 40
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    const-string p1, "recents_config"

    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mRecentsConfig:Landroidx/preference/PreferenceCategory;

    const-string p1, "privacy_thumbnail_blur_pref"

    .line 42
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mPrivacyThumbailBlurSetting:Landroidx/preference/PreferenceScreen;

    const-string p1, "show_mem_info_pref"

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    .line 44
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    invoke-direct {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->initPrivacyThumbnailBlurPref()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, p0, :cond_0

    .line 61
    check-cast p2, Ljava/lang/Boolean;

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 63
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "miui_recents_show_mem_info"

    .line 62
    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 64
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeMoreSettingsShowMemInfo(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 50
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->initCheckedBox()V

    .line 52
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->initAnimView()V

    .line 53
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->mShowMemInfo:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "miui_recents_show_mem_info"

    invoke-static {p0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
