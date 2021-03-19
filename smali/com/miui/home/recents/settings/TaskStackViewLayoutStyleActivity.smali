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

.method public onBackPressed()V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;

    invoke-direct {v0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;-><init>()V

    const v1, 0x1020002

    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 28
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
