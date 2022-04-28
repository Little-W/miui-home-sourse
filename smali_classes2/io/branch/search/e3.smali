.class public final Lio/branch/search/e3;
.super Lio/branch/search/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/c3<",
        "Lio/branch/search/internal/sqlite/SQLiteDBInner;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/e3$a;

    invoke-direct {v0}, Lio/branch/search/e3$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/branch/search/c3;-><init>(Landroid/content/Context;Lio/branch/search/u2;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/m3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/c3;->a:Landroidx/room/RoomDatabase;

    check-cast v0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {v0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->a()Lio/branch/search/m3;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b()Lio/branch/search/u3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/c3;->a:Landroidx/room/RoomDatabase;

    check-cast v0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {v0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->b()Lio/branch/search/u3;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c()Lio/branch/search/x3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/c3;->a:Landroidx/room/RoomDatabase;

    check-cast v0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {v0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->c()Lio/branch/search/x3;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final d()Lio/branch/search/k3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/c3;->a:Landroidx/room/RoomDatabase;

    check-cast v0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {v0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->f()Lio/branch/search/k3;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final e()Lio/branch/search/w2;
    .locals 1

    iget-object v0, p0, Lio/branch/search/c3;->a:Landroidx/room/RoomDatabase;

    check-cast v0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {v0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->d()Lio/branch/search/w2;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final f()Lio/branch/search/z2;
    .locals 1

    iget-object v0, p0, Lio/branch/search/c3;->a:Landroidx/room/RoomDatabase;

    check-cast v0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {v0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->e()Lio/branch/search/z2;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
