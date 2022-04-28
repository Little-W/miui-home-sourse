.class Lcom/mi/globallauncher/search/SearchResultMaskView$1;
.super Ljava/lang/Object;
.source "SearchResultMaskView.java"

# interfaces
.implements Lio/branch/search/ui/KBranchZeroStateEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/search/SearchResultMaskView;->getZeroStateFromServer()V
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

    .line 159
    iput-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$1;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZeroStateComplete(Lio/branch/search/ui/KBranchZeroStateResult;Lio/branch/search/BranchError;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 164
    invoke-virtual {p2}, Lio/branch/search/BranchError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_4

    .line 167
    invoke-virtual {p1}, Lio/branch/search/ui/KBranchZeroStateResult;->getContainers()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {p1}, Lio/branch/search/ui/KBranchZeroStateResult;->component1()Ljava/util/List;

    move-result-object p1

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/branch/search/ui/BranchContainer;

    .line 173
    invoke-interface {p2}, Lio/branch/search/ui/BranchContainer;->getContent()Ljava/util/List;

    move-result-object p2

    .line 174
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/ui/BranchEntity;

    .line 175
    new-instance v1, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;

    iget-object v2, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$1;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskView;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;-><init>(Lcom/mi/globallauncher/search/SearchResultMaskView;I)V

    .line 176
    invoke-virtual {v1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskItem;->setData(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$1;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-static {v0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->access$000(Lcom/mi/globallauncher/search/SearchResultMaskView;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 180
    :cond_3
    iget-object p1, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$1;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-static {p1}, Lcom/mi/globallauncher/search/SearchResultMaskView;->access$100(Lcom/mi/globallauncher/search/SearchResultMaskView;)Lcom/mi/globallauncher/search/SearchResultMaskAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/mi/globallauncher/search/SearchResultMaskView$1;->this$0:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-static {p2}, Lcom/mi/globallauncher/search/SearchResultMaskView;->access$000(Lcom/mi/globallauncher/search/SearchResultMaskView;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mi/globallauncher/search/SearchResultMaskAdapter;->setItemList(Ljava/util/List;)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method
