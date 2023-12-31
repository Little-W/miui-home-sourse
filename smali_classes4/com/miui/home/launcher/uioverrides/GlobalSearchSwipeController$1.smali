.class Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController$1;
.super Ljava/lang/Object;
.source "GlobalSearchSwipeController.java"

# interfaces
.implements Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->showPullDownTipsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController$1;->this$0:Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public positiveButtonClick()V
    .locals 1

    const-string v0, "global_search"

    .line 125
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomePullDown(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController$1;->this$0:Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;

    invoke-static {v0}, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->access$000(Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController$1;->this$0:Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;

    invoke-static {p0}, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->access$000(Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    const-string v0, "home_down"

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarContainer;->openSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
