.class public Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "LauncherPersonalAssistantSettingActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LauncherPersonalAssistantSettingFragment"
.end annotation


# static fields
.field private static DEBUG_INTERNAL:Z


# instance fields
.field private mAppVaultRb:Lmiuix/preference/RadioButtonPreference;

.field private mGoogleRb:Lmiuix/preference/RadioButtonPreference;

.field private mNoActionRb:Lmiuix/preference/RadioButtonPreference;

.field private mSwitchCategory:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/pa_internal"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pa_internal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

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
    sput-boolean v0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->DEBUG_INTERNAL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private initRbUI()V
    .locals 5

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentPersonalAssistant()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v1, -0x1

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x8b6f028

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x3d5316d9

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "personal_assistant_google"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "personal_assistant_none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    .line 83
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mAppVaultRb:Lmiuix/preference/RadioButtonPreference;

    goto :goto_1

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mNoActionRb:Lmiuix/preference/RadioButtonPreference;

    goto :goto_1

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mGoogleRb:Lmiuix/preference/RadioButtonPreference;

    .line 86
    :goto_1
    iget-object p0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mSwitchCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {p0, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const-string v0, "home_switch_personal_assistant"

    .line 59
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mSwitchCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 60
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mSwitchCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    const-string v1, "personal_assistant_google"

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mGoogleRb:Lmiuix/preference/RadioButtonPreference;

    .line 61
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mSwitchCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    const-string v1, "personal_assistant_app_vault"

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mAppVaultRb:Lmiuix/preference/RadioButtonPreference;

    .line 62
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mSwitchCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    const-string v1, "personal_assistant_none"

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mNoActionRb:Lmiuix/preference/RadioButtonPreference;

    .line 64
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mGoogleRb:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mAppVaultRb:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mNoActionRb:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    invoke-direct {p0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->initRbUI()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f140018

    .line 54
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->addPreferencesFromResource(I)V

    .line 55
    invoke-direct {p0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->initView()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-1 screen is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.PersonalAssistantSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v1, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->DEBUG_INTERNAL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "switch_personal_assistant"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 95
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "personal_assistant_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const-string v1, "open_personal_assistant"

    .line 94
    invoke-static {p0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return v0
.end method
