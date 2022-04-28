.class public Lio/branch/search/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/v1;


# instance fields
.field public final a:Lio/branch/search/l1$l;


# direct methods
.method public constructor <init>(Lio/branch/search/l1$l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/y1;->a:Lio/branch/search/l1$l;

    return-void
.end method


# virtual methods
.method public a(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .locals 12

    iget-object v0, p0, Lio/branch/search/y1;->a:Lio/branch/search/l1$l;

    iget-object v0, v0, Lio/branch/search/l1$l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/l1$k;

    iget-object v3, v1, Lio/branch/search/l1$k;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lio/branch/search/l1$k;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object v3

    iget-object v1, v1, Lio/branch/search/l1$k;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteStatement;->clearBindings()V

    move v5, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v2

    if-ge v5, v6, :cond_6

    add-int/lit8 v6, v5, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v5}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4

    :cond_1
    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_4

    :cond_2
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_3

    check-cast v6, Ljava/lang/Long;

    :goto_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_4

    :cond_3
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_3

    :cond_4
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lio/requery/android/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    new-instance p1, Landroid/database/SQLException;

    const-string v0, "Unknown type for param"

    invoke-direct {p1, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteStatement;->clearBindings()V

    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lio/branch/search/y1;->a:Lio/branch/search/l1$l;

    iget-object v0, v0, Lio/branch/search/l1$l;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "id"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "version"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "internal_versions"

    invoke-virtual {p1, v8, v6, v7, v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to insert version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lio/branch/search/y1;->a:Lio/branch/search/l1$l;

    iget-object v0, v0, Lio/branch/search/l1$l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/l1$h;

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    iget-object v8, v1, Lio/branch/search/l1$h;->a:Ljava/lang/String;

    const-string v9, "id"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v1, Lio/branch/search/l1$h;->b:Ljava/lang/String;

    const-string v9, "query"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v1, Lio/branch/search/l1$h;->c:Ljava/lang/String;

    const-string v9, "binds"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "internal_queries"

    invoke-virtual {p1, v8, v6, v7, v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-eqz v7, :cond_b

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to insert query "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lio/branch/search/y1;->a:Lio/branch/search/l1$l;

    iget-object v0, v0, Lio/branch/search/l1$l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/l1$i;

    new-array v7, v2, [Ljava/lang/String;

    iget-object v8, v1, Lio/branch/search/l1$i;->a:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "DELETE FROM internal_setup_teardown WHERE id = ?"

    invoke-virtual {p1, v8, v7}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, v1, Lio/branch/search/l1$i;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/branch/search/l1$j;

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    iget-object v10, v1, Lio/branch/search/l1$i;->a:Ljava/lang/String;

    const-string v11, "id"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v8, Lio/branch/search/l1$j;->b:Ljava/lang/String;

    const-string v11, "phase"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, v8, Lio/branch/search/l1$j;->c:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "position"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v10, v8, Lio/branch/search/l1$j;->a:Ljava/lang/String;

    const-string v11, "query"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v8, Lio/branch/search/l1$j;->d:Ljava/lang/String;

    const-string v11, "binds"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "repeat_binds"

    iget-object v8, v8, Lio/branch/search/l1$j;->e:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "internal_setup_teardown"

    invoke-virtual {p1, v8, v6, v9, v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-eqz v8, :cond_e

    goto :goto_7

    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to insert query "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    return-void
.end method
