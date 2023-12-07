.class Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AppsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    .line 104
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->cancelClosingAnim()Z

    :cond_0
    return-void
.end method
