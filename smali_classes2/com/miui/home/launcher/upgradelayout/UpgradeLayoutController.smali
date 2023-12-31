.class public Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;
.super Ljava/lang/Object;
.source "UpgradeLayoutController.java"


# static fields
.field private static CLOCK_PRODUCT_ID:Ljava/lang/String; = "\'d7b7cf12-29ab-4cd6-afe5-f006d5112d48\'"

.field private static ClOCK_PRODUCT_ID_ON_FOLD:Ljava/lang/String; = "\'b9884f60-2597-4e66-b94e-cffe97be3b69\'"

.field private static HEALTH_APPWIDGET_PROVIDER_2_1:Ljava/lang/String; = "\'com.mi.health/com.mi.health.exercise.widget.StepRingWidgetProvider_2_1\'"

.field private static MUSIC_APPWIDGET_PROVIDER:Ljava/lang/String; = "\'com.miui.player/com.miui.player.widget.MiuiHomeCapsuleWidget\'"

.field private static TAG:Ljava/lang/String; = "UpgradeLayoutController"

.field private static WEATHER_PRODUCT_ID:Ljava/lang/String; = "\'b8006e83-c497-4642-9815-f674b82842b0\'"

.field private static alignScreen:Ljava/lang/Boolean;

.field private static mScreenIds:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->alignScreen:Ljava/lang/Boolean;

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 32
    sput-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->mScreenIds:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fixUpgradeLayoutDataInDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete from favorites where product_id = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->CLOCK_PRODUCT_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete from favorites where appWidgetProvider = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->MUSIC_APPWIDGET_PROVIDER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->HEALTH_APPWIDGET_PROVIDER_2_1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static getSecondScreenId()J
    .locals 2

    .line 75
    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->mScreenIds:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private getTelephoneIconIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.contacts"

    aput-object v2, v6, v1

    const/16 v2, -0x65

    .line 83
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    const-string v3, "favorites"

    const/4 v4, 0x0

    const-string v5, "iconPackage = ? and container <> ?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 82
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 84
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "intent"

    .line 85
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 89
    :try_start_0
    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 91
    invoke-virtual {v4}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_1

    .line 93
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 94
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 96
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->printCursorInfo(Landroid/database/Cursor;Ljava/lang/String;)V

    :goto_2
    const-string v2, "com.android.contacts.activities.TwelveKeyDialer"

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_id"

    .line 99
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private insertTwoScreen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const-string v7, "screenOrder DESC"

    const-string v1, "screens"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 133
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 138
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string v1, "screens"

    const-string v2, "screenOrder"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    .line 140
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 142
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 144
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 143
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 154
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "screenType"

    .line 155
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    sget-object v6, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->mScreenIds:[J

    const/4 v7, 0x0

    invoke-static {p1, v1, v7, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    aput-wide v7, v6, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 160
    :catch_0
    :try_start_2
    sget-object p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->TAG:Ljava/lang/String;

    const-string v0, "insert screen error"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    .line 163
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :goto_3
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_3
    throw p1
.end method

.method public static isNeedAlignScreen()Z
    .locals 1

    .line 71
    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->alignScreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private printCursorInfo(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 3

    .line 107
    sget-object p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intentUri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\nmTitle "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "title"

    .line 108
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\ncellX "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "cellX"

    .line 109
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\ncellY "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "cellY"

    .line 110
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\ncontainerId "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "container"

    .line 111
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\nscreenId "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "screen"

    .line 112
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\nitemType "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "itemType"

    .line 113
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeClockAndWeatherWidget(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete from favorites where product_id = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->ClOCK_PRODUCT_ID_ON_FOLD:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    sget-object p0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "ares"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "delete from favorites where appWidgetId = 8 AND itemType =5"

    .line 119
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "delete from favorites where appWidgetId = 6 AND itemType =5"

    .line 123
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->WEATHER_PRODUCT_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static setAlignScreen(Z)V
    .locals 0

    .line 67
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->alignScreen:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public mergeLayoutData(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Landroid/appwidget/AppWidgetHost;)V
    .locals 9

    .line 35
    new-instance v0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;-><init>()V

    .line 37
    sget-object v1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->TAG:Ljava/lang/String;

    const-string v2, "merge layout data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->insertTwoScreen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->fixUpgradeLayoutDataInDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->removeClockAndWeatherWidget(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->getTelephoneIconIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v8

    .line 42
    new-instance p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;

    sget-object v7, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->mScreenIds:[J

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Landroid/appwidget/AppWidgetHost;[JLjava/util/List;)V

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemFactory;->getLayoutItemInfos()Ljava/util/List;

    move-result-object p2

    .line 44
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutNode;

    .line 45
    invoke-interface {p3, p0}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutNode;->parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V

    goto :goto_0

    .line 49
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->mScreenIds:[J

    const/4 p2, 0x0

    aget-wide v1, p0, p2

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_1

    .line 50
    aget-wide p2, p0, p2

    invoke-static {p2, p3}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    :cond_1
    const/4 p0, 0x1

    .line 54
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutController;->alignScreen:Ljava/lang/Boolean;

    .line 56
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutHelper;->updateRealScreen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
