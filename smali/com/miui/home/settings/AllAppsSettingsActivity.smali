.class public Lcom/miui/home/settings/AllAppsSettingsActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "AllAppsSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 22
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_drawer_setting"

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.miui.home.action.LAUNCHER_SLIDEUP_SETTING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v0, :cond_0

    const v1, 0x7f1000ee

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const v1, 0x7f10014e

    goto :goto_0

    :cond_1
    const v1, 0x7f100054

    .line 32
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/home/settings/AllAppsSettingsActivity;->setTitle(I)V

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 35
    new-instance v2, Lcom/miui/home/settings/AllAppsSettingsFragment;

    invoke-direct {v2}, Lcom/miui/home/settings/AllAppsSettingsFragment;-><init>()V

    .line 36
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "is_drawer_setting"

    .line 37
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_slide_up_setting"

    .line 38
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    invoke-virtual {v2, v3}, Lcom/miui/home/settings/AllAppsSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x1020002

    .line 40
    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 41
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 42
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
