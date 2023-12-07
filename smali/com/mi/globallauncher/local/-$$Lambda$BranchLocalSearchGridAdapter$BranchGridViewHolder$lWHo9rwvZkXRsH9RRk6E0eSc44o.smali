.class public final synthetic Lcom/mi/globallauncher/local/-$$Lambda$BranchLocalSearchGridAdapter$BranchGridViewHolder$lWHo9rwvZkXRsH9RRk6E0eSc44o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;

.field private final synthetic f$1:Lio/branch/search/BranchLocalLinkResult;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;Lio/branch/search/BranchLocalLinkResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchLocalSearchGridAdapter$BranchGridViewHolder$lWHo9rwvZkXRsH9RRk6E0eSc44o;->f$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;

    iput-object p2, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchLocalSearchGridAdapter$BranchGridViewHolder$lWHo9rwvZkXRsH9RRk6E0eSc44o;->f$1:Lio/branch/search/BranchLocalLinkResult;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchLocalSearchGridAdapter$BranchGridViewHolder$lWHo9rwvZkXRsH9RRk6E0eSc44o;->f$0:Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;

    iget-object p0, p0, Lcom/mi/globallauncher/local/-$$Lambda$BranchLocalSearchGridAdapter$BranchGridViewHolder$lWHo9rwvZkXRsH9RRk6E0eSc44o;->f$1:Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {v0, p0, p1}, Lcom/mi/globallauncher/local/BranchLocalSearchGridAdapter$BranchGridViewHolder;->lambda$updateView$0$BranchLocalSearchGridAdapter$BranchGridViewHolder(Lio/branch/search/BranchLocalLinkResult;Landroid/view/View;)V

    return-void
.end method
