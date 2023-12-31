.class public final Lio/branch/search/q2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/q2$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/q2$a;


# instance fields
.field public final a:Lio/branch/search/b3;

.field public final b:Lio/branch/search/j2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/q2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/q2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/q2;->Companion:Lio/branch/search/q2$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/j2;)V
    .locals 1

    const-string v0, "branch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/branch/search/q2;->b:Lio/branch/search/j2;

    new-instance p2, Lio/branch/search/b3;

    invoke-direct {p2, p1}, Lio/branch/search/b3;-><init>(Lio/branch/search/l;)V

    iput-object p2, p0, Lio/branch/search/q2;->a:Lio/branch/search/b3;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/q2;Lio/requery/android/database/sqlite/SQLiteDatabase;Lio/branch/search/p2;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/branch/search/q2;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;Lio/branch/search/p2;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/p2;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/p2;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/p2;

    new-instance v1, Lio/branch/search/p2;

    invoke-virtual {v0}, Lio/branch/search/p2;->b()I

    move-result v2

    invoke-virtual {v0}, Lio/branch/search/p2;->c()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, p3}, Lio/branch/search/p2;-><init>(IJLjava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lio/branch/search/p2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1, p3}, Lio/branch/search/p2;-><init>(IJLjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a()V
    .locals 25

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lio/branch/search/q2;->b:Lio/branch/search/j2;

    invoke-virtual {v2}, Lio/branch/search/j2;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/f2;

    iget-object v5, v3, Lio/branch/search/f2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    const-string v6, "db.mHelper"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v7, "db.mHelper.readableDatabase"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lio/branch/search/n2;->Companion:Lio/branch/search/n2$a;

    invoke-virtual {v8}, Lio/branch/search/n2$a;->a()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lio/branch/search/u1$b;

    invoke-direct {v9}, Lio/branch/search/u1$b;-><init>()V

    new-instance v10, Lio/branch/search/x2;

    invoke-direct {v10}, Lio/branch/search/x2;-><init>()V

    const/4 v11, 0x0

    invoke-static {v5, v8, v11, v9, v10}, Lio/branch/search/k2;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/u1;Lio/branch/search/c2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/branch/search/r2;

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v12, -0x1

    iput v12, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v12, v0, Lio/branch/search/q2;->a:Lio/branch/search/b3;

    iget-object v13, v3, Lio/branch/search/f2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v12, v13}, Lio/branch/search/q2;->a(Lio/branch/search/r2;Lio/branch/search/b3;Lio/requery/android/database/sqlite/SQLiteDatabase;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_0

    :cond_1
    iget-object v12, v0, Lio/branch/search/q2;->b:Lio/branch/search/j2;

    iget-object v13, v3, Lio/branch/search/f2;->b:Ljava/lang/String;

    const-string v14, "db.cannonicalName"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lio/branch/search/q2$c;

    invoke-direct {v15, v0, v8, v10, v9}, Lio/branch/search/q2$c;-><init>(Lio/branch/search/q2;Lio/branch/search/r2;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v12, v13, v15}, Lio/branch/search/j2;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Exception;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {}, Lio/branch/search/e0;->a()Lio/branch/search/g0;

    move-result-object v12

    invoke-virtual {v12}, Lio/branch/search/g0;->a()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_2
    move-object v12, v11

    :goto_1
    if-eqz v12, :cond_4

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    move v13, v4

    :goto_3
    if-nez v13, :cond_5

    const/16 v13, 0x1000

    invoke-static {v12, v13}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v15, "ScheduledQueryManager"

    invoke-static {v15, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    new-instance v12, Lio/branch/search/a3$b;

    iget-object v13, v0, Lio/branch/search/q2;->a:Lio/branch/search/b3;

    invoke-virtual {v13}, Lio/branch/search/b3;->a()Lio/branch/search/l;

    move-result-object v13

    invoke-virtual {v13}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v13

    const-string v15, "jobManager.branch.remoteConfiguration"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v15, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x0

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move/from16 v18, v15

    move-object/from16 v21, v8

    invoke-direct/range {v16 .. v24}, Lio/branch/search/a3$b;-><init>(Lio/branch/search/KBranchRemoteConfiguration;IJLjava/lang/Exception;Lio/branch/search/u1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget v10, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v13, "exception.javaClass.simpleName"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v12, v10, v8}, Lio/branch/search/q2;->a(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_6
    iget-object v8, v0, Lio/branch/search/q2;->b:Lio/branch/search/j2;

    iget-object v10, v3, Lio/branch/search/f2;->b:Ljava/lang/String;

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lio/branch/search/q2$b;

    invoke-direct {v12, v0, v9}, Lio/branch/search/q2$b;-><init>(Lio/branch/search/q2;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v8, v10, v12}, Lio/branch/search/j2;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Exception;

    goto/16 :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/random/RandomKt;->Random(J)Lkotlin/random/Random;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lkotlin/random/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/a3$b;

    invoke-virtual {v1}, Lio/branch/search/a3$b;->b()Ljava/lang/Exception;

    move-result-object v2

    const-string v3, "ScheduledQueryManager.executeScheduledQueries"

    invoke-static {v3, v2}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v0, Lio/branch/search/q2;->a:Lio/branch/search/b3;

    invoke-virtual {v0, v1}, Lio/branch/search/b3;->b(Lio/branch/search/a3;)V

    :cond_8
    return-void
.end method

.method public final a(Lio/requery/android/database/sqlite/SQLiteDatabase;Lio/branch/search/p2;)V
    .locals 2

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lio/branch/search/p2;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "query_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lio/branch/search/p2;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lio/branch/search/p2;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "error"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "scheduled_query_execution_history"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public final a(Lio/branch/search/o2;Lio/branch/search/b3;Lio/requery/android/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    :try_start_0
    invoke-virtual {p1}, Lio/branch/search/o2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/o2;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/branch/search/u1$b;

    invoke-direct {v2}, Lio/branch/search/u1$b;-><init>()V

    invoke-static {}, Lio/branch/search/y2;->a()Lio/branch/search/c2;

    move-result-object v3

    invoke-static {p3, v0, v1, v2, v3}, Lio/branch/search/k2;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/u1;Lio/branch/search/c2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    move-object v5, p3

    new-instance p3, Lio/branch/search/a3$b;

    iget-object p0, p0, Lio/branch/search/q2;->a:Lio/branch/search/b3;

    invoke-virtual {p0}, Lio/branch/search/b3;->a()Lio/branch/search/l;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    const-string p0, "jobManager.branch.remoteConfiguration"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/o2;->c()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v8}, Lio/branch/search/a3$b;-><init>(Lio/branch/search/KBranchRemoteConfiguration;IJLjava/lang/Exception;Lio/branch/search/u1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, p3}, Lio/branch/search/b3;->b(Lio/branch/search/a3;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final a(Lio/branch/search/r2;Lio/branch/search/b3;Lio/requery/android/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    invoke-virtual {p1}, Lio/branch/search/r2;->a()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/o2;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/q2;->a(Lio/branch/search/o2;Lio/branch/search/b3;Lio/requery/android/database/sqlite/SQLiteDatabase;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public final b()Lio/branch/search/b3;
    .locals 0

    iget-object p0, p0, Lio/branch/search/q2;->a:Lio/branch/search/b3;

    return-object p0
.end method

.method public final c()V
    .locals 3

    iget-object p0, p0, Lio/branch/search/q2;->a:Lio/branch/search/b3;

    new-instance v0, Lio/branch/search/a3$c;

    const-wide/32 v1, 0x36ee80

    invoke-direct {v0, v1, v2}, Lio/branch/search/a3$c;-><init>(J)V

    invoke-virtual {p0, v0}, Lio/branch/search/b3;->c(Lio/branch/search/a3;)V

    return-void
.end method
