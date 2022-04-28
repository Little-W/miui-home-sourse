.class Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$1;
.super Ljava/lang/Object;
.source "BranchSearchAlgorithm.java"

# interfaces
.implements Lio/branch/search/IBranchAutoSuggestEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->getAutoSuggest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$1;->this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBranchAutoSuggestError(Lio/branch/search/BranchSearchError;)V
    .locals 3

    const-string v0, "BranchSearchAlgorithm"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error for Branch AutoSuggest. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchSearchError;->getErrorCode()Lio/branch/search/BranchSearchError$ERR_CODE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchSearchError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$1;->this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    invoke-static {p1}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$300(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;->onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V

    return-void
.end method

.method public onBranchAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p1}, Lio/branch/search/BranchAutoSuggestResult;->getSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BranchSearchAlgorithm"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuttoSuggest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchAutoSuggestResult;->getSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$1;->this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    invoke-static {v0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$300(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;->onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V

    return-void

    .line 175
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$1;->this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    invoke-static {p1}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$300(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;->onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V

    return-void
.end method
