.class Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$2;
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

    .line 209
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$2;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iput p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$2;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$2$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$2$1;-><init>(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$2;)V

    .line 222
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$2;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$2;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$2;->val$position:I

    invoke-static {v0, p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->access$000(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;I)V

    :goto_0
    return-void
.end method
