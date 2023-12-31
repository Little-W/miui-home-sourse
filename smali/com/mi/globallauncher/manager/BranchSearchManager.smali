.class Lcom/mi/globallauncher/manager/BranchSearchManager;
.super Ljava/lang/Object;
.source "BranchSearchManager.java"

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;


# static fields
.field private static final GET_LOCATION_INTERVAL:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "BranchSearchManager"

.field private static volatile instance:Lcom/mi/globallauncher/manager/BranchSearchManager; = null

.field private static mBranchKey:Ljava/lang/String; = null

.field private static mLocation:Landroid/location/Location; = null

.field private static mNeedShowSearchSuggest:Z = true


# instance fields
.field private mBranchEnabledForAllUser:Z

.field private mBranchEnabledForNewUser:Z

.field private mBranchOpen:Z

.field private mChangeToDrawerByDefault:Z

.field private mQuickSearchEnabled:Z

.field private mQuickSearchOpen:Z

.field private mShowNewFeature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isBranchOpenForNewUsers()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchEnabledForNewUser:Z

    .line 43
    sget-object v0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mInstance:Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    const-string v1, "branch_open_all"

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchEnabledForAllUser:Z

    .line 44
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchEnabledForAllUser:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchEnabledForNewUser:Z

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isBranchSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    .line 46
    sget-object v0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mInstance:Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    const-string v3, "open_search_on_enter_drawer"

    invoke-virtual {v0, v3}, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mQuickSearchEnabled:Z

    .line 47
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mQuickSearchEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isFocusSearchOnEnterDrawerSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mQuickSearchOpen:Z

    .line 48
    sget-object v0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mInstance:Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    const-string v1, "show_new_feature"

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mShowNewFeature:Z

    .line 49
    iput-boolean v2, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mChangeToDrawerByDefault:Z

    return-void
.end method

.method private changeBranchOptState()V
    .locals 2

    .line 88
    iget-boolean p0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    const-string v0, "OPT_IN"

    if-eqz p0, :cond_0

    .line 89
    invoke-static {}, Lio/branch/search/BranchSearch;->optInToTracking()V

    .line 90
    new-instance p0, Lio/branch/search/CustomEvent;

    invoke-direct {p0}, Lio/branch/search/CustomEvent;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/CustomEvent;->track()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lio/branch/search/BranchSearch;->optOutOfTracking()V

    .line 93
    new-instance p0, Lio/branch/search/CustomEvent;

    invoke-direct {p0}, Lio/branch/search/CustomEvent;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/CustomEvent;->track()V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchManager;->instance:Lcom/mi/globallauncher/manager/BranchSearchManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/mi/globallauncher/manager/BranchSearchManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/mi/globallauncher/manager/BranchSearchManager;->instance:Lcom/mi/globallauncher/manager/BranchSearchManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/mi/globallauncher/manager/BranchSearchManager;

    invoke-direct {v1}, Lcom/mi/globallauncher/manager/BranchSearchManager;-><init>()V

    sput-object v1, Lcom/mi/globallauncher/manager/BranchSearchManager;->instance:Lcom/mi/globallauncher/manager/BranchSearchManager;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchManager;->instance:Lcom/mi/globallauncher/manager/BranchSearchManager;

    return-object v0
.end method


# virtual methods
.method public branchOpenWithOptChange()Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->isBranchRemoteConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->isBranchSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    .line 83
    invoke-direct {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->changeBranchOptState()V

    .line 84
    iget-boolean p0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    return p0
.end method

.method public changeToDrawerByDefault(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mChangeToDrawerByDefault:Z

    return-void
.end method

.method public getBranchKey()Ljava/lang/String;
    .locals 0

    .line 215
    sget-object p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 0

    .line 220
    sget-object p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public hideDeepViewDialog(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    const-string p0, "BranchDeepViewFragment"

    .line 235
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public isBranchHasBeenOpened()Z
    .locals 0

    .line 122
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isBranchHasBeenOpened()Z

    move-result p0

    return p0
.end method

.method public isBranchOpen()Z
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->updateBranchOpen()V

    .line 68
    iget-boolean p0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBranchRemoteConfigEnabled()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchEnabledForAllUser:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchEnabledForNewUser:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isBranchSearchGuideRemoteConfigEnabled()Z
    .locals 1

    .line 132
    sget-object p0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mInstance:Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    const-string v0, "show_branch_search_guide"

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBranchSwitchOn()Z
    .locals 0

    .line 104
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isBranchSwitchOn()Z

    move-result p0

    return p0
.end method

.method public isChangeToDrawerByDefault()Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mChangeToDrawerByDefault:Z

    return p0
.end method

.method public isQuickSearchOpen()Z
    .locals 0

    .line 162
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->updateQuickSearchOpen()V

    .line 163
    iget-boolean p0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mQuickSearchOpen:Z

    return p0
.end method

.method public isQuickSearchRemoteConfigEnabled()Z
    .locals 0

    .line 147
    iget-boolean p0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mQuickSearchEnabled:Z

    return p0
.end method

.method public isQuickSearchSwitchOn()Z
    .locals 0

    .line 168
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isFocusSearchOnEnterDrawerSwitchOn()Z

    move-result p0

    return p0
.end method

.method public isShowNewFeatureRemoteConfigEnabled()Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mShowNewFeature:Z

    return p0
.end method

.method public needToShowSearchSuggestion()Z
    .locals 0

    .line 225
    sget-boolean p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mNeedShowSearchSuggest:Z

    return p0
.end method

.method public onFirstEnterSearch()V
    .locals 2

    .line 178
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    const-string v0, "enter_search_time"

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->containKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 179
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setShouldQuickSearchGuideShow(Z)V

    .line 180
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setEnterSearchTime(J)V

    :cond_0
    return-void
.end method

.method public setAllUserBranchEnabled(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchEnabledForAllUser:Z

    return-void
.end method

.method public setBranchHasBeenOpened(Z)V
    .locals 0

    .line 127
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setBranchHasBeenOpened(Z)V

    return-void
.end method

.method public setBranchInitSwitchOn(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 115
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialInit()Lcom/mi/globallauncher/branchInterface/ICommercialInit;

    move-result-object v0

    invoke-static {}, Lcom/mi/globallauncher/util/CommonUtilities;->isPocoLauncher()Z

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/mi/globallauncher/branchInterface/ICommercialInit;->initBranchSdk(ZZ)V

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/manager/BranchSearchManager;->setBranchSwitchOn(Z)V

    return-void
.end method

.method public setBranchKey(Ljava/lang/String;)V
    .locals 0

    .line 210
    sput-object p1, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchKey:Ljava/lang/String;

    return-void
.end method

.method public setBranchSwitchOn(Z)V
    .locals 0

    .line 109
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setBranchSwitchOn(Z)V

    return-void
.end method

.method public setNeedToShowSearchSuggestion(Z)V
    .locals 0

    .line 230
    sput-boolean p1, Lcom/mi/globallauncher/manager/BranchSearchManager;->mNeedShowSearchSuggest:Z

    return-void
.end method

.method public setNewUserBranchEnabled(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchEnabledForNewUser:Z

    return-void
.end method

.method public setQuickSearchRemoteConfigEnabled(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mQuickSearchEnabled:Z

    return-void
.end method

.method public setQuickSearchSwitchOn(Z)V
    .locals 0

    .line 173
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setFocusSearchOnEnterDrawerSwitch(Z)V

    return-void
.end method

.method public setShowNewFeatureRemoteConfigEnabled(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mShowNewFeature:Z

    return-void
.end method

.method public shouldEnterSearch()Z
    .locals 1

    .line 186
    invoke-static {}, Lcom/mi/globallauncher/view/BranchSearchGuide;->needToShowSearchGuide()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->isQuickSearchOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->shouldShowNewFeatureForQuickSearch()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldShowNewFeatureForQuickSearch()Z
    .locals 1

    .line 192
    invoke-static {}, Lcom/mi/globallauncher/search/SearchResultMaskView;->shouldShowQuickSearchGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->isBranchSwitchOn()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 194
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    const-string v0, "branch_search_guide_show_time"

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->containKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 195
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    const-string v0, "quick_search_guide_show_time"

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->containKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateBranchOpen()V
    .locals 2

    .line 73
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    .line 74
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->isBranchRemoteConfigEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->isBranchSwitchOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    .line 75
    iget-boolean v1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    if-eq v0, v1, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->changeBranchOptState()V

    :cond_1
    return-void
.end method

.method public updateQuickSearchOpen()V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->isQuickSearchRemoteConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->isQuickSearchSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mQuickSearchOpen:Z

    return-void
.end method
