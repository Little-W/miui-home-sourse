.class public Lcom/mi/globallauncher/BranchAppListDataManager;
.super Ljava/lang/Object;
.source "BranchAppListDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;,
        Lcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;,
        Lcom/mi/globallauncher/BranchAppListDataManager$AppendBranchLocalSearchResultCallback;,
        Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final instance:Lcom/mi/globallauncher/BranchAppListDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/mi/globallauncher/BranchAppListDataManager;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchAppListDataManager;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/BranchAppListDataManager;->instance:Lcom/mi/globallauncher/BranchAppListDataManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAutoSuggestResult(ILio/branch/search/BranchAutoSuggestResult;Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, p1

    move p1, v0

    move v3, v1

    .line 85
    :goto_0
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 86
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    iget v4, v4, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v5, 0x4

    if-ne v2, v1, :cond_1

    const/16 v6, 0x4000

    if-eq v4, v6, :cond_0

    const/16 v6, 0x800

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    const v6, 0x8000

    if-eq v4, v6, :cond_0

    const/16 v6, 0x20

    if-ne v4, v6, :cond_1

    :cond_0
    move v2, v0

    :cond_1
    if-ne v4, v5, :cond_2

    const/4 p1, 0x1

    move v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 100
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    if-ne v2, v1, :cond_5

    .line 104
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 106
    :cond_5
    invoke-virtual {p2}, Lio/branch/search/BranchAutoSuggestResult;->getSuggestions()Ljava/util/List;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/mi/globallauncher/BranchAdapterItemManager;->asAutoSuggest(Ljava/lang/Object;Ljava/lang/String;)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p1

    .line 107
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addBranchLocalSearchResult(ILio/branch/search/BranchLocalSearchResult;Landroid/content/res/Resources;Lcom/mi/globallauncher/BranchAppListDataManager$AppendBranchLocalSearchResultCallback;)V
    .locals 5

    .line 133
    invoke-virtual {p2}, Lio/branch/search/BranchLocalSearchResult;->getResults()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 134
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 136
    invoke-interface {p4}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendBranchLocalSearchResultCallback;->adapterItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    :cond_0
    const p1, 0x7f0700bd

    .line 138
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-static {p1}, Lcom/mi/globallauncher/BranchAdapterItemManager;->asBlankDivider(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p1

    const/4 p3, 0x4

    .line 139
    iput p3, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    .line 140
    invoke-interface {p4}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendBranchLocalSearchResultCallback;->adapterItems()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p1, :cond_6

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    add-int/lit8 v3, p1, -0x1

    if-ne v0, v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, p3

    .line 146
    :goto_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/BranchLocalAppResult;

    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    const/4 v1, 0x2

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    const/4 v1, 0x3

    goto :goto_3

    :cond_5
    move v1, p3

    .line 155
    :goto_3
    invoke-static {v4, v1}, Lcom/mi/globallauncher/BranchAdapterItemManager;->asLocalBranchSearchItem(Lio/branch/search/BranchLocalAppResult;I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v1

    .line 156
    invoke-interface {p4}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendBranchLocalSearchResultCallback;->adapterItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private addBranchSearchResult(ILio/branch/search/BranchSearchResult;Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p2}, Lio/branch/search/BranchSearchResult;->getResults()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 218
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 220
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 222
    :cond_1
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700bd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-static {p1}, Lcom/mi/globallauncher/BranchAdapterItemManager;->asBlankDivider(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p1

    const/4 v0, 0x4

    .line 223
    iput v0, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    .line 224
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    move v0, p1

    .line 229
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    const/4 v1, 0x1

    if-nez v0, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, p1

    .line 231
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, p1

    .line 232
    :goto_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/BranchAppResult;

    .line 233
    invoke-virtual {v4}, Lio/branch/search/BranchAppResult;->getLinks()Ljava/util/List;

    move-result-object v4

    if-nez v2, :cond_4

    .line 234
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    .line 235
    invoke-static {}, Lcom/mi/globallauncher/BranchAdapterItemManager;->asSearchResultDivider()Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v5

    .line 236
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v5, p1

    .line 239
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    if-eqz v2, :cond_5

    if-nez v5, :cond_5

    move v6, v1

    goto :goto_4

    :cond_5
    move v6, p1

    :goto_4
    if-eqz v3, :cond_6

    .line 241
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    if-ne v5, v7, :cond_6

    move v7, v1

    goto :goto_5

    :cond_6
    move v7, p1

    .line 242
    :goto_5
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/branch/search/BranchLinkResult;

    if-eqz v6, :cond_7

    if-nez v7, :cond_7

    move v6, v1

    goto :goto_6

    :cond_7
    if-nez v6, :cond_8

    if-eqz v7, :cond_8

    const/4 v6, 0x2

    goto :goto_6

    :cond_8
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    const/4 v6, 0x3

    goto :goto_6

    :cond_9
    move v6, p1

    .line 251
    :goto_6
    invoke-static {v8, v6}, Lcom/mi/globallauncher/BranchAdapterItemManager;->asBranchSearchItem(Ljava/lang/Object;I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v6

    .line 252
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_b
    return-void
.end method

.method private addBranchShowLdsSearchResult(ILio/branch/search/BranchSearchResult;Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;)V
    .locals 6

    .line 263
    invoke-virtual {p2}, Lio/branch/search/BranchSearchResult;->getResults()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 266
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 268
    :cond_0
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700bd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-static {p1}, Lcom/mi/globallauncher/BranchAdapterItemManager;->asBlankDivider(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p1

    const/4 p2, 0x4

    .line 269
    iput p2, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    .line 270
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    if-ge v1, p1, :cond_6

    .line 274
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/BranchAppResult;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    add-int/lit8 v5, p1, -0x1

    if-ne v1, v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, p2

    :goto_2
    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    const/4 v3, 0x2

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    const/4 v3, 0x3

    goto :goto_3

    :cond_5
    move v3, p2

    .line 285
    :goto_3
    invoke-static {v2, v3}, Lcom/mi/globallauncher/BranchAdapterItemManager;->asBranchSearchItem(Ljava/lang/Object;I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v2

    .line 286
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private addMarketSearchOrEmptySearch(Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;)V
    .locals 1

    .line 293
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/BranchAppListDataManager;->hasSearchResult(Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 294
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asEmptySearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v0

    .line 295
    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private clearAutoSuggestResult(ILcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;)V
    .locals 3

    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-interface {p2}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 70
    invoke-interface {p2}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    move p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 78
    invoke-interface {p2}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object p2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/BranchAppListDataManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/mi/globallauncher/BranchAppListDataManager;->instance:Lcom/mi/globallauncher/BranchAppListDataManager;

    return-object v0
.end method

.method private hasSearchResult(Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;)Z
    .locals 4

    .line 300
    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 301
    iget v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    iget v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    iget v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    iget v0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public appendAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;)Z
    .locals 5

    .line 39
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->resetClickSearchResultCount()V

    .line 41
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->needToShowSearchSuggestion()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 42
    invoke-direct {p0, v1, p2}, Lcom/mi/globallauncher/BranchAppListDataManager;->clearAutoSuggestResult(ILcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;)V

    .line 43
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setNeedToShowSearchSuggestion(Z)V

    return p2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 46
    invoke-virtual {p1}, Lio/branch/search/BranchAutoSuggestResult;->getSuggestions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lio/branch/search/BranchAutoSuggestResult;->getSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v0

    .line 49
    :goto_0
    invoke-interface {p2}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 50
    invoke-interface {p2}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    iget v3, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_1
    if-eq v2, v1, :cond_4

    .line 58
    invoke-virtual {p1}, Lio/branch/search/BranchAutoSuggestResult;->getSuggestions()Ljava/util/List;

    move-result-object p1

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/mi/globallauncher/BranchAdapterItemManager;->asAutoSuggest(Ljava/lang/Object;Ljava/lang/String;)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p1

    .line 59
    invoke-interface {p2}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 62
    :cond_4
    invoke-direct {p0, v2, p1, p2}, Lcom/mi/globallauncher/BranchAppListDataManager;->addAutoSuggestResult(ILio/branch/search/BranchAutoSuggestResult;Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;)V

    goto :goto_3

    .line 47
    :cond_5
    :goto_2
    invoke-direct {p0, v1, p2}, Lcom/mi/globallauncher/BranchAppListDataManager;->clearAutoSuggestResult(ILcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;)V

    :goto_3
    return v0
.end method

.method public appendBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;Landroid/content/res/Resources;Lcom/mi/globallauncher/BranchAppListDataManager$AppendBranchLocalSearchResultCallback;Lcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;)V
    .locals 1

    .line 124
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->resetClickSearchResultCount()V

    const/4 v0, -0x1

    .line 126
    invoke-virtual {p0, v0, p4}, Lcom/mi/globallauncher/BranchAppListDataManager;->clearItemsForBranchResult(ILcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;)V

    .line 127
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mi/globallauncher/BranchAppListDataManager;->addBranchLocalSearchResult(ILio/branch/search/BranchLocalSearchResult;Landroid/content/res/Resources;Lcom/mi/globallauncher/BranchAppListDataManager$AppendBranchLocalSearchResultCallback;)V

    .line 128
    invoke-interface {p3}, Lcom/mi/globallauncher/BranchAppListDataManager$AppendBranchLocalSearchResultCallback;->refreshBaseRecyclerView()V

    return-void
.end method

.method public appendBranchSearchResult(Lio/branch/search/BranchSearchResult;Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;Lcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;)V
    .locals 2

    .line 197
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->resetClickSearchResultCount()V

    const/4 v0, -0x1

    .line 199
    invoke-virtual {p0, v0, p3}, Lcom/mi/globallauncher/BranchAppListDataManager;->clearItemsForBranchResult(ILcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;)V

    .line 200
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p3

    invoke-interface {p3}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getBranchShowTypeVersion()I

    move-result p3

    if-nez p3, :cond_0

    .line 202
    invoke-direct {p0, v0, p1, p2}, Lcom/mi/globallauncher/BranchAppListDataManager;->addBranchSearchResult(ILio/branch/search/BranchSearchResult;Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 204
    invoke-direct {p0, v0, p1, p2}, Lcom/mi/globallauncher/BranchAppListDataManager;->addBranchShowLdsSearchResult(ILio/branch/search/BranchSearchResult;Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;)V

    .line 206
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/mi/globallauncher/BranchAppListDataManager;->addMarketSearchOrEmptySearch(Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;)V

    .line 207
    invoke-interface {p2}, Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;->refreshBaseRecyclerView()V

    return-void
.end method

.method public clearItemsForBranchResult(ILcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;)V
    .locals 3

    const/4 v0, 0x0

    .line 167
    :goto_0
    invoke-interface {p2}, Lcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 168
    invoke-interface {p2}, Lcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_1

    const v2, 0x8000

    if-eq v1, v2, :cond_1

    const/16 v2, 0x800

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move p1, v0

    :cond_2
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 179
    invoke-interface {p2}, Lcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p2}, Lcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;->adapterItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public keepItemList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    .line 316
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 317
    iget v1, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 319
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
