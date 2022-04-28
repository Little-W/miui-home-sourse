.class public final Lio/branch/search/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/d2$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/d2$a;


# instance fields
.field public final a:Lio/branch/search/o2;

.field public final b:Lio/branch/search/w1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/d2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/d2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/d2;->Companion:Lio/branch/search/d2$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/w1;)V
    .locals 1

    const-string v0, "branch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/branch/search/d2;->b:Lio/branch/search/w1;

    new-instance p2, Lio/branch/search/o2;

    invoke-direct {p2, p1}, Lio/branch/search/o2;-><init>(Lio/branch/search/l;)V

    iput-object p2, p0, Lio/branch/search/d2;->a:Lio/branch/search/o2;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/d2;Lio/requery/android/database/sqlite/SQLiteDatabase;Lio/branch/search/c2;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/branch/search/d2;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;Lio/branch/search/c2;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/c2;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/c2;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/c2;

    new-instance v2, Lio/branch/search/c2;

    invoke-virtual {v1}, Lio/branch/search/c2;->b()I

    move-result v3

    invoke-virtual {v1}, Lio/branch/search/c2;->c()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5, p3}, Lio/branch/search/c2;-><init>(IJLjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lio/branch/search/c2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p1, p2, v1, v2, p3}, Lio/branch/search/c2;-><init>(IJLjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/branch/search/d2;->b:Lio/branch/search/w1;

    invoke-virtual {v1}, Lio/branch/search/w1;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/s1;

    iget-object v3, v2, Lio/branch/search/s1;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    const-string v4, "db.mHelper"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "db.mHelper.readableDatabase"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lio/branch/search/a2;->Companion:Lio/branch/search/a2$a;

    invoke-virtual {v4}, Lio/branch/search/a2$a;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/branch/search/i1$b;

    invoke-direct {v5}, Lio/branch/search/i1$b;-><init>()V

    new-instance v6, Lio/branch/search/k2;

    invoke-direct {v6}, Lio/branch/search/k2;-><init>()V

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v5, v6}, Lio/branch/search/x1;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/i1;Lio/branch/search/p1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/e2;

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v7, -0x1

    iput v7, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v7, p0, Lio/branch/search/d2;->a:Lio/branch/search/o2;

    iget-object v8, v2, Lio/branch/search/s1;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    const-string v9, "db.mHelper"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "db.mHelper.readableDatabase"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v7, v8}, Lio/branch/search/d2;->a(Lio/branch/search/e2;Lio/branch/search/o2;Lio/requery/android/database/sqlite/SQLiteDatabase;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lio/branch/search/d2;->b:Lio/branch/search/w1;

    iget-object v8, v2, Lio/branch/search/s1;->b:Ljava/lang/String;

    const-string v9, "db.cannonicalName"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lio/branch/search/d2$c;

    invoke-direct {v9, p0, v4, v6, v5}, Lio/branch/search/d2$c;-><init>(Lio/branch/search/d2;Lio/branch/search/e2;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v7, v8, v9}, Lio/branch/search/w1;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ScheduledQueryManager"

    invoke-static {v8, v7}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lio/branch/search/n2$b;

    iget v8, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v7, v8, v9, v10, v4}, Lio/branch/search/n2$b;-><init>(IJLjava/lang/Exception;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget v6, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "exception.javaClass.simpleName"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7, v6, v4}, Lio/branch/search/d2;->a(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_2
    iget-object v4, p0, Lio/branch/search/d2;->b:Lio/branch/search/w1;

    iget-object v6, v2, Lio/branch/search/s1;->b:Ljava/lang/String;

    const-string v7, "db.cannonicalName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lio/branch/search/d2$b;

    invoke-direct {v7, p0, v5}, Lio/branch/search/d2$b;-><init>(Lio/branch/search/d2;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v4, v6, v7}, Lio/branch/search/w1;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Exception;

    goto/16 :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/random/RandomKt;->Random(J)Lkotlin/random/Random;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lkotlin/random/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/n2$b;

    iget-object v1, p0, Lio/branch/search/d2;->a:Lio/branch/search/o2;

    invoke-virtual {v1, v0}, Lio/branch/search/o2;->b(Lio/branch/search/n2;)V

    :cond_4
    return-void
.end method

.method public final a(Lio/requery/android/database/sqlite/SQLiteDatabase;Lio/branch/search/c2;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lio/branch/search/c2;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "query_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lio/branch/search/c2;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lio/branch/search/c2;->a()Ljava/lang/String;

    move-result-object p2

    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "scheduled_query_execution_history"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public final a(Lio/branch/search/b2;Lio/branch/search/o2;Lio/requery/android/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lio/branch/search/b2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/b2;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/branch/search/i1$b;

    invoke-direct {v2}, Lio/branch/search/i1$b;-><init>()V

    invoke-static {}, Lio/branch/search/l2;->a()Lio/branch/search/p1;

    move-result-object v3

    invoke-static {p3, v0, v1, v2, v3}, Lio/branch/search/x1;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/i1;Lio/branch/search/p1;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    new-instance v0, Lio/branch/search/n2$b;

    invoke-virtual {p1}, Lio/branch/search/b2;->c()I

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2, p3}, Lio/branch/search/n2$b;-><init>(IJLjava/lang/Exception;)V

    invoke-virtual {p2, v0}, Lio/branch/search/o2;->b(Lio/branch/search/n2;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Lio/branch/search/e2;Lio/branch/search/o2;Lio/requery/android/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    invoke-virtual {p1}, Lio/branch/search/e2;->a()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/b2;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/d2;->a(Lio/branch/search/b2;Lio/branch/search/o2;Lio/requery/android/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final b()Lio/branch/search/o2;
    .locals 1

    iget-object v0, p0, Lio/branch/search/d2;->a:Lio/branch/search/o2;

    return-object v0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lio/branch/search/d2;->a:Lio/branch/search/o2;

    new-instance v1, Lio/branch/search/n2$c;

    const-wide/32 v2, 0x36ee80

    invoke-direct {v1, v2, v3}, Lio/branch/search/n2$c;-><init>(J)V

    invoke-virtual {v0, v1}, Lio/branch/search/o2;->c(Lio/branch/search/n2;)V

    return-void
.end method
