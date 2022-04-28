.class Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;
.super Ljava/lang/Object;
.source "BaseAlphabeticalAppsList.java"

# interfaces
.implements Lcom/mi/globallauncher/BranchAppListDataManager$AppendBranchLocalSearchResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appendBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V
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

    .line 625
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;->this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

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

    .line 633
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;->this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public refreshBaseRecyclerView()V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;->this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->refreshRecyclerView()V

    return-void
.end method
