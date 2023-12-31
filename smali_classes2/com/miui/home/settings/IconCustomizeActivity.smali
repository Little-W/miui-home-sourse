.class public Lcom/miui/home/settings/IconCustomizeActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "IconCustomizeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public actionBarChanged()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/settings/IconCustomizeActivity;->setActionBarStyle(Lmiuix/appcompat/app/ActionBar;Z)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeActivity;->actionBarChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f110254

    .line 37
    invoke-virtual {p0, v1}, Lcom/miui/home/settings/IconCustomizeActivity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f110257

    .line 39
    invoke-virtual {p0, v1}, Lcom/miui/home/settings/IconCustomizeActivity;->setTitle(I)V

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeActivity;->actionBarChanged()V

    if-eqz p1, :cond_1

    const-string v1, "miref"

    .line 43
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEnterIconCustomizePage(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "other"

    .line 45
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEnterIconCustomizePage(Ljava/lang/String;)V

    .line 47
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 49
    new-instance p1, Lcom/miui/home/settings/IconCustomizeFragment;

    invoke-direct {p1}, Lcom/miui/home/settings/IconCustomizeFragment;-><init>()V

    .line 50
    invoke-virtual {p1, v0}, Lcom/miui/home/settings/IconCustomizeFragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x1020002

    .line 51
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
