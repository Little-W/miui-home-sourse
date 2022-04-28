.class public final Lio/branch/search/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/h3$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/h3$a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/h3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/h3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/h3;->Companion:Lio/branch/search/h3$a;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "roomDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/h3;->a:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Lio/branch/search/h3;->b:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/h3;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lio/branch/search/h3;->a:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method public static final synthetic a(Lio/branch/search/h3;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/h3;->a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    return-void
.end method

.method public static synthetic a(Lio/branch/search/h3;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x3

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/h3;->a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/branch/search/g3;",
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

    const-string v0, "read"

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

    invoke-static/range {v1 .. v7}, Lio/branch/search/h3;->a(Lio/branch/search/h3;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;IILjava/lang/Object;)V

    return-object v0
.end method

.method public final a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/branch/search/g3;",
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
    iget-object v0, p0, Lio/branch/search/h3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    new-instance v8, Lio/branch/search/h3$b;

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/String;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lio/branch/search/h3$b;-><init>(Lio/branch/search/h3;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SafeRoomObservableProvider.getObservable"

    invoke-static {v1, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-lez p4, :cond_0

    iget-object v2, p0, Lio/branch/search/h3;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lio/branch/search/h3$c;

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p0

    move v5, p4

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lio/branch/search/h3$c;-><init>(Lio/branch/search/h3;ILandroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

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
