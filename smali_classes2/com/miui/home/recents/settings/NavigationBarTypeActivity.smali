.class public Lcom/miui/home/recents/settings/NavigationBarTypeActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "NavigationBarTypeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method

.method private updateActionBarStyle()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypeActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 41
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 24
    new-instance v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;

    invoke-direct {v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;-><init>()V

    const v1, 0x1020002

    .line 25
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onResume()V

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypeActivity;->updateActionBarStyle()V

    :cond_0
    return-void
.end method
