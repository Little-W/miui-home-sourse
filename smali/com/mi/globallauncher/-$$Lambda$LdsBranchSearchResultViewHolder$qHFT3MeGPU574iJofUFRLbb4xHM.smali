.class public final synthetic Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$qHFT3MeGPU574iJofUFRLbb4xHM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lio/branch/search/BranchLocalAppResult;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;Ljava/lang/String;Lio/branch/search/BranchLocalAppResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$qHFT3MeGPU574iJofUFRLbb4xHM;->f$0:Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    iput-object p2, p0, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$qHFT3MeGPU574iJofUFRLbb4xHM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$qHFT3MeGPU574iJofUFRLbb4xHM;->f$2:Lio/branch/search/BranchLocalAppResult;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$qHFT3MeGPU574iJofUFRLbb4xHM;->f$0:Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;

    iget-object v1, p0, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$qHFT3MeGPU574iJofUFRLbb4xHM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/mi/globallauncher/-$$Lambda$LdsBranchSearchResultViewHolder$qHFT3MeGPU574iJofUFRLbb4xHM;->f$2:Lio/branch/search/BranchLocalAppResult;

    invoke-static {v0, v1, v2, p1}, Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;->lambda$updateLocalBranchView$0(Lcom/mi/globallauncher/LdsBranchSearchResultViewHolder;Ljava/lang/String;Lio/branch/search/BranchLocalAppResult;Landroid/view/View;)V

    return-void
.end method
