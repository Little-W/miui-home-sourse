.class public final Lio/branch/search/u3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/u3$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/u3$a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lio/branch/search/n4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/u3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/u3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/u3;->Companion:Lio/branch/search/u3$a;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;Lkotlinx/coroutines/CoroutineScope;Lio/branch/search/n4;)V
    .locals 1

    const-string v0, "roomDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mRunner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/u3;->a:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Lio/branch/search/u3;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lio/branch/search/u3;->c:Lio/branch/search/n4;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/u3;)Lio/branch/search/n4;
    .locals 0

    iget-object p0, p0, Lio/branch/search/u3;->c:Lio/branch/search/n4;

    return-object p0
.end method

.method public static final synthetic a(Lio/branch/search/u3;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/u3;->a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    return-void
.end method

.method public static synthetic a(Lio/branch/search/u3;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x3

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/u3;->a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/u3;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/branch/search/u3;->a(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/branch/search/t3;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "tableName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMethod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Lio/branch/search/u3;->a(Lio/branch/search/u3;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;IILjava/lang/Object;)V

    return-object v0
.end method

.method public final a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/branch/search/t3;",
            ">(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "TT;>;>;I)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/branch/search/u3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    new-instance v8, Lio/branch/search/u3$b;

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/String;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lio/branch/search/u3$b;-><init>(Lio/branch/search/u3;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SafeRoomObservableProvider.getObservable"

    invoke-static {v1, v0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-lez p4, :cond_0

    iget-object v2, p0, Lio/branch/search/u3;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lio/branch/search/u3$c;

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p0

    move v5, p4

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lio/branch/search/u3$c;-><init>(Lio/branch/search/u3;ILandroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/branch/search/t3;",
            ">(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lio/branch/search/u3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SafeRoomObservableProvider.getObservable"

    invoke-static {p1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
