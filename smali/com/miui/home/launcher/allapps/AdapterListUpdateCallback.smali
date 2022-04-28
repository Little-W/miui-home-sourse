.class public abstract Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;
.super Ljava/lang/Object;
.source "AdapterListUpdateCallback.java"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# instance fields
.field private final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mNotifyDataSetChangeRunnable:Ljava/lang/Runnable;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;-><init>(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mNotifyDataSetChangeRunnable:Ljava/lang/Runnable;

    .line 13
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method private isRecyclerViewSupport()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyDataSetChanged()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mNotifyDataSetChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mNotifyDataSetChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected afterNotifyData()V
    .locals 0

    return-void
.end method

.method protected beforeNotifyData()V
    .locals 0

    return-void
.end method

.method protected abstract isAnimEnable()Z
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isRecyclerViewSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->afterNotifyData()V

    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onDetachedFromRecyclerView()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isRecyclerViewSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->afterNotifyData()V

    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onMoved(II)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isRecyclerViewSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->afterNotifyData()V

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isRecyclerViewSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->afterNotifyData()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
