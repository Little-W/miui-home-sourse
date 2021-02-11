.class public Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "TaskStackViewLayoutStylePreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f130024

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    return-void
.end method
