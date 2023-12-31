.class public Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
.super Ljava/lang/Object;
.source "RemoteAnimationTargetSet.java"


# instance fields
.field public final apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field public dockDividers:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

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
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mDependentTransactionAppliers:Ljava/util/Queue;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->filterTargetMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$pvJxEpkbbWVdIdab22d7yzqebUg;->INSTANCE:Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$pvJxEpkbbWVdIdab22d7yzqebUg;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$0bub88lylGz3NVYP8A6roghSu_s;->INSTANCE:Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$0bub88lylGz3NVYP8A6roghSu_s;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object v1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 57
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$LEXMYLlsowks9jU3-CnvzlbAePE;->INSTANCE:Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$LEXMYLlsowks9jU3-CnvzlbAePE;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$vn59BKo0Qe8CRhuJancUCmKWmlY;->INSTANCE:Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$vn59BKo0Qe8CRhuJancUCmKWmlY;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->dockDividers:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    goto :goto_0

    .line 59
    :cond_1
    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->dockDividers:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 62
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 63
    iput p2, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    return-void
.end method

.method public constructor <init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;II)V
    .locals 9

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mDependentTransactionAppliers:Ljava/util/Queue;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->filterTargetMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt p1, v4, :cond_4

    .line 75
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 79
    iget-object v6, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-gt v6, v7, :cond_2

    iget-object v6, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    :cond_2
    :goto_0
    if-ne p3, v4, :cond_3

    move-object p1, v0

    .line 87
    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object p1, v5

    :goto_1
    if-eqz p1, :cond_5

    new-array v5, v1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aput-object p1, v5, v3

    .line 90
    :cond_5
    iput-object v5, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 92
    iput p2, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    .line 56
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v0, 0x7f2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$new$1(I)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    .line 56
    new-array p0, p0, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-object p0
.end method

.method static synthetic lambda$new$2(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    .line 57
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v0, 0x7f2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$new$3(I)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    .line 57
    new-array p0, p0, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-object p0
.end method


# virtual methods
.method public filterTargetMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 98
    iget v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v3, p2, :cond_0

    .line 99
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public findTask(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 4

    .line 113
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 114
    iget v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDockDivider()[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->dockDividers:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-object p0
.end method

.method public getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 2

    .line 152
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 153
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;
    .locals 0

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 5

    .line 135
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 136
    iget v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasMultiTask()Z
    .locals 6

    .line 122
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 126
    iget-object v4, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    .line 127
    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_2

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public isTranslucent()Z
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public printAllUnfilteredRemoteAnimationTarget()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteAnimationTargetSet"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 188
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mDependentTransactionAppliers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    if-nez v0, :cond_1

    .line 194
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 195
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_1
    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$p979FlrZbgRF5fKODurH_LZy4zI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$p979FlrZbgRF5fKODurH_LZy4zI;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->addAfterApplyCallback(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
