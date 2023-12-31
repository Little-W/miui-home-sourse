.class public Lcom/miui/home/settings/AllAppsSettingsActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "AllAppsSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public actionBarChanged()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/settings/AllAppsSettingsActivity;->setActionBarStyle(Lmiuix/appcompat/app/ActionBar;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsActivity;->actionBarChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 26
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_drawer_setting"

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.miui.home.action.LAUNCHER_SLIDEUP_SETTING"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v1, :cond_0

    const v2, 0x7f110185

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const v2, 0x7f110250

    goto :goto_0

    :cond_1
    const v2, 0x7f11005c

    .line 36
    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/home/settings/AllAppsSettingsActivity;->setTitle(I)V

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsActivity;->actionBarChanged()V

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 42
    new-instance v2, Lcom/miui/home/settings/AllAppsSettingsFragment;

    invoke-direct {v2}, Lcom/miui/home/settings/AllAppsSettingsFragment;-><init>()V

    .line 43
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 44
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_slide_up_setting"

    .line 45
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    invoke-virtual {v2, v3}, Lcom/miui/home/settings/AllAppsSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x1020002

    .line 47
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
