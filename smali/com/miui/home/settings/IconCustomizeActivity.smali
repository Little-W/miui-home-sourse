.class public Lcom/miui/home/settings/IconCustomizeActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "IconCustomizeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 28
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x7f100201

    if-eqz p1, :cond_1

    const-string v2, "isNewIconPage"

    const/4 v3, 0x0

    .line 32
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f1001ff

    .line 34
    invoke-virtual {p0, v1}, Lcom/miui/home/settings/IconCustomizeActivity;->setTitle(I)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/settings/IconCustomizeActivity;->setTitle(I)V

    :goto_0
    const-string v1, "miref"

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEnterIconCustomizePage(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/home/settings/IconCustomizeActivity;->setTitle(I)V

    const-string p1, "other"

    .line 41
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEnterIconCustomizePage(Ljava/lang/String;)V

    .line 43
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 45
    new-instance v1, Lcom/miui/home/settings/IconCustomizeFragment;

    invoke-direct {v1}, Lcom/miui/home/settings/IconCustomizeFragment;-><init>()V

    .line 46
    invoke-virtual {v1, v0}, Lcom/miui/home/settings/IconCustomizeFragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x1020002

    .line 47
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 48
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
