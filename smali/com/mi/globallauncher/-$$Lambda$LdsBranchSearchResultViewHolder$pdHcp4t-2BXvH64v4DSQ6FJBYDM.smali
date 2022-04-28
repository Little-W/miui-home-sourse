.class public final synthetic Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$pdHcp4t-2BXvH64v4DSQ6FJBYDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

.field private final synthetic f$1:Lio/branch/search/BranchLocalAppResult;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;Lio/branch/search/BranchLocalAppResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$pdHcp4t-2BXvH64v4DSQ6FJBYDM;->f$0:Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    iput-object p2, p0, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$pdHcp4t-2BXvH64v4DSQ6FJBYDM;->f$1:Lio/branch/search/BranchLocalAppResult;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$pdHcp4t-2BXvH64v4DSQ6FJBYDM;->f$0:Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    iget-object v1, p0, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$pdHcp4t-2BXvH64v4DSQ6FJBYDM;->f$1:Lio/branch/search/BranchLocalAppResult;

    invoke-static {v0, v1, p1}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->lambda$updateLocalBranchView$0(Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;Lio/branch/search/BranchLocalAppResult;Landroid/view/View;)V

    return-void
.end method
