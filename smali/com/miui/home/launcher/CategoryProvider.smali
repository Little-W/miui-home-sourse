.class public Lcom/miui/home/launcher/CategoryProvider;
.super Landroid/content/ContentProvider;
.source "CategoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/CategoryProvider$SqlArguments;,
        Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;,
        Lcom/miui/home/launcher/CategoryProvider$_lancet;
    }
.end annotation


# instance fields
.field private mOpenHelper:Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    .line 103
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to insert null values"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initializeExternalAdd(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "category"

    .line 78
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "categoryId"

    .line 79
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/miui/home/launcher/CategoryProvider;->mOpenHelper:Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->generateNewCategoryId()I

    move-result p1

    int-to-long v0, p1

    const-string p1, "categoryId"

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method private updateDefaultAppCategory()V
    .locals 12

    .line 133
    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper;->getInstance()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CategorySettingHelper;->isAppCategoryUpdateEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Launcher.Category"

    const-string v1, "app category update disable"

    .line 134
    invoke-static {v0, v1}, Lcom/miui/home/launcher/CategoryProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, 0x2826e99

    .line 137
    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper;->getInstance()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CategorySettingHelper;->getAppCategoryUpdateVersionCode()I

    move-result v1

    if-gt v0, v1, :cond_1

    const-string v0, "Launcher.Category"

    const-string v1, "app category already updated"

    .line 138
    invoke-static {v0, v1}, Lcom/miui/home/launcher/CategoryProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "app_cate"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 145
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 146
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app_cate/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    .line 147
    :try_start_1
    new-instance v6, Lcom/mi/google/gson/Gson;

    invoke-direct {v6}, Lcom/mi/google/gson/Gson;-><init>()V

    const-class v7, Lcom/miui/home/launcher/allapps/category/AppCategoryJson;

    invoke-virtual {v6, v5, v7}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/allapps/category/AppCategoryJson;

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper;->getInstance()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object v7

    iget v8, v6, Lcom/miui/home/launcher/allapps/category/AppCategoryJson;->category:I

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/CategorySettingHelper;->getAppCategoryVersion(I)I

    move-result v7

    .line 149
    iget v8, v6, Lcom/miui/home/launcher/allapps/category/AppCategoryJson;->version:I

    if-le v8, v7, :cond_2

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 151
    iget-object v9, v6, Lcom/miui/home/launcher/allapps/category/AppCategoryJson;->packageNames:Ljava/util/List;

    iget v10, v6, Lcom/miui/home/launcher/allapps/category/AppCategoryJson;->category:I

    invoke-static {v8, v9, v10}, Lcom/miui/home/launcher/LauncherCategory$Repository;->updateRepository(Landroid/content/ContentResolver;Ljava/util/List;I)Z

    move-result v8

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper;->getInstance()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object v9

    iget v10, v6, Lcom/miui/home/launcher/allapps/category/AppCategoryJson;->category:I

    iget v11, v6, Lcom/miui/home/launcher/allapps/category/AppCategoryJson;->version:I

    invoke-virtual {v9, v10, v11}, Lcom/miui/home/launcher/CategorySettingHelper;->setAppCategoryVersion(II)V

    const-string v9, "Launcher.Category"

    .line 153
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update default app category:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Lcom/miui/home/launcher/allapps/category/AppCategoryJson;->version:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/miui/home/launcher/allapps/category/AppCategoryJson;->category:I

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " result "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/miui/home/launcher/CategoryProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v7, "Launcher.Category"

    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app category already new version for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/miui/home/launcher/allapps/category/AppCategoryJson;->category:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/miui/home/launcher/CategoryProvider$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 146
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v4, :cond_3

    .line 158
    :try_start_4
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    :goto_3
    throw v0

    .line 161
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper;->getInstance()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CategorySettingHelper;->setAppCategoryUpdateVersionCode()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10

    .line 88
    new-instance v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 89
    iget-object p1, p0, Lcom/miui/home/launcher/CategoryProvider;->mOpenHelper:Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 90
    new-instance v1, Lcom/miui/home/launcher/common/SQLiteTransaction;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/common/SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v2, 0x0

    .line 91
    :try_start_0
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p2, v5

    .line 92
    iget-object v7, v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {p1, v7, v6}, Lcom/miui/home/launcher/CategoryProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 97
    invoke-virtual {v1}, Lcom/miui/home/launcher/common/SQLiteTransaction;->close()V

    return v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 96
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/common/SQLiteTransaction;->commit()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-virtual {v1}, Lcom/miui/home/launcher/common/SQLiteTransaction;->close()V

    .line 98
    array-length p1, p2

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 90
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v2, :cond_2

    .line 97
    :try_start_3
    invoke-virtual {v1}, Lcom/miui/home/launcher/common/SQLiteTransaction;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/common/SQLiteTransaction;->close()V

    :goto_2
    throw p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const-string p2, "update_default_app_category"

    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/miui/home/launcher/CategoryProvider;->updateDefaultAppCategory()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 110
    new-instance v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/CategoryProvider;->mOpenHelper:Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 112
    iget-object p2, v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p3, v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public generateNewCategoryId()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/CategoryProvider;->mOpenHelper:Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->generateNewCategoryId()I

    move-result v0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 67
    new-instance v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 69
    iget-object v1, v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/miui/home/launcher/CategoryProvider;->initializeExternalAdd(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 71
    iget-object v1, p0, Lcom/miui/home/launcher/CategoryProvider;->mOpenHelper:Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 72
    iget-object v0, v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/miui/home/launcher/CategoryProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_0
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .locals 3

    .line 43
    new-instance v0, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CategoryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/CategoryProvider$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/CategoryProvider;->mOpenHelper:Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/CategoryProvider;->mOpenHelper:Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 51
    new-instance v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 53
    iget-object p1, v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/CategoryProvider;->mOpenHelper:Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 55
    iget-object v4, v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 117
    new-instance v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/miui/home/launcher/CategoryProvider;->mOpenHelper:Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CategoryProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 119
    iget-object p3, v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object p4, v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/miui/home/launcher/CategoryProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
