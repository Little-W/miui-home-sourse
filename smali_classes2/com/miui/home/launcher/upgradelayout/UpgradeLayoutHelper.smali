.class public final Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;
.super Ljava/lang/Object;
.source "UpgradeLayoutHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpgradeLayoutHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpgradeLayoutHelper.kt\ncom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,126:1\n734#2:127\n825#2:128\n1711#2,3:129\n826#2:132\n1711#2,3:133\n*E\n*S KotlinDebug\n*F\n+ 1 UpgradeLayoutHelper.kt\ncom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper\n*L\n104#1:127\n104#1:128\n104#1,3:129\n104#1:132\n121#1,3:133\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper$Companion;


# instance fields
.field private folderManager:Lcom/miui/home/launcher/upgradelayout/UpgradeFolderManager;

.field private mFolderApps:Lcom/google/gson/JsonArray;

.field private mFolders:Lcom/google/gson/JsonArray;

.field private mScreens:Lcom/google/gson/JsonArray;

.field private mShortcuts:Lcom/google/gson/JsonArray;

.field private screenManager:Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;

.field private shortcutsManager:Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->Companion:Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final init()V
    .locals 1

    .line 46
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->mShortcuts:Lcom/google/gson/JsonArray;

    .line 47
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->mFolderApps:Lcom/google/gson/JsonArray;

    .line 48
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->mScreens:Lcom/google/gson/JsonArray;

    .line 49
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->mFolders:Lcom/google/gson/JsonArray;

    .line 50
    new-instance v0, Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->shortcutsManager:Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;

    .line 51
    new-instance v0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderManager;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->folderManager:Lcom/miui/home/launcher/upgradelayout/UpgradeFolderManager;

    .line 52
    new-instance v0, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->screenManager:Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;

    return-void
.end method

.method private final isNeedMoveItems(Lcom/google/gson/JsonArray;)Z
    .locals 4

    .line 120
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_4

    .line 121
    check-cast p1, Ljava/lang/Iterable;

    .line 133
    instance-of p0, p1, Ljava/util/Collection;

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move p0, v1

    goto :goto_1

    .line 134
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    const-string v2, "screen"

    .line 122
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "appCount"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    const-string v3, "screen.asJsonObject.get(\"appCount\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    const/16 v3, 0x8

    if-gt v2, v3, :cond_3

    .line 123
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v2, "hasWidgetOrBigFolder"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-string v2, "screen.asJsonObject.get(\"hasWidgetOrBigFolder\")"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p1

    if-nez p1, :cond_3

    move p1, v0

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    move p0, v0

    :goto_1
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0
.end method

.method private final isNotApp(I)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final removeEmptyFolder(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;)V
    .locals 10

    .line 104
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 128
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/gson/JsonElement;

    .line 105
    move-object v4, p3

    check-cast v4, Ljava/lang/Iterable;

    .line 129
    instance-of v5, v4, Ljava/util/Collection;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 130
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    const-string v8, "fold"

    .line 106
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    const-string v9, "fold.asJsonObject.get(\"id\")"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    const-string v9, "app"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    const-string v9, "container"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    const-string v9, "app.asJsonObject.get(\"container\")"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v5

    if-ne v8, v5, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v7

    :goto_1
    if-eqz v5, :cond_2

    move v7, v6

    :cond_4
    :goto_2
    xor-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_0

    .line 107
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 110
    iget-object p3, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->folderManager:Lcom/miui/home/launcher/upgradelayout/UpgradeFolderManager;

    if-nez p3, :cond_6

    const-string v0, "folderManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p3, p1, v1}, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderManager;->removeItem(Lcom/google/gson/JsonArray;Ljava/util/List;)V

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->shortcutsManager:Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;

    if-nez p1, :cond_7

    const-string p3, "shortcutsManager"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1, p2, v1}, Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;->removeItem(Lcom/google/gson/JsonArray;Ljava/util/List;)V

    .line 112
    iget-object p0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->screenManager:Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;

    if-nez p0, :cond_8

    const-string p1, "screenManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0, p4, v1}, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->removeItem(Lcom/google/gson/JsonArray;Ljava/util/List;)V

    return-void
.end method

.method private final updateAppsArray(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const-string v7, "shortcutsManager"

    const-string v8, "itemType"

    const-string v9, "container"

    const-string v10, "screen"

    const-string v11, "_id"

    if-eqz v1, :cond_9

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v22, 0x0

    .line 63
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    const-string v18, "screenManager"

    if-eqz v17, :cond_7

    .line 64
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 65
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 66
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 67
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 69
    iget-object v1, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->shortcutsManager:Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;

    if-nez v1, :cond_0

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/16 v24, -0x1

    const/16 v29, -0x1

    const/16 v30, 0x0

    move-object/from16 v23, v1

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v28, v4

    invoke-virtual/range {v23 .. v30}, Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;->createJsonObject(IIIIIIZ)Lcom/google/gson/JsonObject;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const/4 v1, 0x2

    if-eq v4, v1, :cond_2

    const/16 v1, 0x15

    if-ne v4, v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v1, v15

    goto :goto_3

    .line 71
    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->folderManager:Lcom/miui/home/launcher/upgradelayout/UpgradeFolderManager;

    if-nez v1, :cond_3

    const-string v17, "folderManager"

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const/16 v24, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v30, 0x0

    move-object/from16 v23, v1

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v29, v15

    invoke-virtual/range {v23 .. v30}, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderManager;->createJsonObject(IIIIIIZ)Lcom/google/gson/JsonObject;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v5, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :goto_3
    if-gez v14, :cond_4

    .line 76
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->isNotApp(I)Z

    move-result v4

    move/from16 v22, v4

    move v14, v13

    goto :goto_4

    :cond_4
    if-ne v13, v14, :cond_5

    .line 78
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->isNotApp(I)Z

    move-result v4

    add-int/lit8 v16, v16, 0x1

    move/from16 v22, v4

    goto :goto_4

    .line 81
    :cond_5
    iget-object v15, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->screenManager:Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;

    if-nez v15, :cond_6

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    const/16 v17, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v18, v14

    invoke-virtual/range {v15 .. v22}, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->createJsonObject(IIIIIIZ)Lcom/google/gson/JsonObject;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v6, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    move v14, v13

    const/16 v16, 0x1

    const/16 v22, 0x0

    :goto_4
    move-object/from16 v4, p4

    move v15, v1

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 88
    :cond_7
    iget-object v15, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->screenManager:Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;

    if-nez v15, :cond_8

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    const/16 v17, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v18, v14

    invoke-virtual/range {v15 .. v22}, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->createJsonObject(IIIIIIZ)Lcom/google/gson/JsonObject;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v6, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_9
    if-eqz v2, :cond_b

    .line 92
    :goto_5
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 93
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 94
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 95
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 96
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 97
    iget-object v12, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->shortcutsManager:Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;

    if-nez v12, :cond_a

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    const/4 v13, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    invoke-virtual/range {v12 .. v19}, Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;->createJsonObject(IIIIIIZ)Lcom/google/gson/JsonObject;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    move-object/from16 v4, p4

    invoke-virtual {v4, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_5

    :cond_b
    move-object/from16 v4, p4

    .line 100
    invoke-direct {v0, v5, v3, v4, v6}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->removeEmptyFolder(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;)V

    return-void
.end method

.method private final updateScreensData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->shortcutsManager:Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;

    const-string v1, "shortcutsManager"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;->queryItem(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->shortcutsManager:Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeShortcutsManager;->queryItemInFolder(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object p1

    .line 40
    iget-object v5, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->mShortcuts:Lcom/google/gson/JsonArray;

    if-nez v5, :cond_2

    const-string v1, "mShortcuts"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->mFolderApps:Lcom/google/gson/JsonArray;

    if-nez v6, :cond_3

    const-string v1, "mFolderApps"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v7, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->mFolders:Lcom/google/gson/JsonArray;

    if-nez v7, :cond_4

    const-string v1, "mFolders"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v8, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->mScreens:Lcom/google/gson/JsonArray;

    if-nez v8, :cond_5

    const-string v1, "mScreens"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->updateAppsArray(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;)V

    if-eqz v0, :cond_6

    .line 41
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz p1, :cond_7

    .line 42
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-void
.end method


# virtual methods
.method public final updateRealScreen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->init()V

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->updateScreensData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->mScreens:Lcom/google/gson/JsonArray;

    const-string v1, "mScreens"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->isNeedMoveItems(Lcom/google/gson/JsonArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->screenManager:Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;

    if-nez v0, :cond_1

    const-string v2, "screenManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->mScreens:Lcom/google/gson/JsonArray;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->mShortcuts:Lcom/google/gson/JsonArray;

    if-nez p0, :cond_3

    const-string v1, "mShortcuts"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v2, p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeScreenManager;->fillItemToLastScreen(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4
    return-void
.end method
