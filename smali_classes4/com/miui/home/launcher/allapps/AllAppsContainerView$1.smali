.class Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;
.super Ljava/lang/Object;
.source "AllAppsContainerView.java"

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/BranchInitInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/AllAppsContainerView;->initBranchOnScrollUpEnd(Lcom/miui/home/launcher/LauncherState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

.field final synthetic val$state:Lcom/miui/home/launcher/LauncherState;

.field final synthetic val$withAnim:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsContainerView;Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->val$state:Lcom/miui/home/launcher/LauncherState;

    iput-boolean p3, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->val$withAnim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterQuickSearchIfNeeded()V
    .locals 3

    .line 43
    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsContainerView$1$KK4BFFEHsHxKf7Dub8FL5D0UtT0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsContainerView$1$KK4BFFEHsHxKf7Dub8FL5D0UtT0;-><init>(Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public handleDragAndHideAppsGuideViewAfterGuide()V
    .locals 0

    .line 38
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->handleDragAndHideAppsGuideViewAfterGuide()V

    return-void
.end method

.method public isBranchSearchGuideViewVisible()Z
    .locals 0

    .line 33
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->isBranchSearchGuideViewVisible()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$enterQuickSearchIfNeeded$0$AllAppsContainerView$1()V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->callEnterQuickSearchIfNeeded()V

    return-void
.end method

.method public showBranchSearchGuideView()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->val$state:Lcom/miui/home/launcher/LauncherState;

    instance-of v0, v0, Lcom/miui/home/launcher/uioverrides/AllAppsState;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->val$withAnim:Z

    if-eqz p0, :cond_0

    .line 27
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->showBranchSearchGuideView()V

    :cond_0
    return-void
.end method
