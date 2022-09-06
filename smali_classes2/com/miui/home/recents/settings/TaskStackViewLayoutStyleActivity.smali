.class public Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "TaskStackViewLayoutStyleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
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
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;

    invoke-direct {v0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;-><init>()V

    const v1, 0x1020002

    .line 26
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
