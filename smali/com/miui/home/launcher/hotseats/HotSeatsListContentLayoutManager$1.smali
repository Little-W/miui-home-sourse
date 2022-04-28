.class Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "HotSeatsListContentLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->updateOffsetIfNeed()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->updateOffsetIfNeed()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->updateOffsetIfNeed()V

    return-void
.end method
