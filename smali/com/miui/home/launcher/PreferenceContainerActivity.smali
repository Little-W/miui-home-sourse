.class public abstract Lcom/miui/home/launcher/PreferenceContainerActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "PreferenceContainerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 32
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onResume()V

    .line 33
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;->setNavigationTrans(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public setNavigationTrans(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 37
    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x8000000

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const-string p1, "PreferenceContainerActivity"

    const-string v0, "setNavigationTrans: addFlags"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    const-string p1, "PreferenceContainerActivity"

    const-string v0, "setNavigationTrans: clearFlags"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
