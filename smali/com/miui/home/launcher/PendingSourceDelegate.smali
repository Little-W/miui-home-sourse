.class public Lcom/miui/home/launcher/PendingSourceDelegate;
.super Ljava/lang/Object;
.source "PendingSourceDelegate.java"

# interfaces
.implements Lcom/miui/home/launcher/PendingSource;


# instance fields
.field mItemInfoSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/PendingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/PendingSourceDelegate;->mItemInfoSet:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addPendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/home/launcher/PendingSourceDelegate;->mItemInfoSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPendingItems()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/PendingItem;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lcom/miui/home/launcher/PendingSourceDelegate;->mItemInfoSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    return-object p0
.end method

.method public isPendingItemsEmtpy()Z
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/launcher/PendingSourceDelegate;->mItemInfoSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public removePendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/PendingSourceDelegate;->mItemInfoSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
