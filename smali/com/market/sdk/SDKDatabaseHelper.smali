.class public Lcom/market/sdk/SDKDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SDKDatabaseHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "xiaomi_market_sdk_update.db"

.field static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MarketSDKDatabaseHelper"

.field private static mHelper:Lcom/market/sdk/SDKDatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "xiaomi_market_sdk_update.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 30
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createDownloadTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE update_download (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_name TEXT,download_id INTEGER, version_code INTEGER, apk_url TEXT, apk_hash TEXT, diff_url TEXT, diff_hash TEXT, apk_path TEXT, UNIQUE(package_name));"

    .line 44
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static getHelper(Landroid/content/Context;)Lcom/market/sdk/SDKDatabaseHelper;
    .locals 1

    .line 18
    sget-object v0, Lcom/market/sdk/SDKDatabaseHelper;->mHelper:Lcom/market/sdk/SDKDatabaseHelper;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/market/sdk/SDKDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/market/sdk/SDKDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/market/sdk/SDKDatabaseHelper;->mHelper:Lcom/market/sdk/SDKDatabaseHelper;

    .line 21
    :cond_0
    sget-object p0, Lcom/market/sdk/SDKDatabaseHelper;->mHelper:Lcom/market/sdk/SDKDatabaseHelper;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/market/sdk/SDKDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public insertOrUpdateUpdate(Landroid/content/ContentValues;)J
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/market/sdk/SDKDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT OR REPLACE INTO update_download(package_name,download_id,version_code,apk_url,apk_hash,diff_url,diff_hash,apk_path) VALUES(?,?,?,?,?,?,?,?)"

    .line 66
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const-string v1, "package_name"

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const-string v1, "download_id"

    .line 68
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const-string/jumbo v1, "version_code"

    .line 69
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const-string v1, "apk_url"

    .line 70
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const-string v1, "apk_hash"

    .line 71
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const-string v1, "diff_url"

    .line 72
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const-string v1, "diff_hash"

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const-string v1, "apk_path"

    .line 74
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "MarketSDKDatabaseHelper"

    const-string v1, "create database"

    .line 35
    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/market/sdk/SDKDatabaseHelper;->createDownloadTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 82
    invoke-virtual {p0}, Lcom/market/sdk/SDKDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 83
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
