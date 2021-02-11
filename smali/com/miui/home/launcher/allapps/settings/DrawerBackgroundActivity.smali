.class public Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "DrawerBackgroundActivity.java"


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

    .line 17
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->setDayNightThemeIfNeed(Landroid/app/Activity;)V

    .line 23
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;-><init>()V

    const v1, 0x1020002

    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 28
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
