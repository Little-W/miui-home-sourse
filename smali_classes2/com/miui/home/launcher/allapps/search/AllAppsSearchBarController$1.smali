.class Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AllAppsSearchBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->handleScrollListener(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$1;->this$0:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$1;->this$0:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->hideKeyboard()V

    return-void
.end method
