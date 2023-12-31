.class public Lcom/miui/home/recents/settings/NavigationPositionPreferenceFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "NavigationPositionPreferenceFragment.java"


# instance fields
.field private mNavigationPosition:Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f140027

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/settings/NavigationPositionPreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "navigation_position_preference"

    .line 17
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationPositionPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationPositionPreferenceFragment;->mNavigationPosition:Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 22
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onResume()V

    .line 23
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationPositionPreferenceFragment;->mNavigationPosition:Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->initCheckedBox()V

    return-void
.end method
