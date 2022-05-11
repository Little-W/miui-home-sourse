.class Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;
.super Ljava/lang/Object;
.source "LdsBranchSearchResultViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->setUpRvAdapterData(Lio/branch/search/BranchAppResult;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

.field final synthetic val$linkResult:Lio/branch/search/BranchLinkResult;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;Ljava/lang/String;Lio/branch/search/BranchLinkResult;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;->this$0:Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    iput-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;->val$linkResult:Lio/branch/search/BranchLinkResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;->val$packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackGpOrGetApps(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 94
    invoke-static {p1}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchResultClick(I)V

    .line 95
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;->this$0:Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    iget-object v0, v0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;->val$linkResult:Lio/branch/search/BranchLinkResult;

    invoke-interface {p1, v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setRemoteBranchClick(Landroid/content/Context;Lio/branch/search/BranchLinkResult;)V

    return-void
.end method
