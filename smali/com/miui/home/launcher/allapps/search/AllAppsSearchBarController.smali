.class public Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;
.super Ljava/lang/Object;
.source "AllAppsSearchBarController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;
    }
.end annotation


# instance fields
.field private mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

.field private mHasReportedBranchShowEvent:Z

.field private mHasReportedBranchShowHotSuggest:Z

.field private mInput:Lcom/miui/home/launcher/ExtendedEditText;

.field private mInputClear:Landroid/view/View;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mQuery:Ljava/lang/String;

.field private mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mHasReportedBranchShowEvent:Z

    .line 55
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mHasReportedBranchShowHotSuggest:Z

    return-void
.end method

.method public static synthetic lambda$initialize$0(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;Landroid/view/View;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->cancel(Z)V

    .line 92
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 93
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInputClear:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->cancel(Z)V

    .line 96
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p1, v1, v2}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    .line 97
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInputClear:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "local"

    .line 98
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsSearch(Ljava/lang/String;)V

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->resetEventReportValues()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method public handleScrollListener(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 175
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$1;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public hasReportedBranchShowEvent()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mHasReportedBranchShowEvent:Z

    return v0
.end method

.method public hasReportedBranchShowHotSuggest()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mHasReportedBranchShowHotSuggest:Z

    return v0
.end method

.method public hideKeyboard()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ExtendedEditText;->hideKeyboard()V

    return-void
.end method

.method public final initialize(Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;Lcom/miui/home/launcher/ExtendedEditText;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 0

    .line 62
    iput-object p4, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    .line 63
    iput-object p3, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 65
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    .line 66
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 67
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ExtendedEditText;->setOnBackKeyListener(Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;)V

    .line 68
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p2, 0x7f0a0213

    .line 70
    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInputClear:Landroid/view/View;

    .line 71
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInputClear:Landroid/view/View;

    new-instance p3, Lcom/miui/home/launcher/allapps/search/-$$Lambda$AllAppsSearchBarController$IsEWLkuX5wVP_jBeKX-NYhuEnEs;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/allapps/search/-$$Lambda$AllAppsSearchBarController$IsEWLkuX5wVP_jBeKX-NYhuEnEs;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    return-void
.end method

.method public onBackKey()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ExtendedEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->reset()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 130
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ExtendedEditText;->hideKeyboard()V

    :cond_0
    if-eqz p2, :cond_1

    .line 133
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->showSearchPanel()V

    .line 134
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    .line 135
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->onFirstEnterSearch()V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public refreshSearchResult()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->cancel(Z)V

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0, v1, v2}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ExtendedEditText;->reset()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->hideSearchPanel()V

    return-void
.end method

.method public resetEventReportValues()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->setHasReportedBranchShowEvent(Z)V

    return-void
.end method

.method public setHasReportedBranchShowEvent(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mHasReportedBranchShowEvent:Z

    return-void
.end method

.method public setHasReportedBranchShowHotSuggest(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mHasReportedBranchShowHotSuggest:Z

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ExtendedEditText;->setSelection(I)V

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->hideKeyboard()V

    return-void
.end method

.method public showKeyboard()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ExtendedEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/UiThreadHelper;->showKeyboardAsync(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public updateSearchHint(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 157
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    const v0, 0x7f1003a2

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ExtendedEditText;->setHint(I)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    const v0, 0x7f10004e

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ExtendedEditText;->setHint(I)V

    :goto_0
    return-void
.end method
