.class Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;
.super Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObserver;
.source "AllAppsRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setAdapter(Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V
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

    .line 193
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->access$000(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->access$000(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->access$000(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->access$000(Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
