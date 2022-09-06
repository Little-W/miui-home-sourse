.class public Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "LauncherPersonalAssistantSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;

    invoke-direct {v0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;-><init>()V

    const v1, 0x1020002

    .line 37
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
