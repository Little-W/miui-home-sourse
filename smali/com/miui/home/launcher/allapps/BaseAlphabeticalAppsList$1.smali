.class Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$1;
.super Ljava/lang/Object;
.source "BaseAlphabeticalAppsList.java"

# interfaces
.implements Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appendBranchSearchResult(Lio/branch/search/BranchSearchResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$1;->this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adapterItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$1;->this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$1;->this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->access$000(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public refreshBaseRecyclerView()V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$1;->this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->refreshRecyclerView()V

    return-void
.end method
