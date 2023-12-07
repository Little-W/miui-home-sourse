.class public abstract Lcom/miui/home/launcher/PreferenceContainerActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "PreferenceContainerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->startSettingActivityIfNeed(Landroid/app/Activity;)V

    .line 60
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onMultiWindowModeChanged(Z)V

    .line 66
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->checkMultiWindowState(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 31
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onResume()V

    .line 32
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;->setNavigationTrans(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 33
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->checkMultiWindowState(Landroid/app/Activity;)V

    return-void
.end method

.method public setActionBarStyle(Lmiuix/appcompat/app/ActionBar;Z)V
    .locals 0

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 50
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    :cond_0
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 53
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_1
    return-void
.end method

.method public setNavigationTrans(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 37
    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "PreferenceContainerActivity"

    const/high16 v1, 0x8000000

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    const-string p0, "setNavigationTrans: addFlags"

    .line 39
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    const-string p0, "setNavigationTrans: clearFlags"

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
