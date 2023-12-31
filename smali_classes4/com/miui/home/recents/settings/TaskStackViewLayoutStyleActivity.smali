.class public Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "TaskStackViewLayoutStyleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public actionBarChanged()V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;->setActionBarStyle(Lmiuix/appcompat/app/ActionBar;Z)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 27
    new-instance p1, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;

    invoke-direct {p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;-><init>()V

    const v0, 0x1020002

    .line 28
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onResume()V

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;->actionBarChanged()V

    return-void
.end method
