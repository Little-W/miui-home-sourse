.class public Lcom/miui/home/recents/views/ViewPool;
.super Ljava/lang/Object;
.source "ViewPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TV;>;"
        }
    .end annotation
.end field

.field private mViewCreator:Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer<",
            "TV;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer<",
            "TV;TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    .line 44
    iput-object p1, p0, Lcom/miui/home/recents/views/ViewPool;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/miui/home/recents/views/ViewPool;->mViewCreator:Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;

    return-void
.end method


# virtual methods
.method getViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/miui/home/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    return-object v0
.end method

.method pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TV;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/miui/home/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    iget-object p1, p0, Lcom/miui/home/recents/views/ViewPool;->mViewCreator:Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;

    iget-object v0, p0, Lcom/miui/home/recents/views/ViewPool;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;->createView(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/miui/home/recents/views/ViewPool;->mViewCreator:Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;

    invoke-interface {v3, v2, p1}, Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;->hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move-object p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/miui/home/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    .line 77
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/home/recents/views/ViewPool;->mViewCreator:Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;->onPickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object p1
.end method

.method returnViewToPool(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/miui/home/recents/views/ViewPool;->mViewCreator:Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;

    invoke-interface {v0, p1}, Lcom/miui/home/recents/views/ViewPool$ViewPoolConsumer;->onReturnViewToPool(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/miui/home/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    return-void
.end method
