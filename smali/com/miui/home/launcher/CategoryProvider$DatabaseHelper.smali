.class Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CategoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CategoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper$Upgrade;
    }
.end annotation


# instance fields
.field private mMaxCategoryId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "app_category_new.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 176
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, -0x1

    .line 173
    iput p1, p0, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->mMaxCategoryId:I

    .line 177
    invoke-virtual {p0}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 178
    iget v1, p0, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->mMaxCategoryId:I

    if-ne v1, p1, :cond_0

    .line 179
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->initializeMaxCategoryId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->mMaxCategoryId:I

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/CategoryProvider$1;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private initializeMaxCategoryId(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1

    const-string p0, "SELECT MAX(categoryId) FROM category"

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz p0, :cond_0

    .line 209
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 210
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz p0, :cond_1

    .line 213
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eq v0, p1, :cond_2

    return v0

    .line 216
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: could not query max id in category"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method generateNewCategoryId()I
    .locals 2

    .line 222
    iget v0, p0, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->mMaxCategoryId:I

    if-ltz v0, :cond_0

    const/16 v1, 0x3e8

    add-int/lit8 v0, v0, 0x1

    .line 226
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->mMaxCategoryId:I

    .line 227
    iget p0, p0, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->mMaxCategoryId:I

    return p0

    .line 223
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error: max category id was not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS category (categoryId INTEGER PRIMARY KEY, categoryName TEXT, categoryOrder INTEGER NOT NULL DEFAULT 0);"

    .line 185
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS repository (packageName TEXT, categoryId INTEGER);"

    .line 190
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS favorites (componentKey TEXT, categoryId INTEGER, PRIMARY KEY (componentKey,categoryId));"

    .line 194
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 203
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper$Upgrade;->access$100(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
