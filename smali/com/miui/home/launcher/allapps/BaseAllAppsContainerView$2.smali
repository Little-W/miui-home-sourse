.class Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$2;
.super Ljava/lang/Object;
.source "BaseAllAppsContainerView.java"

# interfaces
.implements Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->showSearchPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchHintClick(Ljava/lang/String;)V
    .locals 2

    .line 345
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setNeedToShowSearchSuggestion(Z)V

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->setSearchText(Ljava/lang/String;)V

    .line 347
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->resetEventReportValues()V

    const/4 p1, 0x1

    .line 348
    invoke-static {p1}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchHotItemClick(I)V

    return-void
.end method

.method public onSearchHintShow()V
    .locals 1

    const/4 v0, 0x1

    .line 353
    invoke-static {v0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchHotItemShow(I)V

    return-void
.end method
