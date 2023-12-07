.class public Lcom/miui/home/settings/MiuiHomeSettingActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "MiuiHomeSettingActivity.java"


# instance fields
.field private mIsResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettingActivity;->mIsResume:Z

    return-void
.end method


# virtual methods
.method public actionBarChanged()V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->setActionBarStyle(Lmiuix/appcompat/app/ActionBar;Z)V

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

    .line 79
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->actionBarChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MiuiHomeSettingActivity"

    const-string v0, "onCreate"

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSettingTitle()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f110273

    .line 37
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->setTitle(I)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->actionBarChanged()V

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 46
    sget-object v0, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    invoke-virtual {v0}, Lcom/miui/home/LauncherDecoupleHelper;->getSettingFragment()Lcom/miui/home/settings/MiuiHomeSettings;

    move-result-object v0

    const v1, 0x1020002

    .line 47
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 48
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Application;->setMiuiHomeSettingActivity(Lcom/miui/home/settings/MiuiHomeSettingActivity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onDestroy()V

    const-string p0, "MiuiHomeSettingActivity"

    const-string v0, "onDestroy"

    .line 55
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Application;->setMiuiHomeSettingActivity(Lcom/miui/home/settings/MiuiHomeSettingActivity;)V

    return-void
.end method

.method public onOrientationChanged()V
    .locals 3

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged isRotatable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mIsResume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/settings/MiuiHomeSettingActivity;->mIsResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiHomeSettingActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 87
    iget-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettingActivity;->mIsResume:Z

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/settings/MiuiHomeSettingActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 68
    invoke-super {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onPause()V

    const-string v0, "MiuiHomeSettingActivity"

    const-string v1, "onPause"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettingActivity;->mIsResume:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onResume()V

    const-string v0, "MiuiHomeSettingActivity"

    const-string v1, "onResume"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/miui/home/settings/MiuiHomeSettingActivity;->mIsResume:Z

    return-void
.end method
