.class public interface abstract Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAutoSuggestView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getBranchSearchItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getLdsBranchSearchItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getSearchLoadingDividerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getSearchResultDividerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract setAutoSuggestList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAutoSuggestion;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRemoteBranchClick(Landroid/content/Context;Lio/branch/search/BranchLinkResult;)V
.end method

.method public abstract setupAutoSuggestView(Landroid/view/View;ZLjava/lang/String;Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V
.end method

.method public abstract setupBranchItemView(Landroid/view/View;ZLio/branch/search/BranchLinkResult;ILandroid/view/View$OnClickListener;Z)V
.end method

.method public abstract setupBranchSearchResultDivider(Landroid/view/View;Z)V
.end method
