.class public Lcom/miui/home/launcher/allapps/settings/CategorySettingActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "CategorySettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public actionBarChanged()V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/CategorySettingActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/settings/CategorySettingActivity;->setActionBarStyle(Lmiuix/appcompat/app/ActionBar;Z)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/CategorySettingActivity;->actionBarChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f11029a

    .line 27
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategorySettingActivity;->setTitle(I)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/CategorySettingActivity;->actionBarChanged()V

    .line 29
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/CategorySettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 31
    new-instance p1, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;

    invoke-direct {p1}, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;-><init>()V

    const v0, 0x1020002

    .line 32
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
