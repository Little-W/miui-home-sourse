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

.field private mBranchSwitchChangeListener:Lcom/mi/globallauncher/branchInterface/BranchSwitchChangeListener;

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
    .locals 3

    .line 100
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lio/branch/search/BranchSearch;->optInToTracking()V

    .line 102
    new-instance v0, Lio/branch/search/CustomEvent;

    invoke-direct {v0}, Lio/branch/search/CustomEvent;-><init>()V

    const-string v1, "OPT_IN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/CustomEvent;->track()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lio/branch/search/BranchSearch;->optOutOfTracking()V

    .line 105
    new-instance v0, Lio/branch/search/CustomEvent;

    invoke-direct {v0}, Lio/branch/search/CustomEvent;-><init>()V

    const-string v1, "OPT_IN"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/CustomEvent;->track()V

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

    .line 94
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

    .line 95
    invoke-direct {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->changeBranchOptState()V

    .line 96
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    return v0
.end method

.method public changeToDrawerByDefault(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mChangeToDrawerByDefault:Z

    return-void
.end method

.method public getBranchKey()Ljava/lang/String;
    .locals 1

    .line 230
    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 235
    sget-object v0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public hideDeepViewDialog(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "BranchDeepViewFragment"

    .line 250
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/DialogFragment;

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public isBranchHasBeenOpened()Z
    .locals 1

    .line 137
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isBranchHasBeenOpened()Z

    move-result v0

    return v0
.end method

.method public isBranchOpen()Z
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->updateBranchOpen()V

    .line 80
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBranchRemoteConfigEnabled()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchEnabledForAllUser:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchEnabledForNewUser:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isBranchSearchGuideRemoteConfigEnabled()Z
    .locals 2

    .line 147
    sget-object v0, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->mInstance:Lcom/mi/globallauncher/config/CommercialRemoteConfig;

    const-string v1, "show_branch_search_guide"

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/config/CommercialRemoteConfig;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isBranchSwitchOn()Z
    .locals 1

    .line 116
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isBranchSwitchOn()Z

    move-result v0

    return v0
.end method

.method public isChangeToDrawerByDefault()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mChangeToDrawerByDefault:Z

    return v0
.end method

.method public isQuickSearchOpen()Z
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->updateQuickSearchOpen()V

    .line 178
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mQuickSearchOpen:Z

    return v0
.end method

.method public isQuickSearchRemoteConfigEnabled()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mQuickSearchEnabled:Z

    return v0
.end method

.method public isQuickSearchSwitchOn()Z
    .locals 1

    .line 183
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isFocusSearchOnEnterDrawerSwitchOn()Z

    move-result v0

    return v0
.end method

.method public isShowNewFeatureRemoteConfigEnabled()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mShowNewFeature:Z

    return v0
.end method

.method public needToShowSearchSuggestion()Z
    .locals 1

    .line 240
    sget-boolean v0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mNeedShowSearchSuggest:Z

    return v0
.end method

.method public onFirstEnterSearch()V
    .locals 3

    .line 193
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const-string v1, "enter_search_time"

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->containKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setShouldQuickSearchGuideShow(Z)V

    .line 195
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setEnterSearchTime(J)V

    :cond_0
    return-void
.end method

.method public setAllUserBranchEnabled(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchEnabledForAllUser:Z

    return-void
.end method

.method public setBranchHasBeenOpened(Z)V
    .locals 1

    .line 142
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setBranchHasBeenOpened(Z)V

    return-void
.end method

.method public setBranchInitSwitchOn(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 130
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialInit()Lcom/mi/globallauncher/branchInterface/ICommercialInit;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/mi/globallauncher/branchInterface/ICommercialInit;->initBranchSdk(ZZ)V

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/manager/BranchSearchManager;->setBranchSwitchOn(Z)V

    return-void
.end method

.method public setBranchKey(Ljava/lang/String;)V
    .locals 0

    .line 225
    sput-object p1, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchKey:Ljava/lang/String;

    return-void
.end method

.method public setBranchSwitchChangeListener(Lcom/mi/globallauncher/branchInterface/BranchSwitchChangeListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchSwitchChangeListener:Lcom/mi/globallauncher/branchInterface/BranchSwitchChangeListener;

    return-void
.end method

.method public setBranchSwitchOn(Z)V
    .locals 1

    .line 121
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setBranchSwitchOn(Z)V

    .line 122
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchSwitchChangeListener:Lcom/mi/globallauncher/branchInterface/BranchSwitchChangeListener;

    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/BranchSwitchChangeListener;->onBranchSwitchChanged()V

    :cond_0
    return-void
.end method

.method public setNeedToShowSearchSuggestion(Z)V
    .locals 0

    .line 245
    sput-boolean p1, Lcom/mi/globallauncher/manager/BranchSearchManager;->mNeedShowSearchSuggest:Z

    return-void
.end method

.method public setNewUserBranchEnabled(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchEnabledForNewUser:Z

    return-void
.end method

.method public setQuickSearchRemoteConfigEnabled(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mQuickSearchEnabled:Z

    return-void
.end method

.method public setQuickSearchSwitchOn(Z)V
    .locals 1

    .line 188
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setFocusSearchOnEnterDrawerSwitch(Z)V

    return-void
.end method

.method public setShowNewFeatureRemoteConfigEnabled(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mShowNewFeature:Z

    return-void
.end method

.method public shouldEnterSearch()Z
    .locals 1

    .line 201
    invoke-static {}, Lcom/mi/globallauncher/view/BranchSearchGuide;->needToShowSearchGuide()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->isQuickSearchOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->shouldShowNewFeatureForQuickSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowNewFeatureForQuickSearch()Z
    .locals 2

    .line 207
    invoke-static {}, Lcom/mi/globallauncher/search/SearchResultMaskView;->shouldShowQuickSearchGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->isBranchSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const-string v1, "branch_search_guide_show_time"

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->containKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    const-string v1, "quick_search_guide_show_time"

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->containKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateBranchOpen()V
    .locals 2

    .line 85
    iget-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    .line 86
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

    .line 87
    iget-boolean v1, p0, Lcom/mi/globallauncher/manager/BranchSearchManager;->mBranchOpen:Z

    if-eq v0, v1, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/mi/globallauncher/manager/BranchSearchManager;->changeBranchOptState()V

    :cond_1
    return-void
.end method

.method public updateQuickSearchOpen()V
    .locals 1

    .line 172
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
