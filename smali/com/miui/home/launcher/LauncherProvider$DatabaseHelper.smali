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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$InstallCache;,
        Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;
    }
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

    .line 771
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 776
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2d

    .line 775
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 767
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 768
    iput-wide v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    const/4 v0, 0x1

    .line 769
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    const/4 v0, 0x0

    .line 770
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mCreatedFirstTime:Z

    .line 778
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 779
    new-instance v4, Landroid/appwidget/AppWidgetHost;

    const/16 v5, 0x400

    invoke-direct {v4, p1, v5}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    move v4, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 784
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

    .line 786
    invoke-static {v6, v7, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v5, 0x32

    .line 787
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    .line 790
    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    goto :goto_0

    .line 796
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isDatabaseLegal(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 797
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->fixFavoritesTableIfNeed(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 798
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->tryRemoveDupIdRows(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 799
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_3

    .line 800
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 803
    :cond_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;I)V
    .locals 0

    .line 738
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpDefaultWorkspace(I)V

    return-void
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$003(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$004(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 2

    if-eqz p6, :cond_0

    .line 2771
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2773
    :cond_0
    invoke-static {p4, p5, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getAppShortcutActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "Launcher.LauncherProvider"

    .line 2775
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to add favorite: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0

    .line 2779
    :cond_1
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p5

    const-string p6, "Launcher.LauncherProvider"

    .line 2780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add favorite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const-string p6, "title"

    .line 2781
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p5

    .line 2784
    :goto_0
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10200000

    .line 2785
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "intent"

    const/4 p5, 0x0

    .line 2787
    invoke-virtual {p3, p5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "itemType"

    .line 2788
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "iconPackage"

    .line 2789
    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "spanX"

    const/4 p3, 0x1

    .line 2790
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanY"

    .line 2791
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "favorites"

    const/4 p3, 0x0

    .line 2792
    invoke-static {p0, p2, p3, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V
    .locals 6

    .line 2113
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2114
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v1, "container"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-ltz p5, :cond_0

    .line 2116
    sget-object p3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string p4, "cellX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2117
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
    .locals 10

    if-eqz p3, :cond_0

    const/16 v0, 0x9

    .line 2753
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2754
    :cond_0
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v8, 0x1

    if-eqz p3, :cond_1

    .line 2755
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    .line 2756
    :cond_1
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_1
    const/4 v9, 0x0

    if-eqz p3, :cond_2

    const/16 v1, 0xb

    .line 2757
    invoke-virtual {p3, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    move v7, v9

    :goto_2
    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, v0

    .line 2758
    invoke-static/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p3

    const-wide/16 v1, 0x0

    cmp-long p3, p3, v1

    if-ltz p3, :cond_3

    return v8

    .line 2760
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->canAutoInstall(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 2761
    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAutoInstallShortcutInfo(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide p1

    cmp-long p1, p1, v1

    if-ltz p1, :cond_4

    goto :goto_3

    :cond_4
    move v8, v9

    :goto_3
    return v8

    :cond_5
    return v9
.end method

.method private static addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)J
    .locals 2

    .line 2966
    :try_start_0
    invoke-virtual {p6}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result p6

    const-string v0, "itemType"

    const/4 v1, 0x4

    .line 2967
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanX"

    .line 2968
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanY"

    .line 2969
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "appWidgetId"

    .line 2970
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "appWidgetProvider"

    .line 2971
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "favorites"

    const/4 p4, 0x0

    .line 2972
    invoke-static {p0, p3, p4, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    .line 2973
    invoke-static {p5, p6, p2}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "Problem allocating appWidgetId"

    .line 2976
    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/os/Bundle;)J
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 2942
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2944
    :try_start_0
    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v5

    goto :goto_0

    .line 2946
    :catch_0
    new-array v5, v6, [Ljava/lang/String;

    aput-object v0, v5, v7

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2948
    new-instance v5, Landroid/content/ComponentName;

    aget-object v0, v0, v7

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
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

    .line 2957
    invoke-static/range {v7 .. v13}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v3

    :cond_2
    :goto_1
    return-wide v3
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p3

    const/16 v2, 0x9

    .line 2924
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    .line 2925
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    if-eqz v5, :cond_2

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    .line 2930
    invoke-virtual {v1, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/16 v3, 0xe

    .line 2931
    invoke-virtual {v1, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 2932
    iget-object v10, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    const/4 v12, 0x0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p4

    invoke-static/range {v3 .. v12}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/os/Bundle;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    move v13, v2

    :cond_1
    return v13

    :cond_2
    :goto_0
    return v13
.end method

.method private static addAutoInstallShortcutInfo(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 6

    .line 2796
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2797
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 2798
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "invalidClassName"

    invoke-direct {v2, p2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10200000

    .line 2800
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    const/4 v4, 0x0

    .line 2802
    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    .line 2803
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v2

    invoke-virtual {v2, p2, v3}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemType"

    const/16 v2, 0xb

    .line 2804
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "iconPackage"

    .line 2805
    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iconType"

    const/4 v4, 0x4

    .line 2806
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "itemFlags"

    const/16 v4, 0x10

    .line 2807
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "iconResource"

    .line 2808
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "spanX"

    const/4 v4, 0x1

    .line 2809
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanY"

    .line 2810
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2811
    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    const-string v1, "com.miui.core"

    invoke-virtual {v0, p2, v2, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->recordProgressInfo(Ljava/lang/String;ILjava/lang/String;)V

    const-string p2, "favorites"

    .line 2812
    invoke-static {p0, p2, v3, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addClock1x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x7

    .line 2901
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addClock2x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x6

    .line 2905
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addClock3x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/16 v0, 0x8

    .line 2909
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 2

    const-string v0, "com.miui.home:string/default_folder_title_claro"

    .line 2696
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

    .line 2697
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "label"

    const-string v0, "com.miui.home:string/default_folder_title_telcel"

    .line 2698
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 2700
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "label"

    .line 2701
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p2, "itemType"

    const/4 v0, 0x2

    .line 2703
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanX"

    const/4 v0, 0x1

    .line 2704
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanY"

    .line 2705
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "favorites"

    const/4 v0, 0x0

    .line 2706
    invoke-static {p0, p2, v0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 2

    const/16 v0, 0xf

    .line 2687
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2688
    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide p1

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 2689
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2690
    iput-wide p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public static addGoogleOriginalSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/appwidget/AppWidgetHost;)J
    .locals 7

    .line 2880
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v5

    .line 2881
    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 2882
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 2883
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    const-string v2, "Launcher.provider"

    .line 2884
    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2886
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2887
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2888
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->calcWidgetSpans(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 2889
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    iget v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iget v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static addMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 2

    if-eqz p2, :cond_0

    .line 2715
    new-instance v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(Landroid/net/Uri;)V

    .line 2717
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->loadMtzGadget()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "spanX"

    .line 2718
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanY"

    .line 2719
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "itemType"

    .line 2720
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "appWidgetId"

    .line 2721
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "uri"

    .line 2722
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "favorites"

    const/4 v0, 0x0

    .line 2723
    invoke-static {p0, p2, v0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 2726
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private addMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 2

    const/16 v0, 0x11

    .line 2710
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J
    .locals 3

    .line 2913
    invoke-static {p2}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    const-string v1, "spanX"

    .line 2914
    iget v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanY"

    .line 2915
    iget v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "itemType"

    const/4 v1, 0x5

    .line 2916
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "appWidgetId"

    .line 2917
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "favorites"

    const/4 v0, 0x0

    .line 2918
    invoke-static {p0, p2, v0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x3

    .line 2897
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private addShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 3036
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3037
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "iconType"

    .line 3038
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "iconResource"

    .line 3039
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "iconPackage"

    const/16 v4, 0x3a

    .line 3040
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "container"

    .line 3041
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    invoke-virtual {v2, p2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "cellX"

    .line 3042
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {v2, p2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "cellY"

    .line 3043
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {v2, p2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanX"

    const/4 p7, 0x1

    .line 3044
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    invoke-virtual {v2, p2, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanY"

    .line 3045
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    invoke-virtual {v2, p2, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3046
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3047
    invoke-virtual {v1, p4, p5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10200000

    .line 3048
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "android.intent.category.DEFAULT"

    .line 3050
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "intent"

    .line 3051
    invoke-virtual {v1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "title"

    .line 3052
    invoke-virtual {v2, p2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "itemType"

    .line 3053
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "iconType"

    .line 3054
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "favorites"

    const/4 p3, 0x0

    .line 3055
    invoke-static {p1, p2, p3, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return p7
.end method

.method private addToggle(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 5

    const/16 v0, 0x10

    .line 2733
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "addToggle, toggleId is null"

    .line 2735
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2739
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.action.TOGGLE_SHURTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ToggleId"

    .line 2740
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "intent"

    .line 2741
    invoke-virtual {v1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemType"

    const/4 v2, 0x1

    .line 2742
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "iconType"

    const/4 v3, 0x3

    .line 2743
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanX"

    .line 2744
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanY"

    .line 2745
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "favorites"

    const/4 v3, 0x0

    .line 2746
    invoke-static {p1, v1, v3, p2}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-ltz p1, :cond_1

    move v0, v2

    :cond_1
    const-string p1, "Launcher.LauncherProvider"

    .line 2747
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addToggle(id="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "), succeed="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 4

    const-wide/16 v0, -0x1

    if-nez p4, :cond_0

    return-wide v0

    .line 3004
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

    .line 3007
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "iconType"

    const/4 v2, 0x0

    .line 3008
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "iconResource"

    .line 3009
    invoke-virtual {p1, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "iconPackage"

    .line 3010
    invoke-virtual {p1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "spanX"

    const/4 p5, 0x1

    .line 3011
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "spanY"

    .line 3012
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3013
    invoke-virtual {v0, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3014
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 3015
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p8, :cond_3

    .line 3018
    invoke-static {p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_3
    const-string p2, "android.intent.category.DEFAULT"

    .line 3020
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "intent"

    .line 3021
    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "title"

    .line 3022
    invoke-virtual {p1, p2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "itemType"

    .line 3023
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "iconType"

    .line 3024
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p9, :cond_4

    const-string p2, "isShortcut"

    .line 3026
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    const-string p2, "favorites"

    const/4 p3, 0x0

    .line 3028
    invoke-static {p0, p2, p3, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 12

    const/4 v0, 0x4

    .line 2983
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    if-nez v5, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x9

    .line 2988
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x1

    .line 2989
    invoke-virtual {p3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0x3a

    .line 2990
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0xf

    .line 2991
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2992
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v1, 0x11

    .line 2993
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0xb

    .line 2994
    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    move-object v1, p1

    move-object v2, p2

    .line 2987
    invoke-static/range {v1 .. v10}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-ltz p1, :cond_1

    move v0, v11

    :cond_1
    return v0
.end method

.method private createFavoritesTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_item;"

    .line 1168
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER update_item_on_update_item  AFTER UPDATE of container ON favorites  WHEN (new.itemType == 0 OR new.itemType == 1) AND (new.container > 0) BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | (SELECT ((itemFlags>>1)&1) from favorites where _id==new.container))     WHERE _id==new._id;  END"

    .line 1169
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_home;"

    .line 1171
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER update_item_on_update_home  AFTER UPDATE of container ON favorites  WHEN (new.itemType == 0 OR new.itemType == 1) AND (new.container <= 0) BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | 0)     WHERE _id==new._id;  END"

    .line 1172
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_folder;"

    .line 1174
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER update_item_on_update_folder  AFTER UPDATE of itemFlags ON favorites  WHEN new.itemType == 2  BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | ((new.itemFlags>>1)&1))      WHERE container==new._id;  END"

    .line 1175
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "DROP TABLE IF EXISTS screens"

    .line 1179
    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v1, "CREATE TABLE screens (_id INTEGER PRIMARY KEY,title TEXT,screenOrder INTEGER NOT NULL DEFAULT -1,screenType INTEGER NOT NULL DEFAULT 0);"

    .line 1181
    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v2, "favorites"

    const-string v1, "MAX(screen)"

    .line 1189
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 1195
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v10, 0x0

    .line 1196
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v11, 0x1

    add-int/lit8 v12, v1, 0x1

    .line 1197
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1198
    new-array v14, v12, [J

    move v15, v10

    :goto_0
    const-wide/16 v16, -0x1

    if-ge v15, v12, :cond_a

    .line 1200
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    const-string v1, "screenOrder"

    .line 1201
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1205
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    :try_start_1
    const-string v2, "favorites"

    const-string v1, "COUNT()"

    .line 1207
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spanX+spanY>2 AND screen="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "container"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, -0x64

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p1

    move v11, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    const-string v2, "favorites"

    const-string v1, "COUNT()"

    .line 1211
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spanX=1 AND spanY=1 AND screen="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "container"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "itemType"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "!="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p1

    move-object/from16 v18, v8

    move-object v8, v11

    :try_start_3
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1216
    :try_start_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v1, v18

    .line 1217
    :try_start_5
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1218
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1219
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    move v2, v10

    goto :goto_1

    :cond_0
    if-lez v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 1229
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v8, :cond_6

    .line 1232
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, v18

    :goto_2
    move-object/from16 v20, v8

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v8

    goto :goto_3

    :catchall_4
    move-exception v0

    const/4 v1, 0x0

    :goto_3
    const/16 v20, 0x0

    :goto_4
    if-eqz v1, :cond_3

    .line 1229
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v20, :cond_4

    .line 1232
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    move v2, v10

    .line 1236
    :cond_6
    :goto_5
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_8

    if-nez v15, :cond_8

    .line 1237
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isShowQuickCallCellLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x3

    goto :goto_6

    :cond_7
    move v2, v3

    :cond_8
    :goto_6
    if-ne v2, v3, :cond_9

    .line 1244
    aput-wide v16, v14, v15

    goto :goto_7

    :cond_9
    const-string v1, "screenType"

    .line 1246
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "screens"

    const/4 v3, 0x0

    .line 1247
    invoke-static {v0, v1, v3, v13}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    aput-wide v3, v14, v15

    :goto_7
    const-string v1, "Launcher.LauncherProvider"

    .line 1249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createScreensTable, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v14, v15

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_a
    move v1, v11

    sub-int/2addr v12, v1

    :goto_8
    if-ltz v12, :cond_d

    .line 1252
    aget-wide v1, v14, v12

    cmp-long v3, v1, v16

    if-nez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_9

    .line 1254
    :cond_b
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    const-string v3, "screen"

    .line 1255
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "favorites"

    const-string v2, "screen=?"

    const/4 v3, 0x1

    .line 1256
    new-array v4, v3, [Ljava/lang/String;

    .line 1260
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 1256
    invoke-static {v0, v1, v13, v2, v4}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_9
    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    :catchall_5
    move-exception v0

    if-eqz v9, :cond_c

    .line 1265
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :cond_d
    if-eqz v9, :cond_e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_e
    return-void
.end method

.method private deleteClockBack()V
    .locals 5

    .line 1980
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "clock_bak"

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1981
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1982
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1983
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 1984
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1985
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1988
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

    .line 1996
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

    .line 1998
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1999
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2000
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "_id"

    .line 2001
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "screenType"

    .line 2002
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2003
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2004
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2005
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2006
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2007
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2009
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2010
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2013
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v5, "favorites"

    const-string v1, "screen"

    .line 2016
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

    .line 2018
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 2019
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2020
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2021
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2024
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2027
    :try_start_4
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2028
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

    .line 2029
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2030
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2031
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2036
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2037
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

    .line 2038
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

    .line 2041
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2042
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v6, "screens"

    .line 2043
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v6, v3, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2044
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

    .line 2052
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

    :cond_a
    throw p1
.end method

.method private dumpDefaultWorkspace(I)V
    .locals 3

    .line 2554
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2555
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2556
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2555
    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpDefaultWorkspaceImpl(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2557
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
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2569
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 2570
    new-instance v3, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;

    invoke-direct {v3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;-><init>()V

    .line 2571
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

    const-string p2, "utf-8"

    .line 2572
    invoke-virtual {v3, v4, p2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2573
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v3, v1, p2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p2, "favorites"

    .line 2574
    invoke-virtual {v3, v1, p2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p2, "xmlns:launcher"

    const-string v2, "http://schemas.android.com/apk/res/com.miui.home"

    .line 2575
    invoke-virtual {v3, v1, p2, v2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p2, "default"

    .line 2576
    invoke-virtual {v3, v1, p2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p2, "launcher"

    const-string v2, "screen"

    .line 2577
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p2, v2, p3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p2, "default"

    .line 2578
    invoke-virtual {v3, v1, p2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2580
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 2581
    invoke-static {p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p3, "SELECT * FROM favorites WHERE itemType=2 ORDER BY screen ASC, cellY ASC, cellX ASC"

    .line 2582
    invoke-virtual {p1, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2586
    :goto_0
    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "folder"

    .line 2587
    invoke-virtual {v3, v1, v2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "_id"

    .line 2588
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v5, v2

    .line 2589
    iget-wide v7, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    const-string v2, "launcher"

    const-string v5, "presets_container"

    const-string v6, "true"

    .line 2590
    invoke-virtual {v3, v2, v5, v6}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v2, "launcher"

    const-string v5, "title"

    const-string v6, "title"

    .line 2592
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v5, v6}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "launcher"

    .line 2593
    invoke-direct {p0, p3, v3, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V

    const-string v2, "folder"

    .line 2594
    invoke-virtual {v3, v1, v2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2596
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string p3, "SELECT * FROM favorites WHERE itemType!=2 ORDER BY screen ASC, cellY ASC, cellX ASC"

    .line 2599
    invoke-virtual {p1, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2603
    :goto_1
    :try_start_4
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "itemType"

    .line 2604
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x5

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v6, "shortcut"

    goto :goto_3

    :pswitch_1
    const-string v6, "favorite"

    goto :goto_3

    :cond_2
    const-string v6, "appWidgetId"

    .line 2615
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    const-string v6, "search"

    goto :goto_3

    :cond_3
    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    const-string v6, "clock2x4"

    goto :goto_3

    :cond_4
    :goto_2
    move-object v6, v1

    :goto_3
    if-nez v6, :cond_5

    goto :goto_1

    .line 2626
    :cond_5
    invoke-virtual {v3, v1, v6}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eq v2, p2, :cond_7

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    if-ne v2, v5, :cond_9

    const-string v2, "launcher"

    .line 2646
    invoke-direct {p0, p3, v3, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    :goto_4
    const-string v5, "intent"

    .line 2628
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 2629
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v7, "launcher"

    const-string v8, "packageName"

    .line 2630
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v7, v8, v9}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "launcher"

    const-string v8, "className"

    .line 2631
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v7, v8, v9}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2632
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/home/launcher/LauncherSettings;->isRetainedPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "launcher"

    const-string v8, "retained"

    const-string v9, "true"

    .line 2633
    invoke-virtual {v3, v7, v8, v9}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    const-string v7, "launcher"

    .line 2635
    invoke-direct {p0, p3, v3, v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V

    if-ne v2, p2, :cond_9

    const-string v2, "launcher"

    const-string v7, "title"

    const-string v8, "title"

    .line 2637
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v2, v7, v8}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "launcher"

    const-string v7, "action"

    .line 2638
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v2, v7, v8}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "launcher"

    const-string v7, "iconResource"

    const-string v8, "iconResource"

    .line 2639
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v2, v7, v8}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2640
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "launcher"

    const-string v7, "uri"

    .line 2641
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v7, v5}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2648
    :cond_9
    :goto_5
    invoke-virtual {v3, v1, v6}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    :cond_a
    const-string v2, "favorites"

    .line 2650
    invoke-virtual {v3, v1, v2}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2651
    invoke-virtual {v3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endDocument()V

    .line 2652
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p3, :cond_b

    .line 2666
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz p1, :cond_c

    .line 2669
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c
    return p2

    :catchall_0
    move-exception p2

    goto/16 :goto_c

    :catch_0
    move-exception p2

    move-object v1, p3

    goto :goto_6

    :catch_1
    move-exception p2

    move-object v1, p3

    goto :goto_7

    :catch_2
    move-exception p2

    move-object v1, p3

    goto :goto_8

    :catch_3
    move-exception p2

    move-object v1, p3

    goto :goto_9

    :catch_4
    move-exception p2

    move-object v1, p3

    goto :goto_a

    :catch_5
    move-exception p2

    goto :goto_6

    :catch_6
    move-exception p2

    goto :goto_7

    :catch_7
    move-exception p2

    goto :goto_8

    :catch_8
    move-exception p2

    goto :goto_9

    :catch_9
    move-exception p2

    goto :goto_a

    :catchall_1
    move-exception p2

    move-object p1, v1

    move-object p3, p1

    goto :goto_c

    :catch_a
    move-exception p2

    move-object p1, v1

    .line 2663
    :goto_6
    :try_start_5
    invoke-virtual {p2}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_d

    .line 2666
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz p1, :cond_12

    goto :goto_b

    :catch_b
    move-exception p2

    move-object p1, v1

    .line 2661
    :goto_7
    :try_start_6
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_e

    .line 2666
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz p1, :cond_12

    goto :goto_b

    :catch_c
    move-exception p2

    move-object p1, v1

    .line 2659
    :goto_8
    :try_start_7
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_f

    .line 2666
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz p1, :cond_12

    goto :goto_b

    :catch_d
    move-exception p2

    move-object p1, v1

    .line 2657
    :goto_9
    :try_start_8
    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_10

    .line 2666
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz p1, :cond_12

    goto :goto_b

    :catch_e
    move-exception p2

    move-object p1, v1

    .line 2655
    :goto_a
    :try_start_9
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v1, :cond_11

    .line 2666
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz p1, :cond_12

    .line 2669
    :goto_b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_12
    return v0

    :catchall_2
    move-exception p2

    move-object p3, v1

    :goto_c
    if-eqz p3, :cond_13

    .line 2666
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_13
    if-eqz p1, :cond_14

    .line 2669
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_14
    throw p2

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

    .line 2676
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const-string v0, "screen"

    const-string v1, "screen"

    .line 2678
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

    .line 2680
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v1, v0}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    const-string v0, "x"

    const-string v1, "cellX"

    .line 2682
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "y"

    const-string v1, "cellY"

    .line 2683
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private fillCommonContentValues(Landroid/content/res/TypedArray;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3

    .line 2504
    invoke-static {p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->fillSerialNumber(Landroid/content/ContentValues;)V

    .line 2506
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getContainer(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "container"

    .line 2507
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isInDesktopContainer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "screen"

    const/16 v2, 0xc

    .line 2510
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "cellX"

    .line 2513
    invoke-direct {p0, p1, v0, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getCellX(Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "cellY"

    const/16 v0, 0x13

    .line 2515
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2514
    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fillSerialNumber(Landroid/content/ContentValues;)V
    .locals 3

    .line 2536
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    .line 2537
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    const-string v2, "profileId"

    .line 2538
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private fixFavoritesTableIfNeed(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 842
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Launcher.LauncherProvider"

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db is not integrity, try fix table favorites, beginTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "create table favorites2 as select * from favorites;"

    .line 844
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "DROP TABLE favorites;"

    .line 845
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE favorites2 RENAME TO favorites;"

    .line 846
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p1, "Launcher.LauncherProvider"

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixFavoritesTableIfNeed, endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Launcher.LauncherProvider"

    const-string v0, "db is integrity"

    .line 849
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static getAppShortcutActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/LauncherActivityInfo;
    .locals 5

    .line 2816
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2818
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 2820
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 2821
    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2823
    aget-object v2, p2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "Launcher.LauncherProvider"

    .line 2824
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

    invoke-static {v0, p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
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

    .line 2830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find launcherActivityInfoList with pkg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 2835
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

    .line 2836
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "Launcher.LauncherProvider"

    .line 2837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find LauncherActivityInfo with className="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    goto :goto_1

    :cond_4
    if-nez v1, :cond_6

    const-string p0, "Launcher.LauncherProvider"

    const-string p1, "find LauncherActivityInfo in launcherActivityInfoList[0]"

    .line 2843
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    goto :goto_2

    :cond_5
    const-string p0, "Launcher.LauncherProvider"

    const-string p1, "not find launcherActivityInfoList at last"

    .line 2847
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 966
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v2, "favorites"

    const-string v1, "intent"

    const-string v3, "profileId"

    .line 967
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

    .line 974
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 975
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 976
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 978
    :cond_0
    :try_start_0
    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 981
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 984
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v2

    .line 985
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

    .line 987
    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getCellX(Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x12

    .line 2519
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2521
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2522
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isInDesktopContainer(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "favorite"

    .line 2523
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "shortcut"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "folder"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2524
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2525
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p2

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    .line 2526
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getContainer(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 2542
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2543
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0x64

    .line 2544
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
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

    .line 871
    :try_start_0
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 872
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 873
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v10, :cond_2

    .line 878
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

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

    .line 1146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1149
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 1150
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1151
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x2

    .line 1152
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v3, v4, :cond_0

    const-string v3, "folder"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1153
    sget-object v3, Lcom/miui/home/R$styleable;->Favorite:[I

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v4, 0xf

    .line 1154
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1155
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1156
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1162
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    const-string p0, "Launcher.LauncherProvider"

    const-string v1, "getLocalLayoutSystemCreatedFolderTitles, error when get parser"

    .line 1160
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 1142
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

    .line 1125
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1126
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/AutoInstallsLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getRemoteLayoutSystemCreatedFolderTitles(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    .line 1127
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1128
    sget-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    return-object p0

    .line 1131
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/install/OthersInRomConfigParser;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/OthersInRomConfigParser;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getRemoteLayoutSystemCreatedFolderTitles(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    .line 1132
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1133
    sget-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    return-object p0

    .line 1136
    :cond_2
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getLocalLayoutSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    .line 1138
    :cond_3
    sget-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    return-object p0
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "SELECT MAX(_id) FROM favorites"

    const/4 v1, 0x0

    .line 2256
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    .line 2261
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 2262
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2265
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 2271
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    .line 2269
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error: could not query max id"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private insertAppToFolder(JLcom/miui/home/launcher/util/ComponentKey;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;)Z
    .locals 8

    .line 951
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "cellX"

    .line 952
    invoke-static {p4, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellY"

    const/4 v7, 0x0

    .line 953
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "screen"

    const/4 v2, -0x1

    .line 954
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "container"

    .line 955
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 956
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    iget-object p2, p3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    if-eqz p2, :cond_0

    iget-object p2, p3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    goto :goto_0

    .line 957
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p1

    const-string v0, "profileId"

    .line 958
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 959
    new-instance v3, Landroid/content/Intent;

    const-string p1, "android.intent.action.MAIN"

    const/4 p2, 0x0

    invoke-direct {v3, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.category.LAUNCHER"

    .line 960
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    iget-object p1, p3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 962
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p4

    move-object v2, p5

    .line 961
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

    .line 946
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

    .line 947
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

    .line 855
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "screens"

    .line 856
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "screens"

    const-string v0, "count(*)"

    .line 859
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

.method private isInDesktopContainer(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, -0x64

    .line 2532
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static isSystemDefaultFolder(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1121
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

    .line 888
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select count(*) from sqlite_master where type=\'table\' and name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 890
    invoke-virtual {v1, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 891
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 892
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p1, :cond_2

    .line 897
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

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

    .line 1949
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1950
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1951
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1952
    invoke-static {p1, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateDefaultFolderLabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "updateDefaultFolderLabel fail"

    .line 1956
    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static synthetic lambda$onUpgrade$1(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "update folder label exception"

    .line 1958
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private loadDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 3

    .line 927
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isXLargeMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 929
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 931
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 936
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 937
    invoke-static {p2}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 938
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->moveUnsetPositionToOtherAppsFolder(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V

    .line 940
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 941
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->updateRomPreintallAppsPositionInDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 942
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 4

    const-string v0, "DROP TABLE IF EXISTS favorites"

    .line 2297
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,launchCount TEXT,sortMode INTEGER,itemFlags INTEGER NOT NULL DEFAULT 0,profileId INTEGER NOT NULL DEFAULT 0,label STRING,appWidgetProvider STRING);"

    .line 2298
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2325
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->get(Landroid/content/Context;)Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2327
    invoke-virtual {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->loadConfig()V

    .line 2330
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/AutoInstallsLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2335
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

    .line 2337
    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2339
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseRemote(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2345
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/install/OthersInRomConfigParser;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/OthersInRomConfigParser;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseRemote(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 2349
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseLocal(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)I

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

    .line 994
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    .line 996
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getApplicationInDb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    move-result-object v1

    .line 997
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 998
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

    .line 999
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1000
    invoke-static {}, Lcom/miui/home/launcher/AppFilter;->newInstance()Lcom/miui/home/launcher/AppFilter;

    move-result-object v4

    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 1001
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v4, v5, v6}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1002
    invoke-direct {p0, p1, p3, v3, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->insertShortcutAppToFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/LauncherProvider;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1003
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private moveUnsetPositionToOtherAppsFolder(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 11

    const-string v0, "com.miui.home:string/default_folder_title_other_apps"

    .line 1010
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    const-string p1, "Launcher.LauncherProvider"

    const-string p2, "have NO other app folder in db"

    .line 1012
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1017
    invoke-interface {p2}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->moveAppToDefaultFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Landroid/content/pm/PackageManager;)Ljava/util/Set;

    move-result-object p2

    .line 1019
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1020
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->getElderlyManTopLikeAppsList(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    .line 1021
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

    .line 1022
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p0

    move-wide v2, v7

    move-object v4, v10

    move-object v5, p1

    move-object v6, v0

    .line 1023
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->insertAppToFolder(JLcom/miui/home/launcher/util/ComponentKey;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;)Z

    const-string v1, "Launcher.LauncherProvider"

    .line 1024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "move app("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") to other folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "Launcher.LauncherProvider"

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keep old man like app("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private parseLayout(ILandroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$InstallCache;)I
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    .line 2372
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 2373
    invoke-virtual {v9, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2374
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2376
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x0

    .line 2381
    :try_start_0
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2385
    :try_start_1
    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v15

    const-string v1, "favorites"

    .line 2386
    invoke-static {v14, v1}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2388
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move v1, v13

    .line 2391
    :goto_0
    :try_start_2
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2392
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v6, :cond_20

    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 2398
    :cond_1
    iget-object v2, v7, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/miui/home/R$styleable;->Favorite:[I

    invoke-virtual {v2, v15, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 2401
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "include"

    .line 2403
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "layout"

    .line 2404
    invoke-interface {v14, v10, v4, v13}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 2406
    invoke-direct {v7, v4, v0, v8}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseLayout(ILandroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$InstallCache;)I

    move-result v4
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v1, v4

    move/from16 v16, v1

    goto :goto_1

    :cond_2
    move/from16 v16, v1

    :goto_1
    :try_start_3
    const-string v1, "cmcc"

    .line 2411
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_8

    :cond_3
    const-string v1, "no_cmcc"

    .line 2412
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v1, :cond_8

    :cond_4
    const-string v1, "meitu"

    .line 2413
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz v1, :cond_8

    :cond_5
    const-string v1, "no_meitu"

    .line 2414
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-nez v1, :cond_8

    :cond_6
    const-string v1, "installed"

    .line 2415
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x9

    if-eqz v1, :cond_7

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$InstallCache;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const-string v1, "no_installed"

    .line 2416
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$InstallCache;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2417
    :cond_8
    invoke-direct {v7, v14}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_9
    const-string v1, "command"

    .line 2421
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x6

    .line 2422
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    .line 2423
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x8

    .line 2424
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2421
    invoke-static {v1, v4, v3}, Lcom/miui/home/launcher/LayoutCommandParser;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2425
    invoke-direct {v7, v14}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    move/from16 v1, v16

    goto/16 :goto_0

    .line 2429
    :cond_a
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 2431
    invoke-direct {v7, v5, v11, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->fillCommonContentValues(Landroid/content/res/TypedArray;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "default"

    .line 2433
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x5

    .line 2434
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2435
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2436
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIgnoreAlignScreenList(Ljava/lang/String;)V

    :cond_b
    const-string v1, "screen"

    .line 2438
    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->setDefaultScreen(J)V

    move-object v10, v5

    move/from16 v17, v6

    goto/16 :goto_3

    :cond_c
    const-string v1, "favorite"

    .line 2439
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v11

    move-object v4, v5

    move-object v10, v5

    move-object v5, v12

    move/from16 v17, v6

    move-object v6, v9

    .line 2440
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v1

    goto/16 :goto_4

    :cond_d
    move-object v10, v5

    move/from16 v17, v6

    const-string v1, "search"

    .line 2441
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_f

    .line 2442
    invoke-static {v0, v11}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_e

    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_e
    move v1, v13

    goto/16 :goto_4

    :cond_f
    const-string v1, "google_search"

    .line 2443
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0xd

    .line 2444
    invoke-static {v0, v11, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_10

    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_10
    move v1, v13

    goto/16 :goto_4

    :cond_11
    const-string v1, "google_original_search"

    .line 2445
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2446
    iget-object v1, v7, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-static {v0, v11, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addGoogleOriginalSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_12

    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_12
    move v1, v13

    goto/16 :goto_4

    :cond_13
    const-string v1, "clock1x4"

    .line 2447
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2448
    invoke-static {v0, v11}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClock1x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_14

    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_14
    move v1, v13

    goto/16 :goto_4

    :cond_15
    const-string v1, "clock2x4"

    .line 2449
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2450
    invoke-static {v0, v11}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClock2x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_4

    :cond_16
    move v1, v13

    goto :goto_4

    :cond_17
    const-string v1, "clock3x4"

    .line 2451
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2452
    invoke-static {v0, v11}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClock3x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_4

    :cond_18
    move v1, v13

    goto :goto_4

    :cond_19
    const-string v1, "appwidget"

    .line 2453
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2454
    invoke-direct {v7, v0, v11, v10, v12}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z

    move-result v1

    goto :goto_4

    :cond_1a
    const-string v1, "shortcut"

    .line 2455
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2456
    invoke-direct {v7, v0, v11, v10}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v1

    goto :goto_4

    :cond_1b
    const-string v1, "folder"

    .line 2457
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2458
    invoke-direct {v7, v0, v11, v10}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v1

    goto :goto_4

    :cond_1c
    const-string v1, "gadget"

    .line 2459
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2460
    invoke-direct {v7, v0, v11, v10}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v1

    goto :goto_4

    :cond_1d
    const-string v1, "toggle"

    .line 2461
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2462
    invoke-direct {v7, v0, v11, v10}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addToggle(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v1
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :cond_1e
    :goto_3
    move v1, v13

    :goto_4
    if-eqz v1, :cond_1f

    add-int/lit8 v16, v16, 0x1

    :cond_1f
    move/from16 v1, v16

    .line 2467
    :try_start_4
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v6, v17

    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move/from16 v1, v16

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 v1, v16

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move v1, v13

    :goto_5
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    .line 2472
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_5
    move-exception v0

    move v1, v13

    :goto_6
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    .line 2470
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_7
    return v1

    :catch_6
    return v13
.end method

.method private parseLocal(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)I
    .locals 2

    .line 2364
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result p2

    new-instance v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$InstallCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$InstallCache;-><init>(Lcom/miui/home/launcher/LauncherProvider$1;)V

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseLayout(ILandroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$InstallCache;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2366
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method private parseRemote(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2354
    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    const-string p1, "delete from favorites"

    .line 2357
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private queryDupColumnCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 811
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

    .line 817
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 823
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

    .line 820
    invoke-static {p2, v1, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 823
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p1, 0x0

    return p1

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method public static queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I
    .locals 3

    const/4 v0, 0x0

    .line 2079
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

    .line 2081
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 2082
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2087
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

    :cond_2
    throw p0

    :catch_0
    if-eqz v0, :cond_3

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

    .line 2183
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

    .line 2185
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2186
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2190
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2191
    :cond_2
    throw p0
.end method

.method static queryIdByPackageName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2201
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

    .line 2204
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2205
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2209
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2210
    :cond_2
    throw p0
.end method

.method public static queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2165
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

    .line 2167
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2168
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2172
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2173
    :cond_2
    throw p0
.end method

.method public static queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 2

    .line 2094
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

    .line 2058
    invoke-static {p0, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    :try_start_0
    const-string v4, "favorites"

    const-string p3, "_id"

    .line 2062
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

    .line 2064
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    if-eqz v2, :cond_0

    .line 2070
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p0

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method static removeSkippedItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .line 2100
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

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

    .line 2101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";end"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2101
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const-string v3, "favorites"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    .line 2105
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 2106
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 2105
    invoke-static {p0, v3, v4, v5}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .line 914
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 915
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static setDefaultScreen(J)V
    .locals 0

    .line 2550
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    return-void
.end method

.method private skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2275
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 2280
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 2276
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private tryRemoveDupIdRows(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "_id"

    .line 830
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryDupColumnCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Launcher.LauncherProvider"

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryRemoveDupIdRows, dupIdCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    const-string v0, "create table dupFavorites as select * from favorites;"

    .line 833
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "delete from favorites where _id in (select _id from favorites GROUP by _id HAVING count(_id) > 1);"

    .line 834
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "insert into favorites SELECT * FROM dupFavorites GROUP by _id HAVING count(_id) > 1;"

    .line 835
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "DROP TABLE dupFavorites;"

    .line 836
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    const-string p1, "Launcher.LauncherProvider"

    const-string v0, "after tryRemoveDupIdRows"

    .line 838
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static updateDefaultFolderLabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 6

    .line 2130
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2132
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 2133
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v3, "label"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "favorites"

    .line 2134
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2135
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 2134
    invoke-static {p0, p1, v2, v3, v4}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V
    .locals 2

    .line 2122
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2123
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v1, "container"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2124
    sget-object p3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string p4, "cellX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "favorites"

    .line 2125
    sget-object p4, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string p5, "_id=?"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 2126
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 2125
    invoke-static {p0, p3, p4, p5, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static updateSettingIconToToggle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2155
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

    .line 2158
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method static upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 5

    .line 2140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10200000

    .line 2141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 2143
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2144
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2145
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

    .line 2146
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2147
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

    .line 2149
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2150
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

    .line 2151
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createdFirstTime()Z
    .locals 1

    .line 1033
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mCreatedFirstTime:Z

    return v0
.end method

.method public generateNewId()J
    .locals 4

    .line 2248
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2251
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 2252
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    .line 2249
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPreferenceValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDatabaseReady()Z
    .locals 1

    .line 904
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    return v0
.end method

.method public loadDefaultWorkspace(Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 4

    const/4 v0, 0x1

    .line 1037
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mCreatedFirstTime:Z

    .line 1038
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "database_ready_pref_key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1039
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1040
    invoke-direct {p0, v1, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V

    .line 1041
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    .line 1042
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string p2, "database_ready_pref_key"

    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1043
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

    .line 920
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/4 p1, 0x0

    .line 922
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/16 v0, 0xb

    if-lt p3, v0, :cond_0

    return-void

    .line 2244
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

    .line 1272
    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    new-instance v14, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v15, 0x0

    invoke-direct {v14, v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 1279
    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1280
    iget-object v0, v12, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const/16 v0, 0x9

    move/from16 v1, p2

    if-ge v1, v0, :cond_0

    .line 1282
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    move v1, v0

    :cond_0
    const/16 v2, 0xa

    if-ne v1, v0, :cond_1

    const-string v0, "ALTER TABLE favorites ADD COLUMN launchCount INTEGER NOT NULL DEFAULT 1"

    .line 1287
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE favorites ADD COLUMN sortMode INTEGER"

    .line 1289
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move v1, v2

    :cond_1
    const/16 v0, 0xb

    if-ne v1, v2, :cond_2

    const-string v1, "ALTER TABLE favorites ADD COLUMN itemFlags INTEGER NOT NULL DEFAULT 0"

    .line 1295
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move v1, v0

    :cond_2
    const/16 v2, 0xc

    if-ne v1, v0, :cond_3

    const-string v0, "UPDATE favorites SET title=\'com.miui.home:string/default_folder_title_tools\' WHERE title=\'com.android.launcher:string/default_folder_title_tools\';"

    .line 1301
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "UPDATE favorites SET title=\'com.miui.home:string/default_folder_title_recommend\' WHERE title=\'com.android.launcher:string/default_folder_title_recommend\';"

    .line 1304
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "com.miui.camera/.Camera"

    .line 1309
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.camera/.Camera"

    .line 1310
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1308
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.android.gallery/.ui.MainActivity"

    .line 1313
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.gallery/.app.Gallery"

    .line 1314
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1312
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.miui.player/.drawerActivityGroup.MainActivityGroup"

    .line 1317
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.player/.ui.MusicBrowserActivity"

    .line 1318
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1316
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.android.settings/.Settings"

    .line 1321
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.settings/.MiuiSettings"

    .line 1322
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1320
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.miui.supermarket/.MainActivity"

    .line 1325
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.xiaomi.market/.ui.MainTabActivity"

    .line 1326
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1324
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.android.deskclock/.DeskClock"

    .line 1329
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.deskclock/.DeskClockTabActivity"

    .line 1330
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1328
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "UPDATE favorites SET intent=\'#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.deskclock/.DeskClockTabActivity;end\' WHERE intent=\'#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.deskclock/.DeskClock;end\';"

    .line 1331
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "com.android.contacts/.TwelveKeyDialer"

    .line 1340
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.contacts/.activities.TwelveKeyDialer"

    .line 1341
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1339
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.android.contacts/.DialtactsContactsEntryActivity"

    .line 1344
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.contacts/.activities.PeopleActivity"

    .line 1345
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1343
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

    .line 1351
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_8

    const-string v1, "com.android.settings/.VirusScanActivity"

    .line 1353
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.wali.miui.networkassistant/.NetworkAssistantActivity"

    .line 1354
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v19

    const-string v3, "com.android.settings/.MiuiPasswordGuardActivity"

    .line 1355
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "com.miui.backup/.BackupActivity"

    .line 1356
    invoke-static {v13, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v21

    const-string v5, "com.miui.antispam/.firewall.FirewallTab"

    .line 1357
    invoke-static {v13, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v23

    const-string v5, "com.lbe.security.miui/com.lbe.security.ui.MainActivity"

    .line 1358
    invoke-static {v13, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v25

    const-string v5, "com.lbe.security.miui/com.lbe.security.ui.AutoStartAppList"

    .line 1359
    invoke-static {v13, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v1, v1, v17

    if-nez v1, :cond_8

    cmp-long v1, v3, v17

    if-nez v1, :cond_8

    cmp-long v1, v5, v17

    if-nez v1, :cond_8

    .line 1361
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1362
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "title"

    const-string v3, "com.miui.home:string/default_folder_title_security"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "itemType"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1364
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "container"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1365
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "spanX"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1366
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "spanY"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1367
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "screen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "favorites"

    .line 1368
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v13, v1, v15, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    const-string v1, "com.android.settings/.VirusScanActivity"

    .line 1370
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v27

    move-object/from16 v7, v16

    .line 1372
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    cmp-long v1, v19, v17

    if-eqz v1, :cond_4

    const/4 v6, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, v19

    move-wide/from16 v4, v27

    .line 1375
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_0

    :cond_4
    const-string v1, "com.wali.miui.networkassistant/.NetworkAssistantActivity"

    .line 1377
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v27

    move-object/from16 v7, v16

    .line 1379
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :goto_0
    const-string v1, "com.android.settings/.MiuiPasswordGuardActivity"

    .line 1382
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v27

    move-object/from16 v7, v16

    .line 1384
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    cmp-long v1, v21, v17

    if-eqz v1, :cond_5

    const/4 v6, 0x3

    move-object/from16 v1, p1

    move-wide/from16 v2, v21

    move-wide/from16 v4, v27

    .line 1387
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    :cond_5
    cmp-long v1, v23, v17

    if-eqz v1, :cond_6

    const/4 v6, 0x4

    move-object/from16 v1, p1

    move-wide/from16 v2, v23

    move-wide/from16 v4, v27

    .line 1390
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    :cond_6
    cmp-long v1, v25, v17

    if-eqz v1, :cond_7

    const/4 v6, 0x5

    move-object/from16 v1, p1

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    .line 1393
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_1

    :cond_7
    const-string v1, "com.lbe.security.miui/com.lbe.security.ui.MainActivity"

    .line 1395
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v27

    move-object/from16 v7, v16

    .line 1397
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :goto_1
    const-string v1, "com.lbe.security.miui/com.lbe.security.ui.AutoStartAppList"

    .line 1400
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v27

    move-object/from16 v7, v16

    .line 1402
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :cond_8
    move v1, v0

    :cond_9
    const/16 v7, 0xe

    const/4 v6, 0x0

    if-ne v1, v0, :cond_f

    const-string v0, "com.xiaomi.market/.ui.MainTabActivity"

    .line 1411
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.xiaomi.market/.ui.MarketTabActivity"

    .line 1412
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1410
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.lbe.security.miui/com.lbe.security.ui.MainActivity"

    .line 1415
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.settings/.permission.PermManageActivity"

    .line 1416
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1414
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.lbe.security.miui/com.lbe.security.ui.AutoStartAppList"

    .line 1419
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.settings/.BackgroundApplicationsManager"

    .line 1420
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1418
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.miui.bugreport/.BugReportActivity"

    .line 1423
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.bugreport/.ui.TypeSelectionActivity"

    .line 1424
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1422
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1425
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

    .line 1429
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v17

    if-eqz v0, :cond_a

    const-string v0, "com.xiaomi.xmsf/.payment.MiliCenterEntryActivity"

    .line 1431
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

    .line 1433
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    goto :goto_2

    :cond_a
    move v15, v6

    move v0, v7

    :goto_2
    const-string v2, "favorites"

    const-string v1, "screen"

    .line 1436
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

    .line 1440
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1441
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1442
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 1444
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

    .line 1448
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_b

    .line 1449
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

    .line 1459
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

    .line 1460
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

    .line 1471
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->removeSkippedItems(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "com.xiaomi.xmsf/.account.ui.MiCloudSettingsActivity"

    .line 1472
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v22

    const-string v0, "com.android.stk/.StkLauncherActivity"

    .line 1473
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v24

    const-string v0, "com.miui.home:string/default_folder_title_security"

    .line 1475
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v0, v8, v17

    if-eqz v0, :cond_12

    const-string v2, "favorites"

    const-string v0, "_id"

    .line 1477
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

    .line 1479
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    cmp-long v1, v22, v17

    if-nez v1, :cond_13

    const-string v1, "com.xiaomi.xmsf/.account.ui.MiCloudSettingsActivity"

    .line 1482
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 1486
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "container=? AND _id=?"

    new-array v5, v10, [Ljava/lang/String;

    .line 1488
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

    .line 1486
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1490
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

    .line 1491
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    move-wide/from16 v4, v26

    move v6, v0

    .line 1492
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_6

    :cond_10
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v26

    move v6, v0

    move-object/from16 v7, v16

    .line 1494
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_6
    if-eqz v8, :cond_13

    .line 1498
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

    .line 1505
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

    .line 1506
    :cond_15
    throw v0

    :cond_16
    :goto_a
    const/16 v0, 0xf

    const/16 v8, 0x10

    if-ne v1, v0, :cond_18

    const-string v0, "com.miui.home:string/default_folder_title_recommend"

    .line 1513
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v6, v17

    if-eqz v0, :cond_17

    .line 1515
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

    .line 1516
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

    .line 1525
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v17, v4

    if-eqz v0, :cond_19

    .line 1527
    invoke-static {v13, v4, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v6

    const-string v0, "com.miui.transfer/cn.kuaipan.mishare.LogoActivity"

    .line 1528
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v17, v0

    if-nez v0, :cond_19

    const-string v0, "com.miui.transfer/cn.kuaipan.mishare.LogoActivity"

    .line 1529
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v7, v16

    .line 1531
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :cond_19
    const/16 v1, 0x11

    :cond_1a
    const/16 v0, 0x11

    if-ne v1, v0, :cond_25

    const-string v0, "com.miui.home:string/default_folder_title_tools"

    .line 1538
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v17

    if-eqz v2, :cond_23

    .line 1540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _id, cellX, cellY, screen FROM favorites WHERE _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1550
    :try_start_9
    invoke-virtual {v13, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 1551
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v0, :cond_1b

    const/4 v9, 0x1

    .line 1552
    :try_start_b
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    const/4 v7, 0x2

    .line 1553
    :try_start_c
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x3

    .line 1554
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

    .line 1557
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

    .line 1560
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

    .line 1569
    :try_start_f
    invoke-virtual {v13, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1570
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

    .line 1575
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

    .line 1583
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

    .line 1588
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v17

    if-eqz v0, :cond_22

    .line 1592
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

    .line 1599
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1601
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1602
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v5, "container"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1603
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "cellX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1604
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v2, "cellY"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1605
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v1, "screen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1606
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

    .line 1615
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_1a

    :catch_7
    move-exception v0

    .line 1618
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name: screenType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    :goto_1a
    const/16 v1, 0x13

    goto :goto_1b

    .line 1619
    :cond_26
    throw v0

    :cond_27
    :goto_1b
    const/16 v0, 0x13

    if-ne v1, v0, :cond_29

    .line 1625
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.miui.securitycenter.Main"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycenter"

    const-string v3, "com.miui.securitycenter.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1627
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.weather2"

    const-string v2, "com.miui.weather2.ActivityWeatherCycle"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.weather2"

    const-string v3, "com.miui.weather2.ActivityWeatherMain"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1629
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.xmsf"

    const-string v2, "com.xiaomi.xmsf.account.ui.MiCloudSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.cloudservice"

    const-string v3, "com.miui.cloudservice.ui.MiCloudInfoSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1631
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.duokan.phone.remotecontroller"

    const-string v2, "com.xiaomi.mitv.phone.remotecontroller.HoriWidgetMainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.duokan.phone.remotecontroller"

    const-string v3, "com.xiaomi.mitv.phone.remotecontroller.HoriWidgetMainActivityV2"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1633
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

    .line 1635
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v17

    if-eqz v2, :cond_28

    const-string v2, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.xiaomi.account/.ui.MiCloudSettingsActivity;end"

    .line 1637
    invoke-static {v13, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v17

    if-nez v2, :cond_28

    const-string v2, "com.xiaomi.account/.ui.MiCloudSettingsActivity"

    .line 1641
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1643
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1644
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v3, "container"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1645
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v1, "cellX"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1646
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v1, "cellY"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1647
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v1, "screen"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1648
    sget-object v3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, v16

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    .line 1651
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x14

    :cond_29
    const/16 v0, 0x14

    if-ne v1, v0, :cond_2a

    .line 1655
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x15

    :cond_2a
    const/16 v0, 0x15

    if-ne v1, v0, :cond_2b

    .line 1659
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

    .line 1665
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x17

    :cond_2c
    const/16 v0, 0x17

    const/16 v10, 0x18

    if-ne v1, v0, :cond_2e

    :try_start_14
    const-string v0, "ALTER TABLE favorites ADD profileId INTEGER NOT NULL DEFAULT 0 "

    .line 1671
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_1c

    :catch_8
    move-exception v0

    .line 1674
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :goto_1c
    move v1, v10

    goto :goto_1d

    .line 1675
    :cond_2d
    throw v0

    :cond_2e
    :goto_1d
    if-ne v1, v10, :cond_2f

    .line 1683
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1685
    :try_start_15
    iget-object v0, v12, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 1686
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "profileId"

    long-to-int v0, v0

    .line 1687
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "favorites"

    const/4 v1, 0x0

    .line 1688
    invoke-static {v13, v0, v2, v1, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1689
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 1691
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v1, 0x19

    goto :goto_1e

    :catchall_a
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_2f
    :goto_1e
    const/16 v0, 0x19

    if-ne v1, v0, :cond_30

    const-string v0, "update favorites set launchCount = launchCount+1 where itemType = 2"

    .line 1697
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v1, 0x1a

    :cond_30
    const/16 v0, 0x1a

    if-ne v1, v0, :cond_31

    .line 1703
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x1b

    :cond_31
    const/16 v0, 0x1b

    if-ne v1, v0, :cond_32

    .line 1708
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.barcodescanner"

    const-string v2, "com.miui.barcodescanner.activity.CaptureActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.scanner"

    const-string v3, "com.xiaomi.scanner.app.ScanActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1710
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

    .line 1716
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_33

    const-string v0, "favorites"

    const-string v1, "uri=?"

    const-string v2, "file:///system/media/theme/default/gadgets/music.mtz"

    .line 1717
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_33
    const/16 v1, 0x1d

    :cond_34
    const/16 v0, 0x1d

    if-ne v1, v0, :cond_35

    .line 1724
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x1e

    :cond_35
    const/16 v0, 0x1e

    if-ne v1, v0, :cond_36

    const-string v0, "com.miui.gallery/.app.Gallery"

    .line 1731
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.gallery/.activity.HomePageActivity"

    .line 1732
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1730
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.miui.bugreport/.ui.MainActivity"

    .line 1735
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.bugreport/.ui.MainTabActivity"

    .line 1736
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1734
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.android.deskclock/.DeskClock"

    .line 1739
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.deskclock/.DeskClockTabActivity"

    .line 1740
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1738
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/16 v1, 0x1f

    :cond_36
    const/16 v0, 0x1f

    if-ne v1, v0, :cond_37

    const-string v0, "favorites"

    const-string v1, "appWidgetId=? AND itemType = ? "

    const-string v2, "5"

    const-string v3, "5"

    .line 1745
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1748
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x20

    :cond_37
    const/16 v0, 0x20

    if-ne v1, v0, :cond_38

    .line 1753
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "appWidgetId"

    const/16 v2, 0x3e8

    .line 1754
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "favorites"

    const-string v2, "appWidgetId >= ? AND itemType = ?"

    .line 1755
    new-array v3, v7, [Ljava/lang/String;

    const/16 v4, 0x3e8

    .line 1757
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x5

    .line 1758
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 1755
    invoke-static {v13, v1, v0, v2, v3}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x21

    :cond_38
    const/16 v0, 0x21

    if-ne v1, v0, :cond_3a

    :try_start_16
    const-string v0, "ALTER TABLE favorites ADD label STRING "

    .line 1764
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_9

    goto :goto_1f

    :catch_9
    move-exception v0

    .line 1767
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    :goto_1f
    const/16 v1, 0x22

    goto :goto_20

    .line 1768
    :cond_39
    throw v0

    :cond_3a
    :goto_20
    const/16 v0, 0x22

    if-ne v1, v0, :cond_46

    :try_start_17
    const-string v2, "favorites"

    const-string v0, "_id"

    .line 1779
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

    .line 1782
    :cond_3b
    :goto_21
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v2, 0x0

    .line 1783
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    .line 1784
    invoke-static {v13, v2, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "favorites"

    .line 1785
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

    .line 1790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    goto :goto_22

    :cond_3d
    move-object v11, v1

    .line 1794
    :goto_22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "ToggleId=10;"

    .line 1795
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=15;"

    .line 1796
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=11;"

    .line 1797
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=1;"

    .line 1798
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=9;"

    .line 1799
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "BluetoothSettingsActivity"

    .line 1800
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "TetherSettingsActivity"

    .line 1801
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ZonePickerActivity"

    .line 1802
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_19
    const-string v2, "favorites"

    const-string v1, "intent"

    .line 1805
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

    .line 1809
    :cond_3e
    :goto_23
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x0

    .line 1810
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1812
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

    .line 1813
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/4 v3, 0x0

    goto :goto_24

    :cond_40
    if-eqz v3, :cond_3e

    const-string v1, "favorites"

    const-string v3, "intent=?"

    .line 1818
    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v13, v1, v3, v4}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_23

    :cond_41
    const-string v0, "favorites"

    const-string v1, "appWidgetId=7"

    const/4 v2, 0x0

    .line 1822
    invoke-static {v13, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1824
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_42

    const-string v0, "/system/media/theme/default/gadgets/clock.mtz"

    .line 1826
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

    .line 1829
    :cond_42
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteEmptyScreen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    if-eqz v11, :cond_43

    .line 1832
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_43
    const/16 v1, 0x23

    goto :goto_26

    :catchall_b
    move-exception v0

    if-eqz v11, :cond_44

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1833
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

    .line 1790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1791
    :cond_45
    throw v0

    :cond_46
    :goto_26
    const/16 v0, 0x23

    if-ne v1, v0, :cond_48

    .line 1840
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_47

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_47

    .line 1841
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.account"

    const-string v2, "com.xiaomi.account.ui.AccountSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.vipaccount"

    const-string v3, "com.xiaomi.vipaccount.ui.VipAccountActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1843
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

    .line 1854
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

    .line 1856
    :goto_27
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1857
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "profileId"

    const-string v4, "profileId"

    .line 1858
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "container"

    const-string v4, "container"

    .line 1859
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "screen"

    const-string v4, "screen"

    .line 1860
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cellX"

    const-string v4, "cellX"

    .line 1861
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cellY"

    const-string v4, "cellY"

    .line 1862
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    invoke-static {v13, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClock2x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    goto :goto_27

    .line 1865
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

    .line 1869
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

    .line 1870
    :cond_4b
    throw v0

    :cond_4c
    :goto_29
    const/16 v0, 0x25

    if-ne v1, v0, :cond_4d

    .line 1877
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1878
    new-array v1, v10, [I

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launchCount"

    .line 1879
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "favorites"

    const/4 v10, 0x0

    .line 1880
    invoke-static {v13, v1, v0, v10, v10}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x26

    goto :goto_2a

    :cond_4d
    const/4 v10, 0x0

    :goto_2a
    const/16 v0, 0x26

    if-ne v1, v0, :cond_4f

    .line 1885
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4e

    .line 1886
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

    .line 1893
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_50

    .line 1894
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

    .line 1897
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_50

    const-string v1, "Google"

    .line 1898
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v17

    if-eqz v1, :cond_50

    .line 1900
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v7, v16

    .line 1901
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

    .line 1909
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :try_start_1c
    const-string v2, "favorites"

    const-string v0, "_id"

    const-string v1, "appWidgetId"

    .line 1913
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

    .line 1915
    :cond_53
    :goto_2b
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v2, 0x0

    .line 1916
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1917
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1918
    iget-object v3, v12, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 1920
    sget-object v3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1921
    sget-object v3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v4, "appWidgetProvider"

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "favorites"

    .line 1922
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

    goto :goto_2e

    :catch_b
    move-exception v0

    move-object v1, v10

    .line 1926
    :goto_2c
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    if-eqz v1, :cond_55

    .line 1929
    :goto_2d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_55
    const/16 v1, 0x2a

    :cond_56
    const/16 v0, 0x2a

    if-ne v1, v0, :cond_57

    const-string v0, "#Intent;action=com.miui.action.SETTINGS_SHURTCUT;component=com.android.settings/.Settings%24BluetoothSettingsActivity;end"

    const-string v1, "#Intent;action=com.miui.action.TOGGLE_SHURTCUT;i.ToggleId=2;end"

    .line 1937
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateSettingIconToToggle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "#Intent;action=com.miui.action.SETTINGS_SHURTCUT;component=com.android.settings/.Settings%24TetherSettingsActivity;end"

    const-string v1, "#Intent;action=com.miui.action.TOGGLE_SHURTCUT;i.ToggleId=24;end"

    .line 1939
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateSettingIconToToggle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "favorites"

    const-string v1, "intent=?"

    const-string v2, "#Intent;action=com.miui.action.SETTINGS_SHURTCUT;component=com.android.settings/.Settings%24ZonePickerActivity;end"

    .line 1941
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x2b

    :cond_57
    const/16 v0, 0x2b

    if-ne v1, v0, :cond_58

    .line 1947
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$bGv1KmwWdy4uoPJ-sdQTr5X-Z3c;

    invoke-direct {v0, v12, v13}, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$bGv1KmwWdy4uoPJ-sdQTr5X-Z3c;-><init>(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$FyRvmtkLKnUh1r9Guru8ZVGKsz4;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$FyRvmtkLKnUh1r9Guru8ZVGKsz4;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava8/util/function/Consumer;)V

    const/16 v1, 0x2c

    :cond_58
    const/16 v0, 0x2c

    if-ne v1, v0, :cond_59

    const-string v0, "favorites"

    const-string v1, "itemType=?"

    .line 1964
    new-array v2, v9, [Ljava/lang/String;

    .line 1965
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1964
    invoke-static {v13, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x2d

    :cond_59
    move/from16 v2, p3

    if-eq v1, v2, :cond_5a

    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Destroying all old data and re-create."

    .line 1974
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5a
    return-void

    :catchall_11
    move-exception v0

    :goto_2e
    if-eqz v1, :cond_5b

    .line 1929
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1930
    :cond_5b
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

    .line 2218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "favorites"

    const-string v2, "appWidgetId"

    .line 2220
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

    .line 2222
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2223
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 2224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2225
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

    .line 2229
    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 2232
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2233
    :cond_3
    throw p1
.end method

.method public updatePreferenceValue(Landroid/content/ContentValues;)V
    .locals 6

    .line 1051
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

    .line 1052
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1053
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 1054
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1055
    :cond_0
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 1056
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    goto :goto_0

    .line 1057
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 1058
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1059
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 1060
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 1062
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method
