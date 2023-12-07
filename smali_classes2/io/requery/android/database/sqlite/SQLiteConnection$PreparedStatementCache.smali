.class final Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;
.super Landroidx/collection/LruCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/requery/android/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreparedStatementCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/String;",
        "Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/requery/android/database/sqlite/SQLiteConnection;


# direct methods
.method public constructor <init>(Lio/requery/android/database/sqlite/SQLiteConnection;I)V
    .locals 0

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;->this$0:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-direct {p0, p2}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/Printer;)V
    .locals 6

    const-string v0, "  Prepared statement cache:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    iget-boolean v3, v2, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": statementPtr=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", numParameters="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", readOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sql=\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lio/requery/android/database/sqlite/SQLiteConnection;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "    <none>"

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    check-cast p4, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;->entryRemoved(ZLjava/lang/String;Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p3, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    iget-boolean p1, p3, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;->this$0:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-static {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->access$200(Lio/requery/android/database/sqlite/SQLiteConnection;Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    :cond_0
    return-void
.end method
