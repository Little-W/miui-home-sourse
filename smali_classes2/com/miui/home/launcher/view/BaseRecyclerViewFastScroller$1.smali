.class Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BaseRecyclerViewFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setRecyclerView(Lcom/miui/home/launcher/BaseRecyclerView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller$1;->this$0:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller$1;->this$0:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller$1;->this$0:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-static {p1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->access$000(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/BaseRecyclerView;->onUpdateScrollbar(I)V

    return-void
.end method
