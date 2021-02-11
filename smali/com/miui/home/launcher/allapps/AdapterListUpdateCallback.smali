.class public abstract Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;
.super Ljava/lang/Object;
.source "AdapterListUpdateCallback.java"

# interfaces
.implements Landroid/mysupport/v7/util/ListUpdateCallback;


# instance fields
.field private final mAdapter:Landroid/mysupport/v7/widget/RecyclerView$Adapter;

.field private mNotifyDataSetChangeRunnable:Ljava/lang/Runnable;

.field private mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;-><init>(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mNotifyDataSetChangeRunnable:Ljava/lang/Runnable;

    .line 13
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroid/mysupport/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;)Landroid/mysupport/v7/widget/RecyclerView$Adapter;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroid/mysupport/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method private isRecyclerViewSupport()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/mysupport/v7/widget/RecyclerView;->getItemAnimator()Landroid/mysupport/v7/widget/RecyclerView$ItemAnimator;

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

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mNotifyDataSetChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/mysupport/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mNotifyDataSetChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/mysupport/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract isAnimEnable()Z
.end method

.method public onAttachedToRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isRecyclerViewSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroid/mysupport/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onDetachedFromRecyclerView()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

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
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroid/mysupport/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onMoved(II)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isRecyclerViewSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroid/mysupport/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isRecyclerViewSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroid/mysupport/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
