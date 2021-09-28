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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mDependentTransactionAppliers:Ljava/util/Queue;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 47
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 48
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, p2, :cond_0

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 56
    iput p2, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    return-void
.end method


# virtual methods
.method public findTask(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 68
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

    .line 93
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 94
    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 77
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public printAllUnfilteredRemoteAnimationTarget()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const-string v2, "RemoteAnimationTargetSet"

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mDependentTransactionAppliers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 124
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$p979FlrZbgRF5fKODurH_LZy4zI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$p979FlrZbgRF5fKODurH_LZy4zI;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->addAfterApplyCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
