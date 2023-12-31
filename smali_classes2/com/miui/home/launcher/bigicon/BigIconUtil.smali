.class public final Lcom/miui/home/launcher/bigicon/BigIconUtil;
.super Ljava/lang/Object;
.source "BigIconUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/bigicon/BigIconUtil$DatabaseHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBigIconUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BigIconUtil.kt\ncom/miui/home/launcher/bigicon/BigIconUtil\n*L\n1#1,539:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconUtil;

.field private static final LEFT_AND_RIGHT_SIDE_IN_1X2:I

.field private static final WIDGET_RADIUS:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/miui/home/launcher/bigicon/BigIconUtil;

    invoke-direct {v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/bigicon/BigIconUtil;->INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconUtil;

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    sput v0, Lcom/miui/home/launcher/bigicon/BigIconUtil;->WIDGET_RADIUS:F

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "Application.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070082

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/bigicon/BigIconUtil;->LEFT_AND_RIGHT_SIDE_IN_1X2:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAllShortcutFromSamePackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getAllShortcutFromSamePackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getShortcutLocationOfSamePackage(Ljava/util/List;)I
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getShortcutLocationOfSamePackage(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static final checkBigIconInDB(Landroid/content/ContentProvider;Lcom/miui/home/launcher/IconCache;)V
    .locals 9

    const-string v0, "provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    const/4 v0, 0x0

    .line 380
    check-cast v0, Landroid/database/Cursor;

    .line 383
    :try_start_0
    sget-object v2, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v3, "spanX"

    const-string v4, "spanY"

    const-string v5, "intent"

    const-string v6, "profileId"

    .line 385
    filled-new-array {v1, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "iconType=?"

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/16 v1, 0x8

    .line 386
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v5, v8

    const/4 v6, 0x0

    move-object v1, p0

    .line 382
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, v7

    goto :goto_0

    :cond_1
    move v1, v8

    .line 388
    :goto_0
    sget-boolean v2, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "Assertion failed"

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 389
    :cond_3
    :goto_1
    sget-object v1, Lcom/miui/home/launcher/bigicon/BigIconUtil;->INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconUtil;

    invoke-direct {v1, v0, p1}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getBigIconWithoutRes(Landroid/database/Cursor;Lcom/miui/home/launcher/IconCache;)Ljava/util/ArrayList;

    move-result-object p1

    .line 390
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v7

    if-eqz v1, :cond_4

    .line 391
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 393
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p0

    const-string p1, "LauncherModeController.getCurrentMode()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getCloudBackUpOrReplacementPreKey()Ljava/lang/String;

    move-result-object p0

    .line 394
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->isCloudBackUpOrReplacement(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 395
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p1

    invoke-virtual {p1, p0, v8}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIsCloudBackUpOrReplacement(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz v0, :cond_6

    .line 400
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "BigIconUtil"

    const-string v1, "dataTransformWasFailure"

    .line 398
    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_7

    .line 400
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0
.end method

.method private final createDataFromCursor(Landroid/database/Cursor;Lcom/google/gson/JsonArray;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 340
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "intent"

    .line 341
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 342
    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x0

    .line 344
    :try_start_0
    invoke-static {p0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " parse uri error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BigIconUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v1, "intent.component!!"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "intent.component!!.packageName"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent.component!!.className"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "product_id"

    .line 353
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spanX"

    .line 354
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "spanY"

    .line 355
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 357
    sget-object v4, Lcom/miui/home/launcher/bigicon/BigIconUtil;->INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconUtil;

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "productId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-direct {v4, p0, v0, v2, v1}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->createItemJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonElement;

    .line 356
    invoke-virtual {p2, p0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private final createItemJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 1

    .line 366
    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v0, "packageName"

    .line 367
    invoke-virtual {p0, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "activityName"

    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iconSize"

    .line 369
    invoke-virtual {p0, p1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "productId"

    .line 370
    invoke-virtual {p0, p1, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final getAllShortcutFromSamePackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 194
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/bigicon/BigIconUtil$getAllShortcutFromSamePackage$allInfo$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconUtil$getAllShortcutFromSamePackage$allInfo$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Ljava/util/function/Predicate;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 204
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    .line 200
    check-cast p0, Ljava/util/List;

    .line 207
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p0, v1

    :cond_1
    return-object p0

    :cond_2
    return-object v1

    .line 196
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " launcher state "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BigIconUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static final getAllShortcutLocation(Ljava/util/List;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "relativePackageList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 146
    invoke-static {p0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getShortcutListOfDiffPackage(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/bigicon/BigIconUtil$getAllShortcutLocation$1;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil$getAllShortcutLocation$1;-><init>(Ljava/util/HashMap;)V

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private final getBigIconWithoutRes(Landroid/database/Cursor;Lcom/miui/home/launcher/IconCache;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/miui/home/launcher/IconCache;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    const-string p0, "BigIconUtil"

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 409
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "intent"

    .line 410
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 411
    check-cast v2, Landroid/content/Intent;

    const/4 v3, 0x0

    .line 413
    :try_start_0
    invoke-static {v1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse uri"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {p0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string v1, "_id"

    .line 417
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 418
    new-instance v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    const-string v5, "spanX"

    .line 419
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    const-string v5, "spanY"

    .line 420
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    const/16 v5, 0x8

    .line 421
    iput v5, v1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 422
    iput-object v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 424
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v5, "profileId"

    .line 425
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 423
    invoke-static {v2, v5}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 426
    invoke-static {}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->isSupportToLoadBigIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;

    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/IconCache;->existBigIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 429
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "componentName = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",user = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " no big icon"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sget-object v1, Lcom/miui/home/launcher/bigicon/BigIconUtil;->INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconUtil;

    invoke-direct {v1, v3, v4}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->makeMoveItemOperation(J)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method private final getCroppedBigIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IIILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    .line 488
    invoke-static {p1}, Lcom/miui/maml/util/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p5, "BitmapUtils.drawableToBitmap(resDrawable)"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-direct {p0, p1, p3, p4, p6}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getCroppedFromViewSize(Landroid/graphics/Bitmap;IILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p3, p4, p1, p6}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getCroppedFromCorner(IILandroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 491
    :cond_0
    invoke-static {p2}, Lcom/miui/maml/util/LargeIconsHelper;->isXSpaceUserId(Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 492
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, p6}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getDupDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private final getCroppedFromCorner(IILandroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-ne p1, p2, :cond_0

    .line 514
    sget p0, Lcom/miui/home/launcher/bigicon/BigIconUtil;->WIDGET_RADIUS:F

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07020f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 516
    :goto_0
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget-object p4, Lcom/miui/home/launcher/bigicon/IconCroppedCorners;->INSTANCE:Lcom/miui/home/launcher/bigicon/IconCroppedCorners;

    invoke-virtual {p4, p3, p0}, Lcom/miui/home/launcher/bigicon/IconCroppedCorners;->croppedCorners(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private final getCroppedFromViewSize(Landroid/graphics/Bitmap;IILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    .line 499
    invoke-static {p4}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMiuiWidgetPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    const/4 p4, 0x1

    .line 500
    invoke-static {p2, p3, p4}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide v0

    const/16 p4, 0x20

    shr-long v2, v0, p4

    long-to-int p4, v2

    long-to-int v0, v0

    .line 503
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 504
    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-static {p2, p3, v2}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getLeftOrRightPadding(III)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p4, p2

    sub-int/2addr v0, v1

    .line 505
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    if-lez p4, :cond_1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/bigicon/IconCroppedCorners;->INSTANCE:Lcom/miui/home/launcher/bigicon/IconCroppedCorners;

    invoke-virtual {p0, p4, v0, p1}, Lcom/miui/home/launcher/bigicon/IconCroppedCorners;->croppedToSizeOfView(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private final getCurrentModeResource()Lcom/google/gson/JsonArray;
    .locals 9

    .line 283
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 284
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 285
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 286
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 290
    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 291
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 294
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 295
    sget-object v3, Lcom/miui/home/launcher/bigicon/BigIconUtil$currentModeResource$bigShortcutInfo$1;->INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconUtil$currentModeResource$bigShortcutInfo$1;

    check-cast v3, Ljava/util/function/Predicate;

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 298
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    .line 294
    check-cast v1, Ljava/util/List;

    .line 299
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    :cond_2
    const-string v3, "bigShortcutInfo"

    .line 302
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 303
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    const-string v5, "info"

    .line 306
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "info.packageName"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "info.className"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v4, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    .line 305
    invoke-direct {p0, v5, v6, v4, v7}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->createItemJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 304
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    .line 287
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " launcher state "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BigIconUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static final getDisplayBigIconDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;IILjava/lang/String;Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .locals 17

    move-object/from16 v9, p0

    move/from16 v10, p4

    move-object/from16 v11, p7

    const-string v0, "packageName"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityName"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object/from16 v13, p6

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    const-string v1, "LauncherModeController.getCurrentMode()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v14

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/4 v0, 0x1

    move/from16 v8, p3

    if-ne v8, v0, :cond_1

    if-ne v10, v0, :cond_1

    const-wide/16 v5, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v4, p5

    move-object/from16 v7, p2

    .line 461
    invoke-static/range {v0 .. v7}, Lcom/miui/maml/util/LargeIconsHelper;->getLargeIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 463
    sget-object v1, Lcom/miui/home/launcher/bigicon/BigIconUtil;->INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconUtil;

    invoke-direct {v1, v9, v15, v14, v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 464
    instance-of v1, v0, Lcom/miui/maml/LargeIconDrawable;

    if-eqz v1, :cond_0

    .line 465
    check-cast v0, Lcom/miui/maml/LargeIconDrawable;

    invoke-virtual {v0}, Lcom/miui/maml/LargeIconDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    :cond_0
    return-object v16

    :cond_1
    const-wide/16 v6, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v4, p5

    move-object v5, v15

    move-object/from16 v8, p2

    .line 470
    invoke-static/range {v0 .. v8}, Lcom/miui/maml/util/LargeIconsHelper;->getOriginLargeIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 472
    sget-object v1, Lcom/miui/home/launcher/bigicon/BigIconUtil;->INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconUtil;

    invoke-direct {v1, v9, v15, v14, v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 473
    instance-of v1, v0, Lcom/miui/maml/LargeIconDrawable;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/miui/maml/LargeIconDrawable;

    invoke-virtual {v0}, Lcom/miui/maml/LargeIconDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v11, :cond_3

    .line 477
    invoke-virtual {v0}, Lcom/miui/maml/LargeIconDrawable;->getEnableIconMask()I

    move-result v1

    iput v1, v11, Lcom/miui/home/launcher/ShortcutInfo;->mBigIconType:I

    .line 479
    :cond_3
    sget-object v1, Lcom/miui/home/launcher/bigicon/BigIconUtil;->INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconUtil;

    invoke-virtual {v0}, Lcom/miui/maml/LargeIconDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "largeIconDrawable.drawable"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0}, Lcom/miui/maml/LargeIconDrawable;->getEnableIconMask()I

    move-result v5

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 479
    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getCroppedBigIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IIILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    return-object v16
.end method

.method private final getDupDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 520
    invoke-static {p3, p1}, Lcom/miui/maml/util/PortableUtils;->getXSpaceBadgeDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 521
    invoke-static {p3, p2, p0}, Lcom/miui/maml/util/PortableUtils;->getXspaceDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string p1, "PortableUtils.getXspaceD\u2026resDrawable, xSpaceBadge)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getLeftOrRightPadding(III)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    .line 535
    sget p0, Lcom/miui/home/launcher/bigicon/BigIconUtil;->LEFT_AND_RIGHT_SIDE_IN_1X2:I

    add-int/2addr p2, p0

    :cond_0
    return p2
.end method

.method private final getResourceFormDb(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/google/gson/JsonArray;
    .locals 4

    .line 313
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 314
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 315
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/home/launcher/DeviceConfig;->getOptimalDB(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 317
    new-instance v1, Lcom/miui/home/launcher/bigicon/BigIconUtil$DatabaseHelper;

    .line 318
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 319
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-direct {v1, v2, p1}, Lcom/miui/home/launcher/bigicon/BigIconUtil$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v1, Landroid/database/sqlite/SQLiteOpenHelper;

    .line 320
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "SELECT _id, intent, product_id, spanX, spanY  FROM favorites WHERE iconType=8"

    const/4 v2, 0x0

    .line 324
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    .line 326
    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 327
    invoke-direct {p0, v3, v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->createDataFromCursor(Landroid/database/Cursor;Lcom/google/gson/JsonArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 331
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "BigIconUtil"

    const-string v2, "queryDupColumnCount error"

    .line 329
    check-cast p0, Ljava/lang/Throwable;

    invoke-static {v1, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v0

    :goto_2
    if-eqz v3, :cond_1

    .line 331
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p0

    :cond_2
    return-object v0
.end method

.method private final getResourceInDesktop()Lcom/google/gson/JsonArray;
    .locals 2

    .line 268
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 269
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getCurrentModeResource()Lcom/google/gson/JsonArray;

    move-result-object p0

    goto :goto_0

    .line 271
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    const-string v1, "LauncherModeController.DESKTOP"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getResourceFormDb(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/google/gson/JsonArray;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final getResourceInDrawer()Lcom/google/gson/JsonArray;
    .locals 2

    .line 276
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 277
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getCurrentModeResource()Lcom/google/gson/JsonArray;

    move-result-object p0

    goto :goto_0

    .line 279
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    const-string v1, "LauncherModeController.DRAWER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getResourceFormDb(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/google/gson/JsonArray;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final getShortcutListOfDiffPackage(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;"
        }
    .end annotation

    .line 158
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutListOfDiffPackage$1;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutListOfDiffPackage$1;-><init>(Ljava/util/HashMap;)V

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 166
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static final getShortcutLocationOfSamePackage(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)I"
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 172
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    if-eqz p0, :cond_2

    .line 175
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 179
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutLocationOfSamePackage$1;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutLocationOfSamePackage$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 188
    iget p0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x4

    return p0
.end method

.method public static final getShortcutOfSamePackageToConvert(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-static {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getAllShortcutFromSamePackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 243
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutOfSamePackageToConvert$infoInDesktop$1;

    invoke-direct {v3, p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutOfSamePackageToConvert$infoInDesktop$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Ljava/util/function/Predicate;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 252
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    .line 246
    check-cast p0, Ljava/util/List;

    .line 253
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static final getShortcutToConvert(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "relativePackageList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutToConvert$1;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil$getShortcutToConvert$1;-><init>(Ljava/util/HashMap;)V

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 232
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 235
    :cond_0
    move-object p0, v0

    check-cast p0, Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method public static final getToastResIdThatNotEditIcon(Landroid/content/ComponentName;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "componentName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getAllShortcutLocation(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "componentNameKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " location = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BigIconUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 100
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    const/16 v2, 0x8

    if-ne v0, v1, :cond_1

    and-int/lit8 v3, p0, 0x8

    if-ne v3, v2, :cond_1

    const p0, 0x7f110179

    .line 105
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v0, v1, :cond_2

    const p0, 0x7f11017b

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_3

    const p0, 0x7f1101f5

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final goToThemePick(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 4

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.THEME_PICK_LARGEICON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.thememanager"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activityName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "isDualApp"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    iget p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string p1, "isDefault"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    const-string v1, "LauncherModeController.getCurrentMode()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "launcherModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final isSupportBigIcon()Z
    .locals 1

    .line 140
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_14:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteOrMiddleVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isSupportToLoadBigIcon()Z
    .locals 3

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->isSupportBigIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    const-string v2, "LauncherModeController.getCurrentMode()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getCloudBackUpOrReplacementPreKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->isCloudBackUpOrReplacement(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final makeMoveItemOperation(J)Landroid/content/ContentProviderOperation;
    .locals 2

    .line 438
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x1

    .line 439
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanY"

    .line 440
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, -0x1

    .line 441
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "iconType"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 444
    invoke-virtual {p1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 445
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    const-string p1, "ContentProviderOperation\u2026\n                .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 525
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bigIcon packageName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " iconSize = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " modeName = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " drawable ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    instance-of p1, p4, Lcom/miui/maml/LargeIconDrawable;

    if-eqz p1, :cond_0

    check-cast p4, Lcom/miui/maml/LargeIconDrawable;

    invoke-virtual {p4}, Lcom/miui/maml/LargeIconDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BigIconUtil"

    .line 525
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final showBigIconEntrance(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 8

    const-string v0, "support_largeicon"

    const-string v1, "packageName = "

    const-string v2, "BigIconUtil"

    const-string v3, "launcher"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "info"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->isSupportBigIcon()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    instance-of v3, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    .line 67
    move-object v5, v3

    check-cast v5, Landroid/content/ContentProviderClient;

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v6, "content://com.android.thememanager.theme_provider"

    .line 70
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 69
    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    if-nez v5, :cond_1

    const-string p0, "no theme_provider "

    .line 73
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 76
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "packageName"

    .line 77
    move-object v7, p1

    check-cast v7, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v7}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "activityName"

    .line 78
    move-object v7, p1

    check-cast v7, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v7}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v5, v0, v3, p0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 81
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " support_largeicon = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    return p0

    :cond_2
    :goto_0
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 86
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isSupportBigIcon = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v4

    :goto_2
    if-eqz v5, :cond_4

    .line 88
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    :cond_4
    throw p0

    :cond_5
    :goto_3
    return v4
.end method


# virtual methods
.method public final getResourceInUse()Ljava/lang/String;
    .locals 3

    .line 258
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 259
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 260
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    const-string v2, "LauncherModeController.getCurrentMode()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getResourceInDesktop()Lcom/google/gson/JsonArray;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    const-string v2, "desktop"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 262
    invoke-direct {p0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getResourceInDrawer()Lcom/google/gson/JsonArray;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonElement;

    const-string v1, "drawer"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 263
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "result.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
