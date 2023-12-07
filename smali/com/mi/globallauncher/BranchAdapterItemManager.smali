.class public Lcom/mi/globallauncher/BranchAdapterItemManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asAutoSuggest(Ljava/lang/Object;Ljava/lang/String;)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/BranchAdapterItemManager$4;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchAdapterItemManager$4;-><init>()V

    const/16 v1, 0x2000

    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    iput-object p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->data:Ljava/lang/Object;

    iput-object p1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->str:Ljava/lang/String;

    const/4 p0, 0x3

    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    return-object v0
.end method

.method public static asBlankDivider(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/BranchAdapterItemManager$7;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchAdapterItemManager$7;-><init>()V

    const v1, 0x8000

    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->dividerHeight:I

    return-object v0
.end method

.method public static asBranchSearchItem(Ljava/lang/Object;I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 5

    new-instance v0, Lcom/mi/globallauncher/BranchAdapterItemManager$2;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchAdapterItemManager$2;-><init>()V

    const/16 v1, 0x1000

    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v1

    invoke-interface {v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getBranchShowTypeVersion()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x20000

    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    move-object v1, p0

    check-cast v1, Lio/branch/search/BranchAppResult;

    invoke-virtual {v1}, Lio/branch/search/BranchAppResult;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/BranchLinkResult;

    invoke-virtual {v3}, Lio/branch/search/BranchLinkResult;->getType()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->isSearchContent:Z

    if-nez v4, :cond_0

    const-string v4, "App"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "App Option"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-boolean v2, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->isSearchContent:Z

    :cond_1
    iput-object p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->data:Ljava/lang/Object;

    iput p1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    const/4 p0, 0x4

    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    return-object v0
.end method

.method public static asBranchSearchItemBackup(Lio/branch/search/BranchLinkResult;I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/BranchAdapterItemManager$1;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchAdapterItemManager$1;-><init>()V

    const/16 v1, 0x1000

    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    iput-object p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->data:Ljava/lang/Object;

    iput p1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    const/4 p0, 0x4

    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    return-object v0
.end method

.method public static asLoadingDivider(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/BranchAdapterItemManager$5;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchAdapterItemManager$5;-><init>()V

    const/16 v1, 0x800

    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    return-object v0
.end method

.method public static asLocalBranchSearchItem(Lio/branch/search/BranchLocalAppResult;I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/BranchAdapterItemManager$3;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchAdapterItemManager$3;-><init>()V

    const/high16 v1, 0x10000

    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    iput-object p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->data:Ljava/lang/Object;

    iput p1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    const/4 p0, 0x4

    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    return-object v0
.end method

.method public static asSearchResultDivider()Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/BranchAdapterItemManager$6;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchAdapterItemManager$6;-><init>()V

    const/16 v1, 0x4000

    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    return-object v0
.end method
