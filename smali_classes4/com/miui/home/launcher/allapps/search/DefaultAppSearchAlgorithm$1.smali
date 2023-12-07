.class Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$1;
.super Ljava/lang/Object;
.source "DefaultAppSearchAlgorithm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;

.field final synthetic val$callback:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$1;->this$0:Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$1;->val$callback:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    iput-object p3, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$1;->val$query:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$1;->val$result:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$1;->val$callback:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$1;->val$query:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm$1;->val$result:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
