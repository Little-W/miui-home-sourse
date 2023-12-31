.class public final synthetic Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchGridViewHolder$rdiN7y9ojj2IbdEVUXFljpGOIbY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;

.field private final synthetic f$1:Lio/branch/search/BranchLinkResult;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;Lio/branch/search/BranchLinkResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchGridViewHolder$rdiN7y9ojj2IbdEVUXFljpGOIbY;->f$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;

    iput-object p2, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchGridViewHolder$rdiN7y9ojj2IbdEVUXFljpGOIbY;->f$1:Lio/branch/search/BranchLinkResult;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchGridViewHolder$rdiN7y9ojj2IbdEVUXFljpGOIbY;->f$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;

    iget-object p0, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchGridViewHolder$rdiN7y9ojj2IbdEVUXFljpGOIbY;->f$1:Lio/branch/search/BranchLinkResult;

    invoke-virtual {v0, p0, p1}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchGridViewHolder;->lambda$updateView$0$BranchLinearAndGridAdapter$BranchGridViewHolder(Lio/branch/search/BranchLinkResult;Landroid/view/View;)V

    return-void
.end method
