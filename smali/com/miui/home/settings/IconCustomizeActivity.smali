.class public Lcom/miui/home/settings/IconCustomizeActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "IconCustomizeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 26
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f100152

    if-eqz p1, :cond_1

    const-string v1, "isNewIconPage"

    const/4 v2, 0x0

    .line 29
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f100150

    .line 31
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/IconCustomizeActivity;->setTitle(I)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/IconCustomizeActivity;->setTitle(I)V

    :goto_0
    const-string v0, "miref"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEnterIconCustomizePage(Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/IconCustomizeActivity;->setTitle(I)V

    const-string p1, "other"

    .line 38
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEnterIconCustomizePage(Ljava/lang/String;)V

    .line 40
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/miui/home/settings/IconCustomizeFragment;

    invoke-direct {v0}, Lcom/miui/home/settings/IconCustomizeFragment;-><init>()V

    const v1, 0x1020002

    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 44
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
