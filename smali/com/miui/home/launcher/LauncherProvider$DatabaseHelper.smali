.class public Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final mContentvalues:Landroid/content/ContentValues;

.field private static mSystemCreatedFolderTitles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mCreatedFirstTime:Z

.field private mDatabaseReady:Z

.field private mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mPresetsContainerId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 734
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 739
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x34

    .line 738
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 730
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 731
    iput-wide v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    const/4 v0, 0x1

    .line 732
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    const/4 v0, 0x0

    .line 733
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mCreatedFirstTime:Z

    .line 741
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 742
    new-instance v4, Landroid/appwidget/AppWidgetHost;

    const/16 v5, 0x400

    invoke-direct {v4, p1, v5}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    move v4, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 747
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "Launcher.LauncherProvider"

    const-string v7, "get writable database fail"

    .line 749
    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v5, 0x32

    .line 750
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    .line 753
    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    goto :goto_0

    .line 759
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isDatabaseLegal(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 760
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->fixFavoritesTableIfNeed(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 761
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->tryRemoveDupIdRows(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 762
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_3

    .line 763
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 766
    :cond_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;I)V
    .locals 0

    .line 724
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpDefaultWorkspace(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 0

    .line 724
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryPackageNameByItemType(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 2

    if-eqz p6, :cond_0

    .line 2576
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2578
    :cond_0
    invoke-static {p4, p5, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getAppShortcutActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "Launcher.LauncherProvider"

    .line 2580
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Unable to add favorite: "

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "/"

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->canAutoInstall(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2583
    invoke-static {p0, p1, p4}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAutoInstallShortcutInfo(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0

    .line 2587
    :cond_2
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p5

    const-string p6, "Launcher.LauncherProvider"

    .line 2588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add favorite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p6, "title"

    .line 2589
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p5

    .line 2592
    :goto_0
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10200000

    .line 2593
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "intent"

    const/4 p5, 0x0

    .line 2595
    invoke-virtual {p3, p5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "itemType"

    .line 2596
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "iconPackage"

    .line 2597
    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "spanX"

    const/4 p3, 0x1

    .line 2598
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanY"

    .line 2599
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "favorites"

    const/4 p3, 0x0

    .line 2600
    invoke-static {p0, p2, p3, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V
    .locals 6

    .line 2127
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2128
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v1, "container"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-ltz p5, :cond_0

    .line 2130
    sget-object p3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string p4, "cellX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2131
    :cond_0
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 9

    if-eqz p3, :cond_0

    const/16 v0, 0xc

    .line 2560
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 2561
    :cond_0
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 2562
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    .line 2563
    :cond_1
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_1
    const/4 v8, 0x0

    if-eqz p3, :cond_2

    const/16 v1, 0xf

    .line 2564
    invoke-virtual {p3, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_2

    move v7, v0

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    .line 2565
    invoke-static/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-ltz p1, :cond_3

    return v0

    :cond_3
    return v8
.end method

.method private static addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)J
    .locals 0

    :try_start_0
    const-string p5, "itemType"

    const/4 p6, 0x4

    .line 2733
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p1, p5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p5, "spanX"

    .line 2734
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanY"

    .line 2735
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "appWidgetId"

    const/4 p4, -0x1

    .line 2736
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "appWidgetProvider"

    .line 2737
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "favorites"

    const/4 p4, 0x0

    .line 2738
    invoke-static {p0, p3, p4, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    const-string p3, "Launcher.LauncherProvider"

    .line 2739
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "addAppWidget "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "Problem allocating appWidgetId"

    .line 2742
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/os/Bundle;)J
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 2706
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2708
    :try_start_0
    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v5

    goto :goto_0

    .line 2710
    :catch_0
    new-array v5, v6, [Ljava/lang/String;

    aput-object v0, v5, v7

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2712
    new-instance v5, Landroid/content/ComponentName;

    aget-object v0, v0, v7

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    :try_start_1
    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v5

    goto :goto_0

    :catch_1
    move-object v9, v5

    move v6, v7

    :goto_0
    if-eqz v6, :cond_1

    move-object v7, p0

    move-object v8, p1

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    .line 2721
    invoke-static/range {v7 .. v13}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide v0

    return-wide v0

    .line 2723
    :cond_1
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v13, 0x0

    move-object v7, p0

    move-object v8, p1

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    .line 2724
    invoke-static/range {v7 .. v13}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v3

    :cond_3
    :goto_1
    return-wide v3
.end method

.method private static addAutoInstallShortcutInfo(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 6

    .line 2604
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2605
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 2606
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "invalidClassName"

    invoke-direct {v2, p2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10200000

    .line 2608
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    const/4 v4, 0x0

    .line 2610
    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    .line 2611
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v2

    invoke-virtual {v2, p2, v3}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemType"

    const/16 v2, 0xb

    .line 2612
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "iconPackage"

    .line 2613
    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iconType"

    const/4 v4, 0x4

    .line 2614
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "itemFlags"

    const/16 v4, 0x10

    .line 2615
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "iconResource"

    .line 2616
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "spanX"

    const/4 v4, 0x1

    .line 2617
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanY"

    .line 2618
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2619
    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    const-string v1, "com.miui.core"

    invoke-virtual {v0, p2, v2, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->recordProgressInfo(Ljava/lang/String;ILjava/lang/String;)V

    const-string p2, "favorites"

    .line 2620
    invoke-static {p0, p2, v3, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addClock1x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x7

    .line 2679
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addClock2x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x6

    .line 2683
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addClock3x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/16 v0, 0x8

    .line 2687
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 2

    const-string v0, "com.miui.home:string/default_folder_title_claro"

    .line 2525
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MX"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "title"

    const-string v0, "com.miui.home:string/default_folder_title_telcel"

    .line 2526
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "label"

    const-string v0, "com.miui.home:string/default_folder_title_telcel"

    .line 2527
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 2529
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "label"

    .line 2530
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p2, "itemType"

    const/4 v0, 0x2

    .line 2532
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanX"

    const/4 v0, 0x1

    .line 2533
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanY"

    .line 2534
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "favorites"

    const/4 v0, 0x0

    .line 2535
    invoke-static {p0, p2, v0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addGoogleOriginalSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;IILandroid/appwidget/AppWidgetHost;)J
    .locals 7

    .line 2663
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v5

    .line 2664
    new-instance v2, Landroid/content/ComponentName;

    const-string v0, "com.google.android.googlequicksearchbox"

    const-string v1, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    invoke-static {v5, v2}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isProviderAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-gtz p2, :cond_0

    .line 2667
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p2

    :cond_0
    move v3, p2

    if-gtz p3, :cond_1

    const/4 p3, 0x1

    :cond_1
    move v4, p3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    .line 2669
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide p0

    return-wide p0

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static addMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 2

    if-eqz p2, :cond_0

    .line 2540
    new-instance v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(Landroid/net/Uri;)V

    .line 2542
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->loadMtzGadget()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "spanX"

    .line 2543
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanY"

    .line 2544
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "itemType"

    .line 2545
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "appWidgetId"

    .line 2546
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p2, "uri"

    .line 2547
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "favorites"

    const/4 v0, 0x0

    .line 2548
    invoke-static {p0, p2, v0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 2551
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J
    .locals 3

    .line 2691
    invoke-static {p2}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    const-string v1, "spanX"

    .line 2692
    iget v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanY"

    .line 2693
    iget v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "itemType"

    const/4 v1, 0x5

    .line 2694
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "appWidgetId"

    .line 2695
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "favorites"

    const/4 v0, 0x0

    .line 2696
    invoke-static {p0, p2, v0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x3

    .line 2675
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private addShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2786
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2787
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "iconType"

    .line 2788
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "iconResource"

    .line 2789
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "iconPackage"

    const/16 v4, 0x3a

    .line 2790
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "container"

    .line 2791
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    invoke-virtual {v2, p2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "cellX"

    .line 2792
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {v2, p2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "cellY"

    .line 2793
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {v2, p2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanX"

    const/4 p7, 0x1

    .line 2794
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    invoke-virtual {v2, p2, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanY"

    .line 2795
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    invoke-virtual {v2, p2, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2796
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2797
    invoke-virtual {v1, p4, p5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10200000

    .line 2798
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "android.intent.category.DEFAULT"

    .line 2800
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "intent"

    .line 2801
    invoke-virtual {v1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "title"

    .line 2802
    invoke-virtual {v2, p2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "itemType"

    .line 2803
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "iconType"

    .line 2804
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "favorites"

    const/4 p3, 0x0

    .line 2805
    invoke-static {p1, p2, p3, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return p7
.end method

.method public static addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 4

    const-wide/16 v0, -0x1

    if-nez p4, :cond_0

    return-wide v0

    .line 2754
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    return-wide v0

    .line 2757
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "iconType"

    const/4 v2, 0x0

    .line 2758
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "iconResource"

    .line 2759
    invoke-virtual {p1, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "iconPackage"

    .line 2760
    invoke-virtual {p1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "spanX"

    const/4 p5, 0x1

    .line 2761
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "spanY"

    .line 2762
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2763
    invoke-virtual {v0, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2764
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 2765
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p8, :cond_3

    .line 2768
    invoke-static {p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_3
    const-string p2, "android.intent.category.DEFAULT"

    .line 2770
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "intent"

    .line 2771
    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "title"

    .line 2772
    invoke-virtual {p1, p2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "itemType"

    .line 2773
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "iconType"

    .line 2774
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p9, :cond_4

    const-string p2, "isShortcut"

    .line 2776
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    const-string p2, "favorites"

    const/4 p3, 0x0

    .line 2778
    invoke-static {p0, p2, p3, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private createFavoritesTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_item;"

    .line 1136
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER update_item_on_update_item  AFTER UPDATE of container ON favorites  WHEN (new.itemType == 0 OR new.itemType == 1) AND (new.container > 0) BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | (SELECT ((itemFlags>>1)&1) from favorites where _id==new.container))     WHERE _id==new._id;  END"

    .line 1137
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_home;"

    .line 1139
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER update_item_on_update_home  AFTER UPDATE of container ON favorites  WHEN (new.itemType == 0 OR new.itemType == 1) AND (new.container <= 0) BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | 0)     WHERE _id==new._id;  END"

    .line 1140
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_folder;"

    .line 1142
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER update_item_on_update_folder  AFTER UPDATE of itemFlags ON favorites  WHEN new.itemType == 2  BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | ((new.itemFlags>>1)&1))      WHERE container==new._id;  END"

    .line 1143
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22

    move-object/from16 v9, p1

    const-string v0, "DROP TABLE IF EXISTS screens"

    .line 1147
    invoke-static {v9, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE screens (_id INTEGER PRIMARY KEY,title TEXT,screenOrder INTEGER NOT NULL DEFAULT -1,screenType INTEGER NOT NULL DEFAULT 0);"

    .line 1149
    invoke-static {v9, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v2, "favorites"

    const-string v0, "MAX(screen)"

    .line 1157
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 1163
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v11, 0x0

    .line 1164
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v12, 0x1

    add-int/lit8 v13, v0, 0x1

    .line 1165
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1166
    new-array v15, v13, [J

    move-object/from16 v8, p0

    .line 1167
    iget-object v0, v8, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0033

    .line 1168
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    move v7, v0

    :goto_0
    const-wide/16 v16, -0x1

    if-ge v7, v13, :cond_9

    .line 1169
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    const-string v0, "screenOrder"

    .line 1170
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1174
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    const-string v2, "favorites"

    const-string v0, "COUNT()"

    .line 1176
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spanX+spanY>2 AND screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, -0x64

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v0, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move v12, v5

    move-object v5, v0

    move-object/from16 v6, v18

    move v11, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    :try_start_2
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string v2, "favorites"

    const-string v0, "COUNT()"

    .line 1180
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spanX=1 AND spanY=1 AND screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "itemType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p1

    move-object v12, v8

    move-object v8, v0

    :try_start_4
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1185
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v1, 0x0

    .line 1186
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1187
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1188
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_0

    .line 1197
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v6, :cond_5

    .line 1200
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v21, v6

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v6, v12

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v12, v8

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v12, v8

    :goto_1
    move-object v6, v12

    const/4 v1, 0x0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    const/4 v12, 0x0

    :goto_2
    const/16 v21, 0x0

    goto :goto_5

    :catch_4
    move-exception v0

    move v11, v7

    :goto_3
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_4
    :try_start_7
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "createScreensTable fail"

    .line 1193
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v6, :cond_1

    .line 1197
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_5

    .line 1200
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v21, v1

    move-object v12, v6

    :goto_5
    if-eqz v12, :cond_2

    .line 1197
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v21, :cond_3

    .line 1200
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1202
    :cond_3
    throw v0

    :cond_4
    move v11, v7

    .line 1204
    :cond_5
    :goto_6
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    if-nez v11, :cond_7

    .line 1205
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isShowQuickCallCellLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto :goto_7

    :cond_6
    move v0, v1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    if-ne v0, v1, :cond_8

    .line 1212
    aput-wide v16, v15, v11

    goto :goto_8

    :cond_8
    const-string v1, "screenType"

    .line 1214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "screens"

    const/4 v2, 0x0

    .line 1215
    invoke-static {v9, v1, v2, v14}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    aput-wide v1, v15, v11

    :goto_8
    const-string v1, "Launcher.LauncherProvider"

    .line 1217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createScreensTable, ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v15, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v11, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    goto/16 :goto_0

    :cond_9
    move v1, v12

    sub-int/2addr v13, v1

    :goto_9
    if-ltz v13, :cond_c

    .line 1220
    aget-wide v0, v15, v13

    cmp-long v2, v0, v16

    if-nez v2, :cond_a

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto :goto_a

    .line 1222
    :cond_a
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    const-string v2, "screen"

    .line 1223
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "favorites"

    const-string v1, "screen=?"

    const/4 v2, 0x1

    .line 1224
    new-array v3, v2, [Ljava/lang/String;

    .line 1228
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1224
    invoke-static {v9, v0, v14, v1, v3}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :goto_a
    add-int/lit8 v13, v13, -0x1

    goto :goto_9

    :catchall_5
    move-exception v0

    if-eqz v10, :cond_b

    .line 1233
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1235
    :cond_b
    throw v0

    :cond_c
    if-eqz v10, :cond_d

    .line 1233
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_d
    return-void
.end method

.method private deleteClockBack()V
    .locals 5

    .line 1994
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "clock_bak"

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1995
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1996
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1997
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 1998
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1999
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2002
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private deleteEmptyScreen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "screens"

    const-string v1, "_id"

    const-string v3, "screenType"

    .line 2010
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2012
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2013
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2014
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "_id"

    .line 2015
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "screenType"

    .line 2016
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2017
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2018
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2019
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2020
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2021
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2023
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2024
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2027
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v5, "favorites"

    const-string v1, "screen"

    .line 2030
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2032
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 2033
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2034
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2035
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2038
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2041
    :try_start_4
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2042
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2043
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2044
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2045
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2050
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2051
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v0

    :cond_6
    :goto_3
    :try_start_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v7, "screens"

    const-string v4, "screenOrder"

    .line 2052
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2055
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2056
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v6, "screens"

    .line 2057
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v6, v3, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2058
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE screens SET screenOrder=screenOrder-1 WHERE screenOrder>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    .line 2066
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v1, v0

    :goto_5
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2068
    :cond_a
    throw p1
.end method

.method private dumpDefaultWorkspace(I)V
    .locals 3

    .line 2403
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2404
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2405
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2404
    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpDefaultWorkspaceImpl(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2406
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v0, "dump default workspace succeeded."

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private dumpDefaultWorkspaceImpl(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2418
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 2419
    new-instance v3, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;

    invoke-direct {v3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;-><init>()V

    .line 2420
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "utf-8"

    .line 2421
    invoke-virtual {v3, v4, p2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2422
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v3, v1, p2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p2, "favorites"

    .line 2423
    invoke-virtual {v3, v1, p2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p2, "xmlns:launcher"

    const-string v2, "http://schemas.android.com/apk/res-auto"

    .line 2424
    invoke-virtual {v3, v1, p2, v2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p2, "default"

    .line 2425
    invoke-virtual {v3, v1, p2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p2, "launcher"

    const-string v2, "screen"

    .line 2426
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p2, v2, p3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p2, "default"

    .line 2427
    invoke-virtual {v3, v1, p2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2429
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 2430
    invoke-static {p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p3, "SELECT * FROM favorites WHERE itemType=2 ORDER BY screen ASC, cellY ASC, cellX ASC"

    .line 2431
    invoke-virtual {p1, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2435
    :goto_0
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "folder"

    .line 2436
    invoke-virtual {v3, v1, v2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "_id"

    .line 2437
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v5, v2

    .line 2438
    iget-wide v7, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    const-string v2, "launcher"

    const-string v5, "presets_container"

    const-string v6, "true"

    .line 2439
    invoke-virtual {v3, v2, v5, v6}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v2, "launcher"

    const-string v5, "title"

    const-string v6, "title"

    .line 2441
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v5, v6}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "launcher"

    .line 2442
    invoke-direct {p0, p3, v3, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V

    const-string v2, "folder"

    .line 2443
    invoke-virtual {v3, v1, v2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2445
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string p3, "SELECT * FROM favorites WHERE itemType!=2 ORDER BY screen ASC, cellY ASC, cellX ASC"

    .line 2448
    invoke-virtual {p1, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2452
    :goto_1
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_a

    const-string p3, "itemType"

    .line 2453
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v2, 0x5

    if-eq p3, v2, :cond_2

    packed-switch p3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v5, "shortcut"

    goto :goto_3

    :pswitch_1
    const-string v5, "favorite"

    goto :goto_3

    :cond_2
    const-string v5, "appWidgetId"

    .line 2464
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    const-string v5, "search"

    goto :goto_3

    :cond_3
    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    const-string v5, "clock2x4"

    goto :goto_3

    :cond_4
    :goto_2
    move-object v5, v1

    :goto_3
    if-nez v5, :cond_5

    goto :goto_1

    .line 2475
    :cond_5
    invoke-virtual {v3, v1, v5}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eq p3, p2, :cond_7

    if-nez p3, :cond_6

    goto :goto_4

    :cond_6
    if-ne p3, v2, :cond_9

    const-string p3, "launcher"

    .line 2495
    invoke-direct {p0, p1, v3, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    :goto_4
    const-string v2, "intent"

    .line 2477
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2478
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_9

    const-string v6, "launcher"

    const-string v7, "packageName"

    .line 2479
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "launcher"

    const-string v7, "className"

    .line 2480
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2481
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/home/launcher/LauncherSettings;->isRetainedPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "launcher"

    const-string v7, "retained"

    const-string v8, "true"

    .line 2482
    invoke-virtual {v3, v6, v7, v8}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    const-string v6, "launcher"

    .line 2484
    invoke-direct {p0, p1, v3, v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V

    if-ne p3, p2, :cond_9

    const-string p3, "launcher"

    const-string v6, "title"

    const-string v7, "title"

    .line 2486
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p3, v6, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p3, "launcher"

    const-string v6, "action"

    .line 2487
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p3, v6, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p3, "launcher"

    const-string v6, "iconResource"

    const-string v7, "iconResource"

    .line 2488
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p3, v6, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2489
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_9

    const-string p3, "launcher"

    const-string/jumbo v6, "uri"

    .line 2490
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p3, v6, v2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2497
    :cond_9
    :goto_5
    invoke-virtual {v3, v1, v5}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    :cond_a
    const-string p3, "favorites"

    .line 2499
    invoke-virtual {v3, v1, p3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2500
    invoke-virtual {v3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endDocument()V

    .line 2501
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_b

    .line 2507
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_b
    return p2

    :catchall_0
    move-exception p2

    goto :goto_7

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object p2, p1

    move-object p1, p3

    goto :goto_7

    :catch_1
    move-exception p1

    move-object p2, p1

    move-object v1, p3

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    goto :goto_7

    :catch_2
    move-exception p1

    move-object p2, p1

    .line 2504
    :goto_6
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_c

    .line 2507
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    return v0

    :goto_7
    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2509
    :cond_d
    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "container"

    .line 2514
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const-string v0, "screen"

    const-string v1, "screen"

    .line 2516
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    const-string v1, "container"

    .line 2518
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v1, v0}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    const-string/jumbo v0, "x"

    const-string v1, "cellX"

    .line 2520
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "y"

    const-string v1, "cellY"

    .line 2521
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static fillSerialNumber(Landroid/content/ContentValues;)V
    .locals 3

    .line 2393
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    .line 2394
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    const-string v2, "profileId"

    .line 2395
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private fixFavoritesTableIfNeed(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 804
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Launcher.LauncherProvider"

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db is not integrity, try fix table favorites, beginTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "create table favorites2 as select * from favorites;"

    .line 806
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "DROP TABLE favorites;"

    .line 807
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE favorites2 RENAME TO favorites;"

    .line 808
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p1, "Launcher.LauncherProvider"

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixFavoritesTableIfNeed, endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Launcher.LauncherProvider"

    const-string v0, "db is integrity"

    .line 811
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static getAppShortcutActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/LauncherActivityInfo;
    .locals 5

    .line 2624
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2626
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 2628
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 2629
    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2631
    aget-object v2, p2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "Launcher.LauncherProvider"

    .line 2632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find launcherActivityInfoList with pkg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", try use pkg="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p2, v3

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p0

    aget-object p2, p2, v3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    :cond_1
    const-string p2, "Launcher.LauncherProvider"

    .line 2638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find launcherActivityInfoList with pkg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 2643
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    .line 2644
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "Launcher.LauncherProvider"

    .line 2645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find LauncherActivityInfo with className="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    goto :goto_1

    :cond_4
    if-nez v1, :cond_6

    const-string p0, "Launcher.LauncherProvider"

    const-string p1, "find LauncherActivityInfo in launcherActivityInfoList[0]"

    .line 2651
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    goto :goto_2

    :cond_5
    const-string p0, "Launcher.LauncherProvider"

    const-string p1, "not find launcherActivityInfoList at last"

    .line 2655
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-object v1
.end method

.method private getApplicationInDb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .line 928
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v2, "favorites"

    const-string v1, "intent"

    const-string v3, "profileId"

    .line 929
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 936
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 937
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 938
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 940
    :cond_0
    :try_start_0
    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 943
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 946
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v2

    .line 947
    new-instance v3, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v3, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "moveUnsetPositionToOtherAppsFolder"

    .line 949
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getItemCountInDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, -0x1

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    .line 833
    :try_start_0
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 834
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 835
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v10, :cond_2

    .line 840
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 842
    :cond_1
    throw v0

    :catch_0
    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static getLocalLayoutSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1117
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 1118
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1119
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x2

    .line 1120
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v3, v4, :cond_0

    const-string v3, "folder"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1121
    sget-object v3, Lcom/miui/home/R$styleable;->Favorite:[I

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v4, 0x13

    .line 1122
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1123
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1124
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1130
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    const-string p0, "Launcher.LauncherProvider"

    const-string v1, "getLocalLayoutSystemCreatedFolderTitles, error when get parser"

    .line 1128
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static getRemoteLayoutSystemCreatedFolderTitles(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1110
    invoke-virtual {p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getRemoteLayoutSystemCreatedFolderTitles()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1093
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1094
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/AutoInstallsLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getRemoteLayoutSystemCreatedFolderTitles(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    .line 1095
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1096
    sget-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    return-object p0

    .line 1099
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/install/OthersInRomConfigParser;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/OthersInRomConfigParser;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getRemoteLayoutSystemCreatedFolderTitles(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    .line 1100
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1101
    sget-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    return-object p0

    .line 1104
    :cond_2
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getLocalLayoutSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    .line 1106
    :cond_3
    sget-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    return-object p0
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "SELECT MAX(_id) FROM favorites"

    const/4 v1, 0x0

    .line 2288
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    .line 2293
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 2294
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2297
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 2303
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    .line 2301
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error: could not query max id"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private insertAppToFolder(JLcom/miui/home/launcher/util/ComponentKey;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;)Z
    .locals 8

    .line 913
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "cellX"

    .line 914
    invoke-static {p4, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellY"

    const/4 v7, 0x0

    .line 915
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "screen"

    const/4 v2, -0x1

    .line 916
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "container"

    .line 917
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 918
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    .line 919
    iget-object p2, p3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    if-eqz p2, :cond_0

    iget-object p2, p3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p1

    const-string v0, "profileId"

    .line 920
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 921
    new-instance v3, Landroid/content/Intent;

    const-string p1, "android.intent.action.MAIN"

    const/4 p2, 0x0

    invoke-direct {v3, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.category.LAUNCHER"

    .line 922
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    iget-object p1, p3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 924
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p4

    move-object v2, p5

    .line 923
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-lez p1, :cond_1

    const/4 v7, 0x1

    :cond_1
    return v7
.end method

.method private insertShortcutAppToFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/LauncherProvider;)Z
    .locals 9

    .line 908
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v1, p3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v2, p3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2, p4}, Lcom/miui/home/launcher/AllAppsList;->getFolderIdByAppCategory(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherProvider;)J

    move-result-wide v4

    const-wide/16 v0, -0x1

    cmp-long p4, v4, v0

    if-eqz p4, :cond_0

    move-object v3, p0

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    .line 909
    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->insertAppToFolder(JLcom/miui/home/launcher/util/ComponentKey;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDatabaseLegal(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8

    const-string v0, "favorites"

    .line 817
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "screens"

    .line 818
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "screens"

    const-string v0, "count(*)"

    .line 821
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getItemCountInDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public static isSystemDefaultFolder(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1089
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 850
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select count(*) from sqlite_master where type=\'table\' and name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 852
    invoke-virtual {v1, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 853
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 854
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p1, :cond_2

    .line 859
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 861
    :cond_1
    throw p2

    :catch_0
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static synthetic lambda$onUpgrade$0(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1917
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1918
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1919
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1920
    invoke-static {p1, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateDefaultFolderLabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "updateDefaultFolderLabel fail"

    .line 1924
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static synthetic lambda$onUpgrade$1(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "update folder label exception"

    .line 1926
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private loadDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 3

    .line 889
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isXLargeMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 891
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 893
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 898
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 899
    invoke-static {p2}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 900
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->moveUnsetPositionToOtherAppsFolder(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V

    .line 902
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 903
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->updateRomPreintallAppsPositionInDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 904
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 4

    const-string v0, "DROP TABLE IF EXISTS favorites"

    .line 2312
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,launchCount TEXT,sortMode INTEGER,itemFlags INTEGER NOT NULL DEFAULT 0,profileId INTEGER NOT NULL DEFAULT 0,label STRING,appWidgetProvider STRING,originWidgetId INTEGER NOT NULL DEFAULT -1,product_id STRING);"

    .line 2313
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2343
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->get(Landroid/content/Context;)Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2344
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isInWorkManagedMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2345
    invoke-virtual {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->loadConfig()V

    .line 2348
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/AutoInstallsLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2353
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mi/preinstall/AutoInstallParserHelp;->copyPAIToSystem(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Error copy pai files"

    .line 2355
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2357
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseRemote(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2362
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/install/OthersInRomConfigParser;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/OthersInRomConfigParser;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseRemote(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 2366
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseDefaultLayout(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method private moveAppToDefaultFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Landroid/content/pm/PackageManager;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .line 956
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    .line 958
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getApplicationInDb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    move-result-object v1

    .line 959
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 960
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/util/ComponentKey;

    .line 961
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 962
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/AllAppsList;->getAppFilter()Lcom/miui/home/launcher/AppFilter;

    move-result-object v4

    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 963
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherHideApp;->isHideApp(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 964
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v4, v5, v6}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 965
    invoke-direct {p0, p1, p3, v3, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->insertShortcutAppToFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/LauncherProvider;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 966
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private moveUnsetPositionToOtherAppsFolder(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 11

    const-string v0, "com.miui.home:string/default_folder_title_other_apps"

    .line 973
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "have NO other app folder in db"

    .line 975
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 980
    invoke-interface {p2}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->moveAppToDefaultFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Landroid/content/pm/PackageManager;)Ljava/util/Set;

    move-result-object p2

    .line 982
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 983
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->getElderlyManTopLikeAppsList(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    .line 984
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/miui/home/launcher/util/ComponentKey;

    .line 985
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p0

    move-wide v2, v7

    move-object v4, v10

    move-object v5, p1

    move-object v6, v0

    .line 986
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->insertAppToFolder(JLcom/miui/home/launcher/util/ComponentKey;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;)Z

    const-string v1, "Launcher.LauncherProvider"

    .line 987
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "move app("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") to other folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "Launcher.LauncherProvider"

    .line 989
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keep old man like app("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private parseDefaultLayout(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 4

    .line 2380
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result p2

    const-string v0, "Launcher.LauncherProvider"

    .line 2381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse default workspace name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    :try_start_0
    new-instance v0, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;

    invoke-direct {v0}, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;-><init>()V

    .line 2384
    new-instance v1, Lcom/miui/home/launcher/defaultlayout/DefaultContext;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;-><init>(Landroid/database/sqlite/SQLiteDatabase;ILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)V

    .line 2385
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 2386
    invoke-virtual {v1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher.LauncherProvider"

    const-string v0, "Got exception parsing favorites."

    .line 2388
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private parseRemote(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2371
    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    const-string p1, "delete from favorites"

    .line 2374
    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private queryDupColumnCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 773
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "count(*) > 1"

    const/4 v8, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 779
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 785
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return p1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "Launcher.LauncherProvider"

    const-string v1, "queryDupColumnCount error"

    .line 782
    invoke-static {p2, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 785
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p1, 0x0

    return p1

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 787
    :cond_3
    throw p1
.end method

.method public static queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I
    .locals 3

    const/4 v0, 0x0

    .line 2093
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select COUNT(\'_id\') from favorites where container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2095
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 2096
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :cond_1
    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2103
    :cond_2
    throw p0

    :catch_0
    if-eqz v0, :cond_3

    .line 2101
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method static queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2215
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2217
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2218
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2222
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2225
    :cond_2
    throw p0
.end method

.method public static queryIdByLabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2197
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "label=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2199
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2200
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2204
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2207
    :cond_2
    throw p0
.end method

.method static queryIdByPackageName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2233
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent like \'%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2236
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2237
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2244
    :cond_2
    throw p0
.end method

.method public static queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2179
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "title=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2181
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2182
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2186
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2189
    :cond_2
    throw p0
.end method

.method public static queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 2

    .line 2108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";end"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static queryItemInFolder(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    .locals 11

    .line 2072
    invoke-static {p0, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    :try_start_0
    const-string v4, "favorites"

    const-string p3, "_id"

    .line 2076
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "container"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2078
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    if-eqz v2, :cond_0

    .line 2084
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2086
    :cond_1
    throw p0

    :cond_2
    if-eqz v2, :cond_3

    .line 2084
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private queryPackageNameByItemType(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "favorites"

    const-string v2, "intent"

    .line 2813
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "itemType=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 2814
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v10, 0x0

    aput-object p2, v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 2813
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 2815
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "intent"

    .line 2816
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2817
    invoke-static {p1, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2818
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2819
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "pkgName"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2820
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2821
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2826
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 2829
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2832
    :cond_3
    throw p1
.end method

.method static removeSkippedItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .line 2114
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->getAppFilter()Lcom/miui/home/launcher/AppFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppFilter;->getSkipedList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";end"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2115
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const-string v3, "favorites"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    .line 2119
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 2120
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 2119
    invoke-static {p0, v3, v4, v5}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .line 876
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 877
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static setDefaultScreen(J)V
    .locals 0

    .line 2399
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    return-void
.end method

.method private tryRemoveDupIdRows(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "_id"

    .line 792
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryDupColumnCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Launcher.LauncherProvider"

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryRemoveDupIdRows, dupIdCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    const-string v0, "create table dupFavorites as select * from favorites;"

    .line 795
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "delete from favorites where _id in (select _id from favorites GROUP by _id HAVING count(_id) > 1);"

    .line 796
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "insert into favorites SELECT * FROM dupFavorites GROUP by _id HAVING count(_id) > 1;"

    .line 797
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "DROP TABLE dupFavorites;"

    .line 798
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    const-string p1, "Launcher.LauncherProvider"

    const-string v0, "after tryRemoveDupIdRows"

    .line 800
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static updateDefaultFolderLabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 6

    .line 2144
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2146
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 2147
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v3, "label"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "favorites"

    .line 2148
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2149
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 2148
    invoke-static {p0, p1, v2, v3, v4}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V
    .locals 2

    .line 2136
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2137
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v1, "container"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2138
    sget-object p3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string p4, "cellX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "favorites"

    .line 2139
    sget-object p4, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string p5, "_id=?"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 2140
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 2139
    invoke-static {p0, p3, p4, p5, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static updateSettingIconToToggle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE favorites SET intent = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', iconType = \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\', iconPackage = \'\' , label = \'\' WHERE intent= \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\';"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2172
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method static upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 5

    .line 2154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10200000

    .line 2155
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 2157
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2158
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE favorites SET intent=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2160
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',iconPackage=\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2163
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' WHERE intent=\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\';"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2165
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createdFirstTime()Z
    .locals 1

    .line 996
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mCreatedFirstTime:Z

    return v0
.end method

.method public generateNewId()J
    .locals 4

    .line 2280
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 2284
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    .line 2281
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPreferenceValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDatabaseReady()Z
    .locals 1

    .line 866
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    return v0
.end method

.method public loadDefaultWorkspace(Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 4

    const/4 v0, 0x1

    .line 1000
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mCreatedFirstTime:Z

    .line 1001
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "database_ready_pref_key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1002
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1003
    invoke-direct {p0, v1, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V

    .line 1004
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    .line 1005
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string p2, "database_ready_pref_key"

    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1006
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string p2, "home_data_create_time_key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string p1, "Launcher.LauncherProvider"

    const-string v0, "creating new launcher database"

    .line 882
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/4 p1, 0x0

    .line 884
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/16 v0, 0xb

    if-lt p3, v0, :cond_0

    return-void

    .line 2276
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 29

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "onUpgrade triggered"

    .line 1240
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    new-instance v14, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v15, 0x0

    invoke-direct {v14, v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 1247
    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1248
    iget-object v0, v12, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const/16 v0, 0x9

    move/from16 v1, p2

    if-ge v1, v0, :cond_0

    .line 1250
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    move v1, v0

    :cond_0
    const/16 v2, 0xa

    if-ne v1, v0, :cond_1

    const-string v0, "ALTER TABLE favorites ADD COLUMN launchCount INTEGER NOT NULL DEFAULT 1"

    .line 1255
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE favorites ADD COLUMN sortMode INTEGER"

    .line 1257
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move v1, v2

    :cond_1
    const/16 v0, 0xb

    if-ne v1, v2, :cond_2

    const-string v1, "ALTER TABLE favorites ADD COLUMN itemFlags INTEGER NOT NULL DEFAULT 0"

    .line 1263
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move v1, v0

    :cond_2
    const/16 v2, 0xc

    if-ne v1, v0, :cond_3

    const-string v0, "UPDATE favorites SET title=\'com.miui.home:string/default_folder_title_tools\' WHERE title=\'com.android.launcher:string/default_folder_title_tools\';"

    .line 1269
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "UPDATE favorites SET title=\'com.miui.home:string/default_folder_title_recommend\' WHERE title=\'com.android.launcher:string/default_folder_title_recommend\';"

    .line 1272
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "com.miui.camera/.Camera"

    .line 1277
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.camera/.Camera"

    .line 1278
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1276
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.android.gallery/.ui.MainActivity"

    .line 1281
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.gallery/.app.Gallery"

    .line 1282
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1280
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.miui.player/.drawerActivityGroup.MainActivityGroup"

    .line 1285
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.player/.ui.MusicBrowserActivity"

    .line 1286
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1284
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.android.settings/.Settings"

    .line 1289
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.settings/.MiuiSettings"

    .line 1290
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1288
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.miui.supermarket/.MainActivity"

    .line 1293
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.xiaomi.market/.ui.MainTabActivity"

    .line 1294
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1292
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.android.deskclock/.DeskClock"

    .line 1297
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.deskclock/.DeskClockTabActivity"

    .line 1298
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1296
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "UPDATE favorites SET intent=\'#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.deskclock/.DeskClockTabActivity;end\' WHERE intent=\'#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.deskclock/.DeskClock;end\';"

    .line 1299
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "com.android.contacts/.TwelveKeyDialer"

    .line 1308
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.contacts/.activities.TwelveKeyDialer"

    .line 1309
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1307
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.android.contacts/.DialtactsContactsEntryActivity"

    .line 1312
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.contacts/.activities.PeopleActivity"

    .line 1313
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1311
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    move v1, v2

    :cond_3
    const/16 v0, 0xd

    const/16 v11, -0x64

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const-wide/16 v17, -0x1

    if-ne v1, v2, :cond_9

    const-string v1, "com.miui.home:string/default_folder_title_security"

    .line 1319
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_8

    const-string v1, "com.android.settings/.VirusScanActivity"

    .line 1321
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.wali.miui.networkassistant/.NetworkAssistantActivity"

    .line 1322
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v19

    const-string v3, "com.android.settings/.MiuiPasswordGuardActivity"

    .line 1323
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "com.miui.backup/.BackupActivity"

    .line 1324
    invoke-static {v13, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v21

    const-string v5, "com.miui.antispam/.firewall.FirewallTab"

    .line 1325
    invoke-static {v13, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v23

    const-string v5, "com.lbe.security.miui/com.lbe.security.ui.MainActivity"

    .line 1326
    invoke-static {v13, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v25

    const-string v5, "com.lbe.security.miui/com.lbe.security.ui.AutoStartAppList"

    .line 1327
    invoke-static {v13, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v1, v1, v17

    if-nez v1, :cond_8

    cmp-long v1, v3, v17

    if-nez v1, :cond_8

    cmp-long v1, v5, v17

    if-nez v1, :cond_8

    .line 1329
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1330
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "title"

    const-string v3, "com.miui.home:string/default_folder_title_security"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "itemType"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1332
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "container"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1333
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "spanX"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1334
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "spanY"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1335
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "screen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "favorites"

    .line 1336
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v13, v1, v15, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    const-string v1, "com.android.settings/.VirusScanActivity"

    .line 1338
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v27

    move-object/from16 v7, v16

    .line 1340
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    cmp-long v1, v19, v17

    if-eqz v1, :cond_4

    const/4 v6, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, v19

    move-wide/from16 v4, v27

    .line 1343
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_0

    :cond_4
    const-string v1, "com.wali.miui.networkassistant/.NetworkAssistantActivity"

    .line 1345
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v27

    move-object/from16 v7, v16

    .line 1347
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :goto_0
    const-string v1, "com.android.settings/.MiuiPasswordGuardActivity"

    .line 1350
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v27

    move-object/from16 v7, v16

    .line 1352
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    cmp-long v1, v21, v17

    if-eqz v1, :cond_5

    const/4 v6, 0x3

    move-object/from16 v1, p1

    move-wide/from16 v2, v21

    move-wide/from16 v4, v27

    .line 1355
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    :cond_5
    cmp-long v1, v23, v17

    if-eqz v1, :cond_6

    const/4 v6, 0x4

    move-object/from16 v1, p1

    move-wide/from16 v2, v23

    move-wide/from16 v4, v27

    .line 1358
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    :cond_6
    cmp-long v1, v25, v17

    if-eqz v1, :cond_7

    const/4 v6, 0x5

    move-object/from16 v1, p1

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    .line 1361
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_1

    :cond_7
    const-string v1, "com.lbe.security.miui/com.lbe.security.ui.MainActivity"

    .line 1363
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v27

    move-object/from16 v7, v16

    .line 1365
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :goto_1
    const-string v1, "com.lbe.security.miui/com.lbe.security.ui.AutoStartAppList"

    .line 1368
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v27

    move-object/from16 v7, v16

    .line 1370
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :cond_8
    move v1, v0

    :cond_9
    const/16 v7, 0xe

    const/4 v6, 0x0

    if-ne v1, v0, :cond_f

    const-string v0, "com.xiaomi.market/.ui.MainTabActivity"

    .line 1379
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.xiaomi.market/.ui.MarketTabActivity"

    .line 1380
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1378
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.lbe.security.miui/com.lbe.security.ui.MainActivity"

    .line 1383
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.settings/.permission.PermManageActivity"

    .line 1384
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1382
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.lbe.security.miui/com.lbe.security.ui.AutoStartAppList"

    .line 1387
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.settings/.BackgroundApplicationsManager"

    .line 1388
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1386
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.miui.bugreport/.BugReportActivity"

    .line 1391
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.bugreport/.ui.TypeSelectionActivity"

    .line 1392
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1390
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1393
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    :try_start_0
    const-string v0, "com.miui.home:string/default_folder_title_security"

    .line 1397
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v17

    if-eqz v0, :cond_a

    const-string v0, "com.xiaomi.xmsf/.payment.MiliCenterEntryActivity"

    .line 1399
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move v15, v6

    move v6, v0

    move v0, v7

    move-object/from16 v7, v16

    .line 1401
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    goto :goto_2

    :cond_a
    move v15, v6

    move v0, v7

    :goto_2
    const-string v2, "favorites"

    const-string v1, "screen"

    .line 1404
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=5 AND appWidgetId=6 AND cellX=0 AND cellY=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move v11, v8

    move-object/from16 v8, v20

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1408
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1409
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1410
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 1412
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container=-100 AND screen="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cellY"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">3"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move v9, v8

    move-object/from16 v8, v20

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1416
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_b

    .line 1417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE favorites SET cellY=cellY+1 WHERE container=-100 AND screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cellY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    if-eqz v1, :cond_e

    .line 1427
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v19, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    const/16 v19, 0x0

    :goto_3
    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1430
    :cond_c
    throw v0

    :cond_d
    move v15, v6

    move v0, v7

    move v11, v8

    :cond_e
    :goto_4
    move v1, v0

    goto :goto_5

    :cond_f
    move v15, v6

    move v0, v7

    move v11, v8

    :goto_5
    if-ne v1, v0, :cond_16

    .line 1439
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->removeSkippedItems(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "com.xiaomi.xmsf/.account.ui.MiCloudSettingsActivity"

    .line 1440
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v22

    const-string v0, "com.android.stk/.StkLauncherActivity"

    .line 1441
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v24

    const-string v0, "com.miui.home:string/default_folder_title_security"

    .line 1443
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v0, v8, v17

    if-eqz v0, :cond_12

    const-string v2, "favorites"

    const-string v0, "_id"

    .line 1445
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v26, v8

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1447
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    cmp-long v1, v22, v17

    if-nez v1, :cond_13

    const-string v1, "com.xiaomi.xmsf/.account.ui.MiCloudSettingsActivity"

    .line 1450
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 1454
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "container=? AND _id=?"

    new-array v5, v10, [Ljava/lang/String;

    .line 1456
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v15

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    .line 1454
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1458
    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_10

    add-int/lit8 v6, v0, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v26

    move-object/from16 v7, v16

    .line 1459
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    move-wide/from16 v4, v26

    move v6, v0

    .line 1460
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_6

    :cond_10
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v26

    move v6, v0

    move-object/from16 v7, v16

    .line 1462
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_6
    if-eqz v8, :cond_13

    .line 1466
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v19, v8

    goto :goto_7

    :catchall_3
    move-exception v0

    const/16 v19, 0x0

    :goto_7
    if-eqz v19, :cond_11

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1468
    :cond_11
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object/from16 v19, v9

    goto :goto_9

    :cond_12
    const/4 v9, 0x0

    :cond_13
    :goto_8
    if-eqz v9, :cond_14

    .line 1473
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_14
    const/16 v1, 0xf

    goto :goto_a

    :catchall_5
    move-exception v0

    const/16 v19, 0x0

    :goto_9
    if-eqz v19, :cond_15

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1476
    :cond_15
    throw v0

    :cond_16
    :goto_a
    const/16 v0, 0xf

    const/16 v8, 0x10

    if-ne v1, v0, :cond_18

    const-string v0, "com.miui.home:string/default_folder_title_recommend"

    .line 1481
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v6, v17

    if-eqz v0, :cond_17

    .line 1483
    invoke-static {v13, v6, v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v0

    const-string v3, "com.android.fileexplorer:drawable/kuaipan_icon"

    const-string v4, "miui.intent.action.START_KUAIPAN"

    const-string v5, "com.android.fileexplorer"

    const-string v9, "com.android.fileexplorer.FileExplorerTabActivity"

    const-string v20, "com.android.fileexplorer:string/kuaipan_label"

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v23, v6

    move-object v6, v9

    move-object/from16 v7, v20

    move v15, v8

    move-wide/from16 v8, v23

    move v10, v0

    move/from16 v11, v22

    .line 1484
    invoke-direct/range {v1 .. v11}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    goto :goto_b

    :cond_17
    move v15, v8

    :goto_b
    move v1, v15

    goto :goto_c

    :cond_18
    move v15, v8

    :goto_c
    if-ne v1, v15, :cond_1a

    const-string v0, "com.miui.home:string/default_folder_title_tools"

    .line 1493
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v17, v4

    if-eqz v0, :cond_19

    .line 1495
    invoke-static {v13, v4, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v6

    const-string v0, "com.miui.transfer/cn.kuaipan.mishare.LogoActivity"

    .line 1496
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v17, v0

    if-nez v0, :cond_19

    const-string v0, "com.miui.transfer/cn.kuaipan.mishare.LogoActivity"

    .line 1497
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v7, v16

    .line 1499
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :cond_19
    const/16 v1, 0x11

    :cond_1a
    const/16 v0, 0x11

    if-ne v1, v0, :cond_25

    const-string v0, "com.miui.home:string/default_folder_title_tools"

    .line 1506
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v17

    if-eqz v2, :cond_23

    .line 1508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _id, cellX, cellY, screen FROM favorites WHERE _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1518
    :try_start_9
    invoke-virtual {v13, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 1519
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v0, :cond_1b

    const/4 v9, 0x1

    .line 1520
    :try_start_b
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    const/4 v7, 0x2

    .line 1521
    :try_start_c
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x3

    .line 1522
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    const/4 v4, -0x1

    goto :goto_d

    :catch_0
    const/4 v7, 0x2

    goto/16 :goto_12

    :cond_1b
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_d
    if-eq v0, v4, :cond_1e

    if-eq v1, v4, :cond_1e

    if-eq v3, v4, :cond_1e

    add-int/lit8 v4, v0, 0x1

    .line 1525
    :try_start_d
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    if-ge v4, v0, :cond_1e

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-ge v1, v0, :cond_1e

    .line 1528
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT _id FROM favorites WHERE container=-100 AND screen="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " AND ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "cellX"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")*("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "cellX"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "spanX"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")< 0 AND ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "cellY"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")*("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "cellY"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "spanY"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")< 0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    const/4 v5, 0x0

    .line 1537
    :try_start_f
    invoke-virtual {v13, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1538
    :try_start_10
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-nez v0, :cond_1c

    move v0, v9

    goto :goto_e

    :cond_1c
    const/4 v0, 0x0

    :goto_e
    if-eqz v6, :cond_1f

    .line 1543
    :try_start_11
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_10

    :catchall_6
    move-exception v0

    goto :goto_f

    :catchall_7
    move-exception v0

    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_1d

    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1545
    :cond_1d
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :catch_1
    const/4 v0, 0x0

    goto :goto_16

    :catch_2
    const/4 v0, 0x0

    const/4 v1, -0x1

    goto :goto_15

    :cond_1e
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v4, -0x1

    :cond_1f
    :goto_10
    if-eqz v2, :cond_21

    .line 1551
    :goto_11
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_17

    :catchall_8
    move-exception v0

    goto :goto_13

    :catch_3
    const/4 v7, 0x2

    const/4 v9, 0x1

    :catch_4
    :goto_12
    const/4 v0, 0x0

    const/4 v1, -0x1

    goto :goto_14

    :catchall_9
    move-exception v0

    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_20

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1553
    :cond_20
    throw v0

    :catch_5
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_14
    const/4 v3, -0x1

    :goto_15
    const/4 v4, -0x1

    :catch_6
    :goto_16
    if-eqz v2, :cond_21

    goto :goto_11

    :cond_21
    :goto_17
    if-eqz v0, :cond_24

    const-string v0, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.settings/com.miui.securitycenter.Main;end"

    .line 1556
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v17

    if-eqz v0, :cond_22

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE favorites SET cellX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cellY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "screen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, -0x64

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_18

    :cond_22
    const/16 v2, -0x64

    const-string v0, "com.android.settings/com.miui.securitycenter.Main"

    .line 1567
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1569
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1570
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v5, "container"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1571
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "cellX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1572
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "cellY"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1573
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v1, "screen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1574
    sget-object v3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, v16

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    goto :goto_18

    :cond_23
    const/4 v7, 0x2

    const/4 v9, 0x1

    :cond_24
    :goto_18
    const/16 v1, 0x12

    goto :goto_19

    :cond_25
    const/4 v7, 0x2

    const/4 v9, 0x1

    :goto_19
    const/16 v0, 0x12

    if-ne v1, v0, :cond_27

    :try_start_13
    const-string v0, "ALTER TABLE screens ADD screenType INTEGER NOT NULL DEFAULT 0"

    .line 1583
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_1a

    :catch_7
    move-exception v0

    .line 1586
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name: screenType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    :goto_1a
    const/16 v1, 0x13

    goto :goto_1b

    .line 1587
    :cond_26
    throw v0

    :cond_27
    :goto_1b
    const/16 v0, 0x13

    if-ne v1, v0, :cond_29

    .line 1593
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.miui.securitycenter.Main"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycenter"

    const-string v3, "com.miui.securitycenter.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1595
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.weather2"

    const-string v2, "com.miui.weather2.ActivityWeatherCycle"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.weather2"

    const-string v3, "com.miui.weather2.ActivityWeatherMain"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1597
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.xmsf"

    const-string v2, "com.xiaomi.xmsf.account.ui.MiCloudSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.cloudservice"

    const-string v3, "com.miui.cloudservice.ui.MiCloudInfoSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1599
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.duokan.phone.remotecontroller"

    const-string v2, "com.xiaomi.mitv.phone.remotecontroller.HoriWidgetMainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.duokan.phone.remotecontroller"

    const-string v3, "com.xiaomi.mitv.phone.remotecontroller.HoriWidgetMainActivityV2"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1601
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.bugreport"

    const-string v2, "com.miui.bugreport.ui.TypeSelectionActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.bugreport"

    const-string v3, "com.miui.bugreport.ui.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.miui.home:string/default_folder_title_tools"

    .line 1603
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v17

    if-eqz v2, :cond_28

    const-string v2, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.xiaomi.account/.ui.MiCloudSettingsActivity;end"

    .line 1605
    invoke-static {v13, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v17

    if-nez v2, :cond_28

    const-string v2, "com.xiaomi.account/.ui.MiCloudSettingsActivity"

    .line 1609
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1611
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1612
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v3, "container"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1613
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v1, "cellX"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1614
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v1, "cellY"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1615
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v1, "screen"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1616
    sget-object v3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, v16

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    .line 1619
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x14

    :cond_29
    const/16 v0, 0x14

    if-ne v1, v0, :cond_2a

    .line 1623
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x15

    :cond_2a
    const/16 v0, 0x15

    if-ne v1, v0, :cond_2b

    .line 1627
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.fmradio"

    const-string v2, "com.miui.fmradio.FmRadioActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.ximalaya.ting.android"

    const-string v3, "com.ximalaya.ting.android.activity.login.WelcomeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/16 v1, 0x16

    :cond_2b
    const/16 v0, 0x16

    if-ne v1, v0, :cond_2c

    .line 1633
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x17

    :cond_2c
    const/16 v0, 0x17

    const/16 v10, 0x18

    if-ne v1, v0, :cond_2e

    :try_start_14
    const-string v0, "ALTER TABLE favorites ADD profileId INTEGER NOT NULL DEFAULT 0 "

    .line 1639
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_1c

    :catch_8
    move-exception v0

    .line 1642
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :goto_1c
    move v1, v10

    goto :goto_1d

    .line 1643
    :cond_2d
    throw v0

    :cond_2e
    :goto_1d
    if-ne v1, v10, :cond_2f

    .line 1651
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1653
    :try_start_15
    iget-object v0, v12, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 1654
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "profileId"

    long-to-int v0, v0

    .line 1655
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "favorites"

    const/4 v1, 0x0

    .line 1656
    invoke-static {v13, v0, v2, v1, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1657
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 1659
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v1, 0x19

    goto :goto_1e

    :catchall_a
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1660
    throw v0

    :cond_2f
    :goto_1e
    const/16 v0, 0x19

    if-ne v1, v0, :cond_30

    const-string v0, "update favorites set launchCount = launchCount+1 where itemType = 2"

    .line 1665
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v1, 0x1a

    :cond_30
    const/16 v0, 0x1a

    if-ne v1, v0, :cond_31

    .line 1671
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x1b

    :cond_31
    const/16 v0, 0x1b

    if-ne v1, v0, :cond_32

    .line 1676
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.barcodescanner"

    const-string v2, "com.miui.barcodescanner.activity.CaptureActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.scanner"

    const-string v3, "com.xiaomi.scanner.app.ScanActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1678
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.calculator2"

    const-string v2, "com.android.calculator2.Calculator"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.calculator"

    const-string v3, "com.miui.calculator.cal.CalculatorActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/16 v1, 0x1c

    :cond_32
    const/16 v0, 0x1c

    if-ne v1, v0, :cond_34

    .line 1684
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "favorites"

    const-string/jumbo v1, "uri=?"

    const-string v2, "file:///system/media/theme/default/gadgets/music.mtz"

    .line 1685
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_33
    const/16 v1, 0x1d

    :cond_34
    const/16 v0, 0x1d

    if-ne v1, v0, :cond_35

    .line 1692
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x1e

    :cond_35
    const/16 v0, 0x1e

    if-ne v1, v0, :cond_36

    const-string v0, "com.miui.gallery/.app.Gallery"

    .line 1699
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.gallery/.activity.HomePageActivity"

    .line 1700
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1698
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.miui.bugreport/.ui.MainActivity"

    .line 1703
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.bugreport/.ui.MainTabActivity"

    .line 1704
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1702
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.android.deskclock/.DeskClock"

    .line 1707
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.deskclock/.DeskClockTabActivity"

    .line 1708
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1706
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/16 v1, 0x1f

    :cond_36
    const/16 v0, 0x1f

    if-ne v1, v0, :cond_37

    const-string v0, "favorites"

    const-string v1, "appWidgetId=? AND itemType = ? "

    const-string v2, "5"

    const-string v3, "5"

    .line 1713
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1716
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x20

    :cond_37
    const/16 v0, 0x20

    if-ne v1, v0, :cond_38

    .line 1721
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "appWidgetId"

    const/16 v2, 0x3e8

    .line 1722
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "favorites"

    const-string v2, "appWidgetId >= ? AND itemType = ?"

    .line 1723
    new-array v3, v7, [Ljava/lang/String;

    const/16 v4, 0x3e8

    .line 1725
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x5

    .line 1726
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 1723
    invoke-static {v13, v1, v0, v2, v3}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x21

    :cond_38
    const/16 v0, 0x21

    if-ne v1, v0, :cond_3a

    :try_start_16
    const-string v0, "ALTER TABLE favorites ADD label STRING "

    .line 1732
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_9

    goto :goto_1f

    :catch_9
    move-exception v0

    .line 1735
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    :goto_1f
    const/16 v1, 0x22

    goto :goto_20

    .line 1736
    :cond_39
    throw v0

    :cond_3a
    :goto_20
    const/16 v0, 0x22

    if-ne v1, v0, :cond_46

    :try_start_17
    const-string v2, "favorites"

    const-string v0, "_id"

    .line 1747
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 1750
    :cond_3b
    :goto_21
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v2, 0x0

    .line 1751
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    .line 1752
    invoke-static {v13, v2, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "favorites"

    .line 1753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v13, v2, v0, v3}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    goto :goto_21

    :cond_3c
    if-eqz v1, :cond_3d

    .line 1758
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    goto :goto_22

    :cond_3d
    move-object v11, v1

    .line 1762
    :goto_22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "ToggleId=10;"

    .line 1763
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=15;"

    .line 1764
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=11;"

    .line 1765
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=1;"

    .line 1766
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=9;"

    .line 1767
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "BluetoothSettingsActivity"

    .line 1768
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "TetherSettingsActivity"

    .line 1769
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ZonePickerActivity"

    .line 1770
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_19
    const-string v2, "favorites"

    const-string v1, "intent"

    .line 1773
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "iconType=3 OR iconType=5"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1777
    :cond_3e
    :goto_23
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x0

    .line 1778
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1780
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v9

    :cond_3f
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1781
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/4 v3, 0x0

    goto :goto_24

    :cond_40
    if-eqz v3, :cond_3e

    const-string v1, "favorites"

    const-string v3, "intent=?"

    .line 1786
    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v13, v1, v3, v4}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_23

    :cond_41
    const-string v0, "favorites"

    const-string v1, "appWidgetId=7"

    const/4 v2, 0x0

    .line 1790
    invoke-static {v13, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1792
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "/system/media/theme/default/gadgets/clock.mtz"

    .line 1794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM favorites WHERE uri LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1797
    :cond_42
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteEmptyScreen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    if-eqz v11, :cond_43

    .line 1800
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_43
    const/16 v1, 0x23

    goto :goto_26

    :catchall_b
    move-exception v0

    if-eqz v11, :cond_44

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1803
    :cond_44
    throw v0

    :catchall_c
    move-exception v0

    goto :goto_25

    :catchall_d
    move-exception v0

    const/4 v1, 0x0

    :goto_25
    if-eqz v1, :cond_45

    .line 1758
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1761
    :cond_45
    throw v0

    :cond_46
    :goto_26
    const/16 v0, 0x23

    if-ne v1, v0, :cond_48

    .line 1808
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_47

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_47

    .line 1809
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.account"

    const-string v2, "com.xiaomi.account.ui.AccountSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.vipaccount"

    const-string v3, "com.xiaomi.vipaccount.ui.VipAccountActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1811
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.account"

    const-string v2, "com.xiaomi.account.ui.MainAccountActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.vipaccount"

    const-string v3, "com.xiaomi.vipaccount.ui.VipAccountActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_47
    const/16 v1, 0x24

    :cond_48
    const/16 v0, 0x24

    if-ne v1, v0, :cond_4c

    const-string v0, "/system/media/theme/default/gadgets/weather_clock.mtz"

    .line 1822
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM favorites WHERE uri LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    .line 1824
    :goto_27
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1825
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "profileId"

    const-string v4, "profileId"

    .line 1826
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "container"

    const-string v4, "container"

    .line 1827
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "screen"

    const-string v4, "screen"

    .line 1828
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cellX"

    const-string v4, "cellX"

    .line 1829
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cellY"

    const-string v4, "cellY"

    .line 1830
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    invoke-static {v13, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClock2x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    goto :goto_27

    .line 1833
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM favorites WHERE uri LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    if-eqz v1, :cond_4a

    .line 1837
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4a
    const/16 v1, 0x25

    goto :goto_29

    :catchall_e
    move-exception v0

    goto :goto_28

    :catchall_f
    move-exception v0

    const/4 v1, 0x0

    :goto_28
    if-eqz v1, :cond_4b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1840
    :cond_4b
    throw v0

    :cond_4c
    :goto_29
    const/16 v0, 0x25

    if-ne v1, v0, :cond_4d

    .line 1845
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1846
    new-array v1, v10, [I

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launchCount"

    .line 1847
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "favorites"

    const/4 v10, 0x0

    .line 1848
    invoke-static {v13, v1, v0, v10, v10}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x26

    goto :goto_2a

    :cond_4d
    const/4 v10, 0x0

    :goto_2a
    const/16 v0, 0x26

    if-ne v1, v0, :cond_4f

    .line 1853
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4e

    .line 1854
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.fileexplorer"

    const-string v2, "com.android.fileexplorer.FileExplorerTabActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mi.android.globalFileexplorer"

    const-string v3, "com.android.fileexplorer.FileExplorerTabActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_4e
    const/16 v1, 0x27

    :cond_4f
    const/16 v0, 0x27

    if-ne v1, v0, :cond_51

    .line 1861
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_50

    .line 1862
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.fileexplorer"

    const-string v2, "com.android.fileexplorer.FileExplorerTabActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mi.android.globalFileexplorer"

    const-string v3, "com.android.fileexplorer.FileExplorerTabActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.google.android.googlequicksearchbox/.SearchActivity"

    .line 1865
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_50

    const-string v1, "Google"

    .line 1866
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v17

    if-eqz v1, :cond_50

    .line 1868
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v7, v16

    .line 1869
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :cond_50
    const/16 v1, 0x28

    :cond_51
    const/16 v0, 0x28

    if-eq v1, v0, :cond_52

    const/16 v0, 0x29

    if-ne v1, v0, :cond_56

    :cond_52
    const-string v0, "ALTER TABLE favorites ADD COLUMN appWidgetProvider STRING"

    .line 1877
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :try_start_1c
    const-string v2, "favorites"

    const-string v0, "_id"

    const-string v1, "appWidgetId"

    .line 1881
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=4"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    .line 1883
    :cond_53
    :goto_2b
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v2, 0x0

    .line 1884
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1885
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1886
    iget-object v3, v12, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 1888
    sget-object v3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1889
    sget-object v3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v4, "appWidgetProvider"

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "favorites"

    .line 1890
    sget-object v3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v4, "_id=?"

    new-array v5, v9, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v13, v2, v3, v4, v5}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    goto :goto_2b

    :cond_54
    if-eqz v1, :cond_55

    goto :goto_2d

    :catch_a
    move-exception v0

    goto :goto_2c

    :catchall_10
    move-exception v0

    move-object v1, v10

    goto/16 :goto_2e

    :catch_b
    move-exception v0

    move-object v1, v10

    .line 1894
    :goto_2c
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    if-eqz v1, :cond_55

    .line 1897
    :goto_2d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_55
    const/16 v1, 0x2a

    :cond_56
    const/16 v0, 0x2a

    if-ne v1, v0, :cond_57

    const-string v0, "#Intent;action=com.miui.action.SETTINGS_SHURTCUT;component=com.android.settings/.Settings%24BluetoothSettingsActivity;end"

    const-string v1, "#Intent;action=com.miui.action.TOGGLE_SHURTCUT;i.ToggleId=2;end"

    .line 1905
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateSettingIconToToggle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "#Intent;action=com.miui.action.SETTINGS_SHURTCUT;component=com.android.settings/.Settings%24TetherSettingsActivity;end"

    const-string v1, "#Intent;action=com.miui.action.TOGGLE_SHURTCUT;i.ToggleId=24;end"

    .line 1907
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateSettingIconToToggle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "favorites"

    const-string v1, "intent=?"

    const-string v2, "#Intent;action=com.miui.action.SETTINGS_SHURTCUT;component=com.android.settings/.Settings%24ZonePickerActivity;end"

    .line 1909
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x2b

    :cond_57
    const/16 v0, 0x2b

    if-ne v1, v0, :cond_58

    .line 1915
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$bGv1KmwWdy4uoPJ-sdQTr5X-Z3c;

    invoke-direct {v0, v12, v13}, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$bGv1KmwWdy4uoPJ-sdQTr5X-Z3c;-><init>(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$iYt-jXbxJeJcp7qejOVyJI-vDyA;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$iYt-jXbxJeJcp7qejOVyJI-vDyA;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    const/16 v1, 0x2c

    :cond_58
    const/16 v0, 0x2c

    if-ne v1, v0, :cond_59

    const-string v0, "favorites"

    const-string v1, "itemType=?"

    .line 1932
    new-array v2, v9, [Ljava/lang/String;

    .line 1933
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1932
    invoke-static {v13, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x2d

    :cond_59
    const/16 v0, 0x2d

    if-ne v1, v0, :cond_5a

    const-string v0, "DELETE FROM favorites WHERE appWidgetProvider LIKE \'com.xunmeng.pinduoduo/%\'"

    .line 1938
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v1, 0x2e

    :cond_5a
    const/16 v0, 0x2e

    if-ne v1, v0, :cond_5b

    .line 1944
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallFixIconPackageUtils;->fixIconPackage()V

    const/16 v1, 0x2f

    :cond_5b
    const/16 v0, 0x2f

    if-ne v1, v0, :cond_5c

    const-string v0, "favorites"

    const-string v1, "itemType=? And intent=?"

    const-string v2, "17"

    const-string v3, "#Intent;component=com.miui.home/.settings.MiuiHomeSettingActivity;end"

    .line 1950
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x30

    :cond_5c
    const/16 v0, 0x30

    if-ne v1, v0, :cond_5d

    .line 1956
    iget-object v0, v12, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->updateSearchBarTransferEnable(Landroid/content/Context;)V

    const/16 v1, 0x31

    :cond_5d
    const/16 v0, 0x31

    if-ne v1, v0, :cond_5e

    const-string v0, "ALTER TABLE favorites ADD COLUMN originWidgetId INTEGER NOT NULL DEFAULT -1"

    .line 1961
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE favorites ADD COLUMN product_id STRING"

    .line 1963
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v1, 0x32

    :cond_5e
    const/16 v0, 0x32

    if-ne v1, v0, :cond_5f

    const-string v0, "UPDATE favorites SET itemType = \'19\' WHERE itemType = \'18\' AND product_id is not null"

    .line 1975
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v1, 0x33

    :cond_5f
    const/16 v0, 0x33

    if-ne v1, v0, :cond_60

    .line 1979
    iget-object v0, v12, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/RemovingSmallWindowFromRecents;->initShouldToast(Landroid/content/Context;)V

    const/16 v1, 0x34

    :cond_60
    move/from16 v2, p3

    if-eq v1, v2, :cond_61

    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Destroying all old data and re-create."

    .line 1988
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_61
    return-void

    :catchall_11
    move-exception v0

    :goto_2e
    if-eqz v1, :cond_62

    .line 1897
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1900
    :cond_62
    throw v0
.end method

.method public queryAppWidgetIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "favorites"

    const-string v2, "appWidgetId"

    .line 2252
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "itemType=5"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2254
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2255
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 2256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Fail to query AppWidgetIds from db."

    .line 2261
    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 2264
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2267
    :cond_3
    throw p1
.end method

.method public updatePreferenceValue(Landroid/content/ContentValues;)V
    .locals 6

    .line 1014
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1015
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1016
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 1017
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1018
    :cond_0
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 1019
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    goto :goto_0

    .line 1020
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 1021
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1022
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 1023
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 1025
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method
