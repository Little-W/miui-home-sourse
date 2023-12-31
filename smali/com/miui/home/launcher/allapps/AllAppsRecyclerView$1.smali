.class Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "AllAppsRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->access$000(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->access$000(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->access$000(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->access$000(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
