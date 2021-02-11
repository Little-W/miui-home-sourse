.class public Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
.super Ljava/lang/Object;
.source "RemoteAnimationTargetSet.java"


# instance fields
.field public final apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field private final mDependentTransactionAppliers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;",
            ">;"
        }
    .end annotation
.end field

.field public final targetMode:I

.field public final unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;


# direct methods
.method public constructor <init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V
    .locals 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mDependentTransactionAppliers:Ljava/util/Queue;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 41
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 42
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, p2, :cond_0

    .line 43
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 50
    iput p2, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    return-void
.end method


# virtual methods
.method public addDependentTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mDependentTransactionAppliers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findTask(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 55
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 64
    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public release()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mDependentTransactionAppliers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 86
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$p979FlrZbgRF5fKODurH_LZy4zI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$p979FlrZbgRF5fKODurH_LZy4zI;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->addAfterApplyCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
