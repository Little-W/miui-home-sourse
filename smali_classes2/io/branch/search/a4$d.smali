.class public Lio/branch/search/a4$d;
.super Landroidx/room/EntityInsertionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/a4;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/branch/search/c4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/branch/search/a4;Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/branch/search/c4;)V
    .locals 2

    iget-object p0, p2, Lio/branch/search/c4;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-wide v0, p2, Lio/branch/search/c4;->b:J

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lio/branch/search/c4;->c:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    iget p0, p2, Lio/branch/search/c4;->d:I

    int-to-long v0, p0

    const/4 p0, 0x4

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lio/branch/search/c4;->e:Ljava/lang/String;

    const/4 v0, 0x5

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    iget-object p0, p2, Lio/branch/search/c4;->f:Ljava/lang/String;

    const/4 p2, 0x6

    if-nez p0, :cond_3

    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, p2, p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lio/branch/search/c4;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/a4$d;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/branch/search/c4;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `search_clicks`(`session_id`,`timestamp`,`request_id`,`result_id`,`package_name`,`entity_id`) VALUES (?,?,?,?,?,?)"

    return-object p0
.end method
