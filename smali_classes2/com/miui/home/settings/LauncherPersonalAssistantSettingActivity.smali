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

    .line 26
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 32
    new-instance v0, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;

    invoke-direct {v0}, Lcom/miui/home/settings/LauncherPersonalAssistantSettingActivity$LauncherPersonalAssistantSettingFragment;-><init>()V

    const v1, 0x1020002

    .line 33
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
