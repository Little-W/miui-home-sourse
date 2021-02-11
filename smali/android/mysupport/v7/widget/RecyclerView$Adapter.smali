.class public abstract Landroid/mysupport/v7/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mysupport/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6593
    new-instance v0, Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x0

    .line 6594
    iput-boolean v0, p0, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 6706
    iput p2, p1, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6707
    invoke-virtual {p0}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6708
    invoke-virtual {p0, p2}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    :cond_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    .line 6710
    invoke-virtual {p1, v1, v0}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    const-string v0, "RV OnBindView"

    .line 6713
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6714
    invoke-virtual {p1}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 6715
    invoke-virtual {p1}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 6716
    iget-object p1, p1, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 6717
    instance-of p2, p1, Landroid/mysupport/v7/widget/RecyclerView$LayoutParams;

    if-eqz p2, :cond_1

    .line 6718
    check-cast p1, Landroid/mysupport/v7/widget/RecyclerView$LayoutParams;

    iput-boolean v1, p1, Landroid/mysupport/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6720
    :cond_1
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    :try_start_0
    const-string v0, "RV CreateView"

    .line 6684
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6685
    invoke-virtual {p0, p1, p2}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 6686
    iget-object v0, p1, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6691
    iput p2, p1, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6694
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-object p1

    .line 6687
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 6694
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw p1
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 6782
    iget-boolean v0, p0, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 6961
    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1

    .line 7086
    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    .line 7023
    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 7054
    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1

    .line 7105
    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1

    .line 7139
    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public abstract onBindViewHolder(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6673
    invoke-virtual {p0, p1, p2}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onFailedToRecycleView(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewRecycled(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public registerAdapterDataObserver(Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 6894
    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 6908
    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/mysupport/v7/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
