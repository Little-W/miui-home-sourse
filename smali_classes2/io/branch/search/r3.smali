.class public final Lio/branch/search/r3;
.super Lio/branch/search/p3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/p3<",
        "Lio/branch/search/internal/sqlite/SQLiteDBInner;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/r3$a;

    invoke-direct {v0}, Lio/branch/search/r3$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/branch/search/p3;-><init>(Landroid/content/Context;Lio/branch/search/h3;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/z3;
    .locals 0

    iget-object p0, p0, Lio/branch/search/p3;->a:Landroidx/room/RoomDatabase;

    check-cast p0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->a()Lio/branch/search/z3;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lio/branch/search/h4;
    .locals 0

    iget-object p0, p0, Lio/branch/search/p3;->a:Landroidx/room/RoomDatabase;

    check-cast p0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->b()Lio/branch/search/h4;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c()Lio/branch/search/k4;
    .locals 0

    iget-object p0, p0, Lio/branch/search/p3;->a:Landroidx/room/RoomDatabase;

    check-cast p0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->c()Lio/branch/search/k4;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d()Lio/branch/search/x3;
    .locals 0

    iget-object p0, p0, Lio/branch/search/p3;->a:Landroidx/room/RoomDatabase;

    check-cast p0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->f()Lio/branch/search/x3;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e()Lio/branch/search/j3;
    .locals 0

    iget-object p0, p0, Lio/branch/search/p3;->a:Landroidx/room/RoomDatabase;

    check-cast p0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->d()Lio/branch/search/j3;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final f()Lio/branch/search/m3;
    .locals 0

    iget-object p0, p0, Lio/branch/search/p3;->a:Landroidx/room/RoomDatabase;

    check-cast p0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->e()Lio/branch/search/m3;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
