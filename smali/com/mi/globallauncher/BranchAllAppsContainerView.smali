.class public Lcom/mi/globallauncher/BranchAllAppsContainerView;
.super Ljava/lang/Object;
.source "BranchAllAppsContainerView.java"


# static fields
.field private static final instance:Lcom/mi/globallauncher/BranchAllAppsContainerView;


# instance fields
.field private afterReset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/mi/globallauncher/BranchAllAppsContainerView;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchAllAppsContainerView;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/BranchAllAppsContainerView;->instance:Lcom/mi/globallauncher/BranchAllAppsContainerView;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/mi/globallauncher/BranchAllAppsContainerView;->afterReset:Z

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/BranchAllAppsContainerView;
    .locals 1

    .line 19
    sget-object v0, Lcom/mi/globallauncher/BranchAllAppsContainerView;->instance:Lcom/mi/globallauncher/BranchAllAppsContainerView;

    return-object v0
.end method


# virtual methods
.method public callEnterQuickSearchIfNeeded(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V
    .locals 1

    .line 31
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isQuickSearchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mi/globallauncher/BranchAllAppsContainerView;->afterReset:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->requestFocus()Z

    .line 33
    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->showKeyboard()V

    :cond_0
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/mi/globallauncher/BranchAllAppsContainerView;->afterReset:Z

    return-void
.end method

.method public setAfterReset(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/mi/globallauncher/BranchAllAppsContainerView;->afterReset:Z

    return-void
.end method
