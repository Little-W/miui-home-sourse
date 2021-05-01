.class public Lcom/miui/home/launcher/AppStatusProvider;
.super Landroid/content/ContentProvider;
.source "AppStatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/AppStatusProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final TABLE_APP_STATE_URI:Landroid/net/Uri;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/miui/home/launcher/AppStatusProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/home/launcher/AppStatusProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v0, "content://com.miui.home.launcher.status/table_app_state"

    .line 30
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    .line 33
    sget-object v0, Lcom/miui/home/launcher/AppStatusProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.home.launcher.status"

    const-string v2, "table_app_state"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private checkUriAndGetTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 82
    sget-object v0, Lcom/miui/home/launcher/AppStatusProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "table_app_state"

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/AppStatusProvider;->checkUriAndGetTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/AppStatusProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .line 63
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/AppStatusProvider;->checkUriAndGetTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/miui/home/launcher/AppStatusProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 65
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .line 40
    new-instance v0, Lcom/miui/home/launcher/AppStatusProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/AppStatusProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/AppStatusProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/AppStatusProvider;->mDbHelper:Lcom/miui/home/launcher/AppStatusProvider$DatabaseHelper;

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/AppStatusProvider;->mDbHelper:Lcom/miui/home/launcher/AppStatusProvider$DatabaseHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/AppStatusProvider$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/AppStatusProvider;->mDbHelper:Lcom/miui/home/launcher/AppStatusProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppStatusProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/AppStatusProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/AppStatusProvider;->checkUriAndGetTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/AppStatusProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/AppStatusProvider;->checkUriAndGetTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/AppStatusProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
