.class public final Lio/branch/search/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/c2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/branch/search/c2<",
        "Lio/branch/search/o2;",
        "Ljava/util/List<",
        "+",
        "Lio/branch/search/r2;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/x2;->b(Landroid/database/Cursor;)Lio/branch/search/o2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/x2;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/database/Cursor;)Lio/branch/search/o2;
    .locals 10

    const-string p0, "cur"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/o2;

    const-string v0, "query_id"

    invoke-static {p1, v0}, Lio/branch/search/c5;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v0, "should_execute_now_query"

    invoke-static {p1, v0}, Lio/branch/search/c5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "should_execute_now_query_bindings"

    invoke-static {p1, v3, v2, v0, v2}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "weight"

    invoke-static {p1, v3}, Lio/branch/search/c5;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v3, "transaction_group_id"

    invoke-static {p1, v3, v2, v0, v2}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    const-string v3, "uses_cursor"

    invoke-static {p1, v3}, Lio/branch/search/c5;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v8, v3

    :goto_0
    const-string v3, "query"

    invoke-static {p1, v3}, Lio/branch/search/c5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "bindings"

    invoke-static {p1, v9, v2, v0, v2}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p0

    move-object v2, v3

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lio/branch/search/o2;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Z)V

    return-object p0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/o2;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/r2;",
            ">;"
        }
    .end annotation

    const-string p0, "scheduledQueries"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/o2;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/r2;

    invoke-virtual {v1}, Lio/branch/search/r2;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lio/branch/search/o2;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lio/branch/search/o2;->f()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/r2;

    invoke-virtual {v1}, Lio/branch/search/r2;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v1, Lio/branch/search/r2;

    invoke-virtual {v0}, Lio/branch/search/o2;->f()Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Lio/branch/search/o2;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lio/branch/search/r2;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method
