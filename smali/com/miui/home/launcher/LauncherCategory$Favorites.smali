.class public final Lcom/miui/home/launcher/LauncherCategory$Favorites;
.super Ljava/lang/Object;
.source "LauncherCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorites"
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.home.launcher.category/favorites"

    .line 210
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherCategory$Favorites;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .line 209
    sget-object v0, Lcom/miui/home/launcher/LauncherCategory$Favorites;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static addAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;I)Z
    .locals 0

    .line 233
    invoke-virtual {p1}, Lcom/miui/home/launcher/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->addAppCategoryConfig(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static addAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;Ljava/util/HashSet;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    move v2, v1

    .line 246
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 247
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "componentKey"

    .line 248
    invoke-virtual {p1}, Lcom/miui/home/launcher/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "categoryId"

    .line 249
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    aput-object v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/LauncherCategory$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static addAppCategoryConfig(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 2

    .line 237
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "componentKey"

    .line 238
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "categoryId"

    .line 239
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    sget-object p1, Lcom/miui/home/launcher/LauncherCategory$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static getAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;)Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 219
    :try_start_0
    sget-object v2, Lcom/miui/home/launcher/LauncherCategory$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "componentKey = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p1}, Lcom/miui/home/launcher/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    .line 219
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p0, :cond_1

    .line 222
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "categoryId"

    .line 223
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p0, :cond_0

    .line 219
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    .line 226
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static removeAppCategoryConfig(Landroid/content/ContentResolver;I)Z
    .locals 5

    .line 256
    sget-object v0, Lcom/miui/home/launcher/LauncherCategory$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "categoryId = ?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    return v2
.end method

.method static removeAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;)Z
    .locals 5

    .line 266
    sget-object v0, Lcom/miui/home/launcher/LauncherCategory$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "componentKey = ?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Lcom/miui/home/launcher/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 266
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    return v2
.end method

.method public static removeAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;I)Z
    .locals 4

    .line 260
    sget-object v0, Lcom/miui/home/launcher/LauncherCategory$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "componentKey = ? and categoryId = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Lcom/miui/home/launcher/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    .line 260
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    return p2
.end method

.method public static removeInvalidateConfig(Landroid/content/ContentResolver;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 272
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 273
    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/LauncherCategory$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "componentKey NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherCategory;->access$000(Ljava/util/Collection;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
