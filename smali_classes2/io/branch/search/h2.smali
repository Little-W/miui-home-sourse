.class public final Lio/branch/search/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/p1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/branch/search/p1<",
        "Lio/branch/search/m2;",
        "Lkotlin/Pair<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lio/branch/search/f2;",
        ">;+",
        "Ljava/util/List<",
        "+",
        "Lio/branch/search/f2;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final d:Lio/branch/search/i1;


# direct methods
.method public constructor <init>(Lio/branch/search/i1;)V
    .locals 1

    const-string v0, "binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/h2;->d:Lio/branch/search/i1;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/h2;->b(Landroid/database/Cursor;)Lio/branch/search/m2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/h2;->b(Ljava/util/List;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/database/Cursor;)Lio/branch/search/m2;
    .locals 8

    const-string v0, "cur"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phase"

    invoke-static {p1, v0}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "position"

    invoke-static {p1, v1}, Lio/branch/search/q4;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "query"

    invoke-static {p1, v1}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "binds"

    invoke-static {p1, v1}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "repeat_binds"

    invoke-static {p1, v1}, Lio/branch/search/q4;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    new-instance v1, Lio/branch/search/m2;

    sget-object v2, Lio/branch/search/j2;->Companion:Lio/branch/search/j2$a;

    invoke-virtual {v2, v0}, Lio/branch/search/j2$a;->a(Ljava/lang/String;)Lio/branch/search/j2;

    move-result-object v3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v7, p1

    :goto_0
    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lio/branch/search/m2;-><init>(Lio/branch/search/j2;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method

.method public b(Ljava/util/List;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/m2;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lio/branch/search/f2;",
            ">;",
            "Ljava/util/List<",
            "Lio/branch/search/f2;",
            ">;>;"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lio/branch/search/m2;

    invoke-virtual {v5}, Lio/branch/search/m2;->b()Lio/branch/search/j2;

    move-result-object v5

    sget-object v6, Lio/branch/search/j2;->a:Lio/branch/search/j2;

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Lio/branch/search/h2$a;

    invoke-direct {v1}, Lio/branch/search/h2$a;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lio/branch/search/m2;

    invoke-virtual {v5}, Lio/branch/search/m2;->b()Lio/branch/search/j2;

    move-result-object v5

    sget-object v6, Lio/branch/search/j2;->b:Lio/branch/search/j2;

    if-ne v5, v6, :cond_4

    move v5, v3

    goto :goto_3

    :cond_4
    move v5, v4

    :goto_3
    if-eqz v5, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p1, Lio/branch/search/h2$b;

    invoke-direct {p1}, Lio/branch/search/h2$b;-><init>()V

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/m2;

    iget-object v4, p0, Lio/branch/search/h2;->d:Lio/branch/search/i1;

    invoke-virtual {v3, v4}, Lio/branch/search/m2;->a(Lio/branch/search/i1;)Lio/branch/search/f2;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/m2;

    iget-object v3, p0, Lio/branch/search/h2;->d:Lio/branch/search/i1;

    invoke-virtual {v2, v3}, Lio/branch/search/m2;->a(Lio/branch/search/i1;)Lio/branch/search/f2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
