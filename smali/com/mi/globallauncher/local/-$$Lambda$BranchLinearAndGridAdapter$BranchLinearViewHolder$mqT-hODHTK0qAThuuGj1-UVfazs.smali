.class public final synthetic Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchLinearViewHolder$mqT-hODHTK0qAThuuGj1-UVfazs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;

.field private final synthetic f$1:Lio/branch/search/BranchLinkResult;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;Lio/branch/search/BranchLinkResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchLinearViewHolder$mqT-hODHTK0qAThuuGj1-UVfazs;->f$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;

    iput-object p2, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchLinearViewHolder$mqT-hODHTK0qAThuuGj1-UVfazs;->f$1:Lio/branch/search/BranchLinkResult;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchLinearViewHolder$mqT-hODHTK0qAThuuGj1-UVfazs;->f$0:Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;

    iget-object p0, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchLinearAndGridAdapter$BranchLinearViewHolder$mqT-hODHTK0qAThuuGj1-UVfazs;->f$1:Lio/branch/search/BranchLinkResult;

    invoke-virtual {v0, p0, p1}, Lcom/mi/globallauncher/local/BranchLinearAndGridAdapter$BranchLinearViewHolder;->lambda$updateView$0$BranchLinearAndGridAdapter$BranchLinearViewHolder(Lio/branch/search/BranchLinkResult;Landroid/view/View;)V

    return-void
.end method
