.class Lcom/mi/globallauncher/search/SearchResultMaskView$2;
.super Ljava/lang/Object;
.source "SearchResultMaskView.java"

# interfaces
.implements Lio/branch/search/IBranchLocalQueryHintEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/search/SearchResultMaskView;->getSearchHintFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/search/SearchResultMaskView;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/search/SearchResultMaskView;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$2;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBranchQueryHintError(Lio/branch/search/BranchLocalError;)V
    .locals 0

    .line 240
    invoke-virtual {p1}, Lio/branch/search/BranchLocalError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onBranchQueryHintResult(Lio/branch/search/BranchQueryHintResult;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {p1}, Lio/branch/search/BranchQueryHintResult;->getHints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 228
    invoke-virtual {p1}, Lio/branch/search/BranchQueryHintResult;->getHints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchQueryHint;

    .line 229
    invoke-virtual {v0}, Lio/branch/search/BranchQueryHint;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$2;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-static {v2}, Lcom/mi/globallauncher/search/SearchResultMaskView;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$2;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-static {v1}, Lcom/mi/globallauncher/search/SearchResultMaskView;->access$200(Lcom/mi/globallauncher/search/SearchResultMaskView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lio/branch/search/BranchQueryHint;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_1
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$2;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskView;->access$300(Lcom/mi/globallauncher/search/SearchResultMaskView;)V

    return-void
.end method
