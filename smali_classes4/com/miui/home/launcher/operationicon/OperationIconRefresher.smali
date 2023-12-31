.class public final Lcom/miui/home/launcher/operationicon/OperationIconRefresher;
.super Ljava/lang/Object;
.source "OperationIconRefresher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/OperationIconRefresher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconRefresher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconRefresher.kt\ncom/miui/home/launcher/operationicon/OperationIconRefresher\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,89:1\n181#2,2:90\n1819#3,2:92\n1819#3,2:94\n734#3:96\n825#3,2:97\n*E\n*S KotlinDebug\n*F\n+ 1 OperationIconRefresher.kt\ncom/miui/home/launcher/operationicon/OperationIconRefresher\n*L\n42#1,2:90\n48#1,2:92\n64#1,2:94\n86#1:96\n86#1,2:97\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/OperationIconRefresher$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private volatile lastRefreshTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconRefresher$Companion;

    .line 15
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$Companion$instance$2;->INSTANCE:Lcom/miui/home/launcher/operationicon/OperationIconRefresher$Companion$instance$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 9
    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getNotifyRefreshIconPkg(Lcom/miui/home/launcher/operationicon/OperationIconRefresher;J)Ljava/util/List;
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->getNotifyRefreshIconPkg(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$refresh(Lcom/miui/home/launcher/operationicon/OperationIconRefresher;Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->refresh(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setLastRefreshTime$p(Lcom/miui/home/launcher/operationicon/OperationIconRefresher;J)V
    .locals 0

    .line 9
    iput-wide p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->lastRefreshTime:J

    return-void
.end method

.method private final getNotifyRefreshIconPkg(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->getRefreshIcon(J)Ljava/util/List;

    move-result-object p0

    .line 67
    sget-object p1, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion;

    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->getExecutedIconMap()Ljava/util/HashMap;

    move-result-object p1

    .line 68
    check-cast p0, Ljava/lang/Iterable;

    .line 94
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    .line 69
    invoke-virtual {p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    if-eqz v1, :cond_1

    .line 70
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPackageIconsUpdateMap(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/LauncherModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 48
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/AllAppsList;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    .line 92
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    const-string v1, "appInfo"

    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    const-string v4, "appInfo.getUser()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v2, "map[appInfo.getUser()] ?\u2026his\n                    }"

    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private final getRefreshIcon(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;"
        }
    .end annotation

    .line 86
    sget-object p0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->getAll()Ljava/util/ArrayList;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 97
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    .line 86
    invoke-virtual {v2, p1, p2}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->iconEnable(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final refresh(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/LauncherModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->getPackageIconsUpdateMap(Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 90
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashSet;

    .line 43
    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final refreshIcon(Lcom/miui/home/launcher/LauncherModel;)V
    .locals 6

    const-string v0, "launcherModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 25
    iget-wide v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->lastRefreshTime:J

    sub-long v2, v0, v2

    const v4, 0x493e0

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$refreshIcon$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$refreshIcon$1;-><init>(Lcom/miui/home/launcher/operationicon/OperationIconRefresher;Lcom/miui/home/launcher/LauncherModel;J)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    return-void
.end method
