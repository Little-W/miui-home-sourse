.class public Lcom/miui/home/settings/MiuiHomeSettingActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "MiuiHomeSettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSettingTitle()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f10024c

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->setTitle(I)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 34
    sget-object v0, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    invoke-virtual {v0}, Lcom/miui/home/LauncherDecoupleHelper;->getSettingFragment()Lcom/miui/home/settings/MiuiHomeSettings;

    move-result-object v0

    const v1, 0x1020002

    .line 35
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 37
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
