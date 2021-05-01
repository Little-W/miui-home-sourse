.class Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;
.super Ljava/lang/Object;
.source "AppsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;I)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iput p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1$1;-><init>(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;)V

    .line 219
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object v1, v1, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->val$position:I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->access$000(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;I)V

    :goto_0
    return-void
.end method
