.class public final Lcom/miui/home/launcher/operationicon/OperationIconCache;
.super Ljava/lang/Object;
.source "OperationIconCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;,
        Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconCache.kt\ncom/miui/home/launcher/operationicon/OperationIconCache\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,316:1\n1819#2,2:317\n1819#2,2:319\n1819#2,2:321\n181#3,2:323\n*E\n*S KotlinDebug\n*F\n+ 1 OperationIconCache.kt\ncom/miui/home/launcher/operationicon/OperationIconCache\n*L\n63#1,2:317\n66#1,2:319\n76#1,2:321\n99#1,2:323\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private final iconCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final iconSp:Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    .line 20
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion$instance$2;->INSTANCE:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion$instance$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->iconCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    new-instance v0, Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;

    invoke-direct {v0}, Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->iconSp:Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;

    .line 29
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->iconCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->iconSp:Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;->getAllOperationIcon()Ljava/util/HashMap;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/OperationIconCache;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 14
    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final getDiffIconInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;)V"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->iconCache:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 76
    check-cast p1, Ljava/lang/Iterable;

    .line 321
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    .line 77
    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    if-eqz v1, :cond_2

    .line 78
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isEnable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isSameOperatePlan(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isOpenDp()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->setOpenDp(Z)V

    .line 82
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "oldIcon"

    .line 83
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "oldIconMap.values"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final declared-synchronized remove(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/OperationIconInfo;
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->iconSp:Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;->remove(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->iconCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 122
    :goto_0
    monitor-exit p0

    return-object p1
.end method

.method private final removeIfNeed(Lcom/miui/home/launcher/operationicon/OperationIconInfo;J)V
    .locals 0

    .line 111
    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isRetainLocalData(J)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 112
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->syncIconEnableState(Z)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->remove(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    :goto_0
    return-void
.end method

.method static synthetic removeIfNeed$default(Lcom/miui/home/launcher/operationicon/OperationIconCache;Lcom/miui/home/launcher/operationicon/OperationIconInfo;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->removeIfNeed(Lcom/miui/home/launcher/operationicon/OperationIconInfo;J)V

    return-void
.end method

.method private final save(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V
    .locals 2

    .line 125
    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->iconCache:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->iconSp:Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;->save(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized clearExpiredData()V
    .locals 4

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->iconCache:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v2, Ljava/util/Map;

    .line 323
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    .line 100
    invoke-direct {p0, v3, v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->removeIfNeed(Lcom/miui/home/launcher/operationicon/OperationIconInfo;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/OperationIconInfo;
    .locals 0

    if-eqz p1, :cond_0

    .line 36
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->iconCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getAll()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->iconCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final removeIfNeed(Ljava/lang/String;)V
    .locals 6

    .line 105
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->get(Ljava/lang/String;)Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->removeIfNeed$default(Lcom/miui/home/launcher/operationicon/OperationIconCache;Lcom/miui/home/launcher/operationicon/OperationIconInfo;JILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized update(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "iconInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->save(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V

    .line 49
    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->updateDeepLinkIntent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "iconInfoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, p1, v2, v3}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->getDiffIconInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    check-cast v1, Ljava/lang/Iterable;

    .line 317
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    .line 64
    invoke-direct {p0, v1, v2, v3}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->removeIfNeed(Lcom/miui/home/launcher/operationicon/OperationIconInfo;J)V

    goto :goto_0

    .line 66
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 319
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    .line 67
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->update(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 69
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
