.class public final synthetic Lcom/mi/globallauncher/local/-$$Lambda$BranchAppsGridAdapter$ViewHolder$v4dSiiUCN0byTeNucaX1Y4_s-kU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/local/BranchAppsGridAdapter$ViewHolder;

.field private final synthetic f$1:Lio/branch/search/BranchLocalLinkResult;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/local/BranchAppsGridAdapter$ViewHolder;Lio/branch/search/BranchLocalLinkResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchAppsGridAdapter$ViewHolder$v4dSiiUCN0byTeNucaX1Y4_s-kU;->f$0:Lcom/mi/globallauncher/local/BranchAppsGridAdapter$ViewHolder;

    iput-object p2, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchAppsGridAdapter$ViewHolder$v4dSiiUCN0byTeNucaX1Y4_s-kU;->f$1:Lio/branch/search/BranchLocalLinkResult;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchAppsGridAdapter$ViewHolder$v4dSiiUCN0byTeNucaX1Y4_s-kU;->f$0:Lcom/mi/globallauncher/local/BranchAppsGridAdapter$ViewHolder;

    iget-object p0, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchAppsGridAdapter$ViewHolder$v4dSiiUCN0byTeNucaX1Y4_s-kU;->f$1:Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {v0, p0, p1}, Lcom/mi/globallauncher/local/BranchAppsGridAdapter$ViewHolder;->lambda$updateView$0$BranchAppsGridAdapter$ViewHolder(Lio/branch/search/BranchLocalLinkResult;Landroid/view/View;)V

    return-void
.end method
