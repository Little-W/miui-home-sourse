.class Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AppsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1$1;->this$1:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 214
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1$1;->this$1:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 215
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1$1;->this$1:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1$1;->this$1:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;

    iget p2, p2, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->val$position:I

    invoke-static {p1, p2}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->access$000(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;I)V

    :cond_0
    return-void
.end method
