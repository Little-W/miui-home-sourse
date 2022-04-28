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


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;Lio/branch/search/BranchLinkResult;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;->this$0:Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    iput-object p2, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;->val$linkResult:Lio/branch/search/BranchLinkResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;->this$0:Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    iget-object v0, v0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder$1;->val$linkResult:Lio/branch/search/BranchLinkResult;

    invoke-interface {p1, v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;->setRemoteBranchClick(Landroid/content/Context;Lio/branch/search/BranchLinkResult;)V

    return-void
.end method
