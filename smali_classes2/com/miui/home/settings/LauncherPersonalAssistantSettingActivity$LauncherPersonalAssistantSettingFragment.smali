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

    .line 39
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

    .line 38
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private initRbUI()V
    .locals 4

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentPersonalAssistant()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v1, -0x1

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x8b6f028

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

    const/4 v1, 0x1

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 80
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mAppVaultRb:Lmiuix/preference/RadioButtonPreference;

    goto :goto_1

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mNoActionRb:Lmiuix/preference/RadioButtonPreference;

    goto :goto_1

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mGoogleRb:Lmiuix/preference/RadioButtonPreference;

    .line 83
    :goto_1
    iget-object v1, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mSwitchCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initView()V
    .locals 2

    const-string v0, "home_switch_personal_assistant"

    .line 56
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mSwitchCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 57
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mSwitchCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    const-string v1, "personal_assistant_google"

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mGoogleRb:Lmiuix/preference/RadioButtonPreference;

    .line 58
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mSwitchCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    const-string v1, "personal_assistant_app_vault"

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mAppVaultRb:Lmiuix/preference/RadioButtonPreference;

    .line 59
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mSwitchCategory:Lmiuix/preference/RadioButtonPreferenceCategory;

    const-string v1, "personal_assistant_none"

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mNoActionRb:Lmiuix/preference/RadioButtonPreference;

    .line 61
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mGoogleRb:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mAppVaultRb:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->mNoActionRb:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 65
    invoke-direct {p0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->initRbUI()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f130015

    .line 51
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->addPreferencesFromResource(I)V

    .line 52
    invoke-direct {p0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->initView()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "switch_personal_assistant"

    sget-boolean v2, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->DEBUG_INTERNAL:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "open_personal_assistant"

    const-string v2, "personal_assistant_none"

    .line 91
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    .line 90
    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return v2
.end method
