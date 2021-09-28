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

.field private mInput:Lcom/miui/home/launcher/ExtendedEditText;

.field private mInputClear:Landroid/view/View;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mQuery:Ljava/lang/String;

.field private mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$initialize$0(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;Landroid/view/View;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->cancel(Z)V

    .line 90
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 91
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInputClear:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->cancel(Z)V

    .line 94
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p1, v1, v2}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    .line 95
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInputClear:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "local"

    .line 96
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsSearch(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method public final initialize(Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;Lcom/miui/home/launcher/ExtendedEditText;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 0

    .line 59
    iput-object p4, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    .line 60
    iput-object p3, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 62
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    .line 63
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ExtendedEditText;->setOnBackKeyListener(Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;)V

    .line 65
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p2, 0x7f0a01b6

    .line 67
    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInputClear:Landroid/view/View;

    .line 68
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInputClear:Landroid/view/View;

    new-instance p3, Lcom/miui/home/launcher/allapps/search/-$$Lambda$AllAppsSearchBarController$IsEWLkuX5wVP_jBeKX-NYhuEnEs;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/allapps/search/-$$Lambda$AllAppsSearchBarController$IsEWLkuX5wVP_jBeKX-NYhuEnEs;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    return-void
.end method

.method public onBackKey()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ExtendedEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
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

    .line 123
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ExtendedEditText;->hideKeyboard()V

    :cond_0
    if-eqz p2, :cond_1

    .line 126
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->showSearchPanel()V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public refreshSearchResult()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->cancel(Z)V

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0, v1, v2}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ExtendedEditText;->reset()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->hideSearchPanel()V

    return-void
.end method
