.class public Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;
.super Ljava/lang/Object;
.source "TaskKeyLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskKeyLruCache"


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mEvictionCallback:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

.field private final mKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mEvictionCallback:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 53
    new-instance p2, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;-><init>(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;I)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;)Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mEvictionCallback:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "TaskKeyLruCache"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " numEntries="

    .line 137
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 138
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 139
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 140
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final evictAll()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final get(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_1

    .line 84
    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    if-ne v1, v2, :cond_0

    iget-wide v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    iget-boolean v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    iget-boolean v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-ne v1, v2, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    iget-boolean v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-eq v0, v1, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isInCacheWithoutAffectOrder(I)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    const-string v0, "TaskKeyLruCache"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected null key or value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final remove(I)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 0

    .line 113
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(I)V

    return-void
.end method

.method public final trimToSize(I)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    return-void
.end method
