.class public Lmiuix/animation/listener/ListenerNotifier;
.super Ljava/lang/Object;
.source "ListenerNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/listener/ListenerNotifier$PendingNotify;,
        Lmiuix/animation/listener/ListenerNotifier$ListenerNode;,
        Lmiuix/animation/listener/ListenerNotifier$NotifyData;,
        Lmiuix/animation/listener/ListenerNotifier$SingleNotifier;,
        Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;
    }
.end annotation


# static fields
.field private static sNotifiers:[Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;


# instance fields
.field private mCurNotify:Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

.field private mExistListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/listener/TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHead:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

.field private mNotifyData:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Landroid/util/SparseArray<",
            "Lmiuix/animation/listener/ListenerNotifier$NotifyData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lmiuix/animation/listener/ListenerNotifier$PendingNotify;",
            ">;"
        }
    .end annotation
.end field

.field private final mTarget:Lmiuix/animation/IAnimTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    .line 67
    new-array v0, v0, [Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;

    new-instance v1, Lmiuix/animation/listener/ListenerNotifier$1;

    invoke-direct {v1}, Lmiuix/animation/listener/ListenerNotifier$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/animation/listener/ListenerNotifier$2;

    invoke-direct {v1}, Lmiuix/animation/listener/ListenerNotifier$2;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/animation/listener/ListenerNotifier$3;

    invoke-direct {v1}, Lmiuix/animation/listener/ListenerNotifier$3;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/animation/listener/ListenerNotifier$4;

    invoke-direct {v1}, Lmiuix/animation/listener/ListenerNotifier$4;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/animation/listener/ListenerNotifier$5;

    invoke-direct {v1}, Lmiuix/animation/listener/ListenerNotifier$5;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/animation/listener/ListenerNotifier$6;

    invoke-direct {v1}, Lmiuix/animation/listener/ListenerNotifier$6;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/animation/listener/ListenerNotifier$7;

    invoke-direct {v1}, Lmiuix/animation/listener/ListenerNotifier$7;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/animation/listener/ListenerNotifier$8;

    invoke-direct {v1}, Lmiuix/animation/listener/ListenerNotifier$8;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lmiuix/animation/listener/ListenerNotifier$9;

    invoke-direct {v1}, Lmiuix/animation/listener/ListenerNotifier$9;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sNotifiers:[Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .locals 2

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mNotifyData:Landroid/util/ArrayMap;

    .line 182
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;-><init>(Lmiuix/animation/listener/ListenerNotifier$1;)V

    iput-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mHead:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mExistListeners:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 189
    iput-object p1, p0, Lmiuix/animation/listener/ListenerNotifier;->mTarget:Lmiuix/animation/IAnimTarget;

    return-void
.end method

.method static synthetic access$200(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lmiuix/animation/listener/ListenerNotifier;->notifyOnUpdate(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lmiuix/animation/listener/ListenerNotifier;->removeNode(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;)V

    return-void
.end method

.method private addNode(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)V
    .locals 5

    .line 216
    iget-object v0, p2, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mHead:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    .line 220
    :cond_1
    :goto_0
    iget-object v1, v0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz v1, :cond_2

    .line 221
    iget-object v0, v0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    .line 222
    iget-object v1, p2, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    iget-object v2, v0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiuix/animation/listener/TransitionListener;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lmiuix/animation/listener/ListenerNotifier;->mExistListeners:Ljava/util/List;

    iget-object v2, v0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiuix/animation/listener/TransitionListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-direct {p0, v0, p1, p2}, Lmiuix/animation/listener/ListenerNotifier;->updateNodeInfo(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v1, p2, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/listener/TransitionListener;

    .line 228
    iget-object v3, p0, Lmiuix/animation/listener/ListenerNotifier;->mExistListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 231
    :cond_3
    new-instance v3, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;-><init>(Lmiuix/animation/listener/ListenerNotifier$1;)V

    .line 232
    iput-object v2, v3, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiuix/animation/listener/TransitionListener;

    .line 233
    invoke-direct {p0, v3, p1, p2}, Lmiuix/animation/listener/ListenerNotifier;->updateNodeInfo(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)V

    .line 234
    iput-object v0, v3, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    .line 235
    iput-object v3, v0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    move-object v0, v3

    goto :goto_1

    .line 238
    :cond_4
    iget-object p1, p0, Lmiuix/animation/listener/ListenerNotifier;->mExistListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private executeNotify(Lmiuix/animation/listener/ListenerNotifier$PendingNotify;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 326
    iget v0, p1, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->what:I

    iget-object v1, p1, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->tag:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lmiuix/animation/listener/ListenerNotifier;->getNotifyData(ILjava/lang/Object;)Lmiuix/animation/listener/ListenerNotifier$NotifyData;

    move-result-object v0

    .line 327
    iget-object v1, p1, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->tag:Ljava/lang/Object;

    iget v2, p1, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->what:I

    invoke-direct {p0, v1, v2, v0}, Lmiuix/animation/listener/ListenerNotifier;->notifyListener(Ljava/lang/Object;ILmiuix/animation/listener/ListenerNotifier$NotifyData;)V

    .line 328
    invoke-static {p1}, Lmiuix/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private executePendingList()V
    .locals 1

    .line 315
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    iput-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mCurNotify:Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    .line 317
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mCurNotify:Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    if-eqz v0, :cond_0

    .line 318
    invoke-direct {p0, v0}, Lmiuix/animation/listener/ListenerNotifier;->executeNotify(Lmiuix/animation/listener/ListenerNotifier$PendingNotify;)V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mCurNotify:Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getNodeCount()I
    .locals 3

    .line 360
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mHead:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    const/4 v1, 0x0

    .line 361
    :goto_0
    iget-object v2, v0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz v2, :cond_0

    .line 362
    iget-object v0, v0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getNotifyData(ILjava/lang/Object;)Lmiuix/animation/listener/ListenerNotifier$NotifyData;
    .locals 2

    .line 333
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mNotifyData:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 336
    iget-object v1, p0, Lmiuix/animation/listener/ListenerNotifier;->mNotifyData:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/animation/listener/ListenerNotifier$NotifyData;

    if-nez p2, :cond_1

    .line 340
    new-instance p2, Lmiuix/animation/listener/ListenerNotifier$NotifyData;

    invoke-direct {p2}, Lmiuix/animation/listener/ListenerNotifier$NotifyData;-><init>()V

    .line 341
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object p2
.end method

.method private getPendingNotify(ILjava/lang/Object;)Lmiuix/animation/listener/ListenerNotifier$PendingNotify;
    .locals 2

    .line 309
    const-class v0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    .line 310
    invoke-virtual {v0, p2, p1}, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->setData(Ljava/lang/Object;I)V

    return-object v0
.end method

.method private notifyByType(ILjava/lang/Object;Lmiuix/animation/listener/UpdateInfo;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Lmiuix/animation/listener/UpdateInfo;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Lmiuix/animation/listener/ListenerNotifier;->getNodeCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-direct {p0, p1, p2}, Lmiuix/animation/listener/ListenerNotifier;->getNotifyData(ILjava/lang/Object;)Lmiuix/animation/listener/ListenerNotifier$NotifyData;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 289
    invoke-virtual {v0, p4}, Lmiuix/animation/listener/ListenerNotifier$NotifyData;->addList(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 291
    invoke-virtual {v0, p3}, Lmiuix/animation/listener/ListenerNotifier$NotifyData;->addUpdate(Lmiuix/animation/listener/UpdateInfo;)V

    .line 293
    :cond_2
    :goto_0
    iget-object p3, p0, Lmiuix/animation/listener/ListenerNotifier;->mCurNotify:Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    if-nez p3, :cond_3

    .line 294
    invoke-direct {p0, p1, p2}, Lmiuix/animation/listener/ListenerNotifier;->getPendingNotify(ILjava/lang/Object;)Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/listener/ListenerNotifier;->mCurNotify:Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    .line 295
    iget-object p1, p0, Lmiuix/animation/listener/ListenerNotifier;->mCurNotify:Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    invoke-direct {p0, p1}, Lmiuix/animation/listener/ListenerNotifier;->executeNotify(Lmiuix/animation/listener/ListenerNotifier$PendingNotify;)V

    const/4 p1, 0x0

    .line 296
    iput-object p1, p0, Lmiuix/animation/listener/ListenerNotifier;->mCurNotify:Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    .line 297
    invoke-direct {p0}, Lmiuix/animation/listener/ListenerNotifier;->executePendingList()V

    goto :goto_1

    .line 298
    :cond_3
    invoke-virtual {p3, p2, p1}, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->isSame(Ljava/lang/Object;I)Z

    move-result p3

    if-nez p3, :cond_6

    .line 299
    iget-object p3, p0, Lmiuix/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    .line 300
    invoke-virtual {p4, p2, p1}, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->isSame(Ljava/lang/Object;I)Z

    move-result p4

    if-eqz p4, :cond_4

    return-void

    .line 304
    :cond_5
    iget-object p3, p0, Lmiuix/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0, p1, p2}, Lmiuix/animation/listener/ListenerNotifier;->getPendingNotify(ILjava/lang/Object;)Lmiuix/animation/listener/ListenerNotifier$PendingNotify;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method private notifyListener(Ljava/lang/Object;ILmiuix/animation/listener/ListenerNotifier$NotifyData;)V
    .locals 3

    .line 347
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mHead:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    .line 348
    :goto_0
    iget-object v1, v0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz v1, :cond_1

    .line 349
    iget-object v0, v0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    .line 350
    iget-object v1, v0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->bindTag:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->bindTag:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    sget-object v1, Lmiuix/animation/listener/ListenerNotifier;->sNotifiers:[Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;

    aget-object v1, v1, p2

    iget-object v2, p3, Lmiuix/animation/listener/ListenerNotifier$NotifyData;->updateList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0, p1, v2}, Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;->notify(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Ljava/util/Collection;)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object p1, p3, Lmiuix/animation/listener/ListenerNotifier$NotifyData;->updateList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Lmiuix/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    return-void
.end method

.method private static notifyOnUpdate(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 6

    .line 369
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiuix/animation/listener/TransitionListener;

    .line 370
    iget-object p0, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v1

    iget-boolean v2, p2, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    invoke-virtual {v0, p1, p0, v1, v2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FZ)V

    .line 371
    iget-object p0, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    instance-of p0, p0, Lmiuix/animation/property/IIntValueProperty;

    if-eqz p0, :cond_0

    .line 372
    iget-object p0, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    move-object v2, p0

    check-cast v2, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result v3

    iget v4, p2, Lmiuix/animation/listener/UpdateInfo;->velocity:F

    iget-boolean v5, p2, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v2, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v3

    iget v4, p2, Lmiuix/animation/listener/UpdateInfo;->velocity:F

    iget-boolean v5, p2, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    :goto_0
    return-void
.end method

.method private static removeNode(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->toTag:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 382
    iget-object p1, p0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    iput-object v0, p1, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    .line 383
    iget-object p1, p0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz p1, :cond_0

    .line 384
    iget-object p1, p0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    iget-object p0, p0, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    iput-object p0, p1, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    :cond_0
    return-void
.end method

.method private updateNodeInfo(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 242
    iput-object p2, p1, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->toTag:Ljava/lang/Object;

    .line 243
    iget-object p2, p3, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    iput-object p2, p1, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->bindTag:Ljava/lang/Object;

    .line 244
    iget-object p2, p3, Lmiuix/animation/base/AnimConfig;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    iput-object p2, p1, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    return-void
.end method


# virtual methods
.method public notifyAnimCancel(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 272
    invoke-direct {p0, v0, p1, p2, v1}, Lmiuix/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiuix/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyAnimEnd(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 268
    invoke-direct {p0, v0, p1, p2, v1}, Lmiuix/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiuix/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyBegin(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 248
    invoke-direct {p0, v1, p1, v0, v0}, Lmiuix/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiuix/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyCancelAll(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 276
    invoke-direct {p0, v1, p1, v0, v0}, Lmiuix/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiuix/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyEndAll(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 280
    invoke-direct {p0, v1, p1, v0, v0}, Lmiuix/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiuix/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyPropertyBegin(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 252
    invoke-direct {p0, v0, p1, p2, v1}, Lmiuix/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiuix/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyPropertyEnd(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 264
    invoke-direct {p0, v0, p1, v1, p2}, Lmiuix/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiuix/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyUpdate(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 256
    invoke-direct {p0, v0, p1, v1, p2}, Lmiuix/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiuix/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyUpdateList(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 260
    invoke-direct {p0, v0, p1, v1, p2}, Lmiuix/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiuix/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public setListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)Z
    .locals 5

    .line 203
    iget-object p2, p2, Lmiuix/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimConfig;

    .line 204
    invoke-direct {p0, p1, v0}, Lmiuix/animation/listener/ListenerNotifier;->addNode(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListeners for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/animation/listener/ListenerNotifier;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v2}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toTag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listeners = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {p0}, Lmiuix/animation/listener/ListenerNotifier;->getNodeCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    .line 207
    invoke-static {p2, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_1
    iget-object p1, p0, Lmiuix/animation/listener/ListenerNotifier;->mHead:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    iget-object p1, p1, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method
