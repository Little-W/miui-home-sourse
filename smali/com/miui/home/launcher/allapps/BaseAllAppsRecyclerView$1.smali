.class Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "BaseAllAppsRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->access$000(Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->access$000(Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->access$000(Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView$1;->this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->access$000(Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
