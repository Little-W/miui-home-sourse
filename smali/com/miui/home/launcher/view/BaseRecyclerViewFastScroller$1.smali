.class Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller$1;
.super Landroid/mysupport/v7/widget/RecyclerView$OnScrollListener;
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

    .line 53
    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller$1;->this$0:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-direct {p0}, Landroid/mysupport/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/mysupport/v7/widget/RecyclerView;II)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller$1;->this$0:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-static {p1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->access$000(Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;)Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/BaseRecyclerView;->onUpdateScrollbar(I)V

    return-void
.end method
