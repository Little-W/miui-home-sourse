.class public Lcom/miui/home/settings/MiuiHomeSettingActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "MiuiHomeSettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSettingTitle()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f100161

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->setTitle(I)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 32
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {v0}, Lcom/miui/home/settings/MiuiHomeSettings;-><init>()V

    const v1, 0x1020002

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 35
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
