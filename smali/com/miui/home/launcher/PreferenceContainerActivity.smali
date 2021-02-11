.class public abstract Lcom/miui/home/launcher/PreferenceContainerActivity;
.super Lmiui/app/Activity;
.source "PreferenceContainerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
