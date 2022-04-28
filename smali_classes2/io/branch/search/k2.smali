.class public final Lio/branch/search/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/p1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/branch/search/p1<",
        "Lio/branch/search/b2;",
        "Ljava/util/List<",
        "+",
        "Lio/branch/search/e2;",
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

    invoke-virtual {p0, p1}, Lio/branch/search/k2;->b(Landroid/database/Cursor;)Lio/branch/search/b2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/k2;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/database/Cursor;)Lio/branch/search/b2;
    .locals 11

    const-string v0, "cur"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/b2;

    const-string v1, "query_id"

    invoke-static {p1, v1}, Lio/branch/search/q4;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "should_execute_now_query"

    invoke-static {p1, v1}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "should_execute_now_query_bindings"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3, v4}, Lio/branch/search/q4;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "weight"

    invoke-static {p1, v1}, Lio/branch/search/q4;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v1, "transaction_group_id"

    invoke-static {p1, v1, v4, v3, v4}, Lio/branch/search/q4;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v8

    const-string v1, "uses_cursor"

    invoke-static {p1, v1}, Lio/branch/search/q4;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v9, v1

    :goto_0
    const-string v1, "query"

    invoke-static {p1, v1}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "bindings"

    invoke-static {p1, v1, v4, v3, v4}, Lio/branch/search/q4;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object v3, v10

    invoke-direct/range {v1 .. v9}, Lio/branch/search/b2;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Z)V

    return-object v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/b2;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/e2;",
            ">;"
        }
    .end annotation

    const-string v0, "scheduledQueries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/b2;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/e2;

    invoke-virtual {v2}, Lio/branch/search/e2;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lio/branch/search/b2;->f()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lio/branch/search/b2;->f()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/e2;

    invoke-virtual {v2}, Lio/branch/search/e2;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Lio/branch/search/e2;

    invoke-virtual {v1}, Lio/branch/search/b2;->f()Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Lio/branch/search/b2;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lio/branch/search/e2;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
