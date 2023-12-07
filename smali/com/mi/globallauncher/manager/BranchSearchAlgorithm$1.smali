.class Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$1;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$1;->this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBranchAutoSuggestError(Lio/branch/search/BranchSearchError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error for Branch AutoSuggest. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchSearchError;->getErrorCode()Lio/branch/search/BranchSearchError$ERR_CODE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchSearchError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BranchSearchAlgorithm"

    invoke-static {v0, p1}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$1;->this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$300(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;->onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V

    return-void
.end method

.method public onBranchAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/branch/search/BranchAutoSuggestResult;->getSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuttoSuggest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/branch/search/BranchAutoSuggestResult;->getSuggestions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BranchSearchAlgorithm"

    invoke-static {v1, v0}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$1;->this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$300(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;->onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$1;->this$0:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;

    invoke-static {p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->access$300(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;->onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V

    return-void
.end method
