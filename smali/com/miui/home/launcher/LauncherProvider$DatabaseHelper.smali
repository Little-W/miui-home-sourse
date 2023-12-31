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

    .line 747
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 752
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x38

    .line 751
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 743
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 744
    iput-wide v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    const/4 v0, 0x1

    .line 745
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    const/4 v0, 0x0

    .line 746
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mCreatedFirstTime:Z

    .line 754
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 755
    new-instance v4, Landroid/appwidget/AppWidgetHost;

    const/16 v5, 0x400

    invoke-direct {v4, p1, v5}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    move v4, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 760
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

    .line 762
    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v5, 0x32

    .line 763
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    .line 766
    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    goto :goto_0

    .line 772
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isDatabaseLegal(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 773
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->fixFavoritesTableIfNeed(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 774
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->tryRemoveDupIdRows(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 775
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_3

    .line 776
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 779
    :cond_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private UpdateDatabaseClockProductId(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 2045
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getClockValues()Landroid/content/ContentValues;

    move-result-object p0

    const-string v0, "d7b7cf12-29ab-4cd6-afe5-f006d5112d48"

    const-string v1, "bc128052-1c50-4da8-b920-0728aa957a98"

    const-string v2, "4"

    .line 2047
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "product_id=? OR product_id=? AND _id<=?"

    const-string v2, "favorites"

    invoke-static {p1, v2, p0, v1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;I)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpDefaultWorkspace(I)V

    return-void
.end method

.method static synthetic access$001(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadFavorites$___twin___(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseDefaultLayout$___twin___(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;)Landroid/content/Context;
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;)Landroid/appwidget/AppWidgetHost;
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 0

    .line 737
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryPackageNameByItemType(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 4

    const-wide/16 v0, -0x1

    const-string v2, "Launcher.LauncherProvider"

    if-eqz p6, :cond_0

    .line 2675
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2677
    :cond_0
    invoke-static {p4, p5, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getAppShortcutActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p2

    if-nez p2, :cond_2

    .line 2679
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to add favorite: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->canAutoInstall(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2682
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "add auto install info "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    invoke-static {p0, p1, p4}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAutoInstallShortcutInfo(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide v0

    .line 2687
    :cond_2
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p5

    .line 2688
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add favorite: "

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v2, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p6, "title"

    invoke-virtual {p1, p6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p5

    .line 2691
    :goto_0
    new-instance p5, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p6

    invoke-direct {p5, p2, p6}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-static {p5}, Lcom/miui/home/launcher/LauncherHideApp;->isHideApp(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 2692
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " app was hidden = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    .line 2695
    :cond_3
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10200000

    .line 2696
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 2698
    invoke-virtual {p3, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p3

    const-string p5, "intent"

    invoke-virtual {p1, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "itemType"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "iconPackage"

    .line 2700
    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 2701
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "spanX"

    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2702
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "spanY"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    const-string p3, "favorites"

    .line 2703
    invoke-static {p0, p3, p2, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V
    .locals 6

    .line 2225
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2226
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "container"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-ltz p5, :cond_0

    .line 2228
    sget-object p3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "cellX"

    invoke-virtual {p3, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2229
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
    .locals 8

    if-eqz p3, :cond_0

    const/16 p0, 0xc

    .line 2659
    invoke-virtual {p3, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2660
    :cond_0
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v4, p0

    const/4 p0, 0x1

    if-eqz p3, :cond_1

    .line 2661
    invoke-virtual {p3, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2662
    :cond_1
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v0

    const/4 v7, 0x0

    if-eqz p3, :cond_2

    const/16 v0, 0x10

    .line 2663
    invoke-virtual {p3, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_2

    move v6, p0

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    .line 2664
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-ltz p1, :cond_3

    return p0

    :cond_3
    return v7
.end method

.method private static addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)J
    .locals 1

    const-string p5, "Launcher.LauncherProvider"

    :try_start_0
    const-string p6, "itemType"

    const/4 v0, 0x4

    .line 2819
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p6, "spanX"

    .line 2820
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanY"

    .line 2821
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "appWidgetId"

    const/4 p4, -0x1

    .line 2822
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "appWidgetProvider"

    .line 2823
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "favorites"

    const/4 p4, 0x0

    .line 2824
    invoke-static {p0, p3, p4, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    .line 2825
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "addAppWidget "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    const-string p1, "Problem allocating appWidgetId"

    .line 2828
    invoke-static {p5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/os/Bundle;)J
    .locals 11

    move-object v0, p2

    move-object v1, p3

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2808
    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p7

    .line 2809
    invoke-static {v0, v6}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isProviderAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v4, p0

    move-object v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 2810
    invoke-static/range {v4 .. v10}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method private static addAutoInstallShortcutInfo(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 5

    .line 2707
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2708
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 2709
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "invalidClassName"

    invoke-direct {v3, p2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x10200000

    .line 2711
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x0

    .line 2713
    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "intent"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    .line 2715
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "itemType"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "iconPackage"

    .line 2716
    invoke-virtual {p1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 2717
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "iconType"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v3, 0x10

    .line 2718
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "itemFlags"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2719
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iconResource"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 2720
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "spanX"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "spanY"

    .line 2721
    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2722
    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    const-string v3, "com.miui.core"

    invoke-virtual {v0, p2, v1, v3}, Lcom/miui/home/launcher/progress/ProgressManager;->recordProgressInfo(Ljava/lang/String;ILjava/lang/String;)V

    const-string p2, "favorites"

    .line 2723
    invoke-static {p0, p2, v2, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addClock1x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x7

    .line 2782
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addClock2x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x6

    .line 2786
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addClock3x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/16 v0, 0x8

    .line 2790
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;III)J
    .locals 4

    const-string v0, "com.miui.home:string/default_folder_title_claro"

    .line 2624
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "label"

    const-string/jumbo v2, "title"

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MX"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "com.miui.home:string/default_folder_title_telcel"

    .line 2625
    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2628
    :cond_0
    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "itemType"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2632
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "spanX"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2633
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "spanY"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    const-string p3, "favorites"

    .line 2634
    invoke-static {p0, p3, p2, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addGoogleOriginalSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;IILandroid/appwidget/AppWidgetHost;)J
    .locals 7

    .line 2766
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v5

    .line 2767
    new-instance v2, Landroid/content/ComponentName;

    const-string v0, "com.google.android.googlequicksearchbox"

    const-string v1, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    invoke-static {v5, v2}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->isProviderAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-gtz p2, :cond_0

    .line 2770
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

    .line 2772
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

    .line 2639
    new-instance v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(Landroid/net/Uri;)V

    .line 2641
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->loadMtzGadget()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "spanX"

    .line 2642
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "spanY"

    .line 2643
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "itemType"

    .line 2644
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "appWidgetId"

    .line 2645
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p2, "uri"

    .line 2646
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "favorites"

    const/4 v0, 0x0

    .line 2647
    invoke-static {p0, p2, v0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 2650
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J
    .locals 3

    .line 2794
    invoke-static {p2}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    .line 2795
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanX"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2796
    iget v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x5

    .line 2797
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2798
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "favorites"

    const/4 v0, 0x0

    .line 2799
    invoke-static {p0, p2, v0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x3

    .line 2778
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private addShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 5

    const/4 p0, 0x0

    .line 2885
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p2, :cond_0

    return p0

    .line 2888
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2889
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "iconType"

    .line 2890
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "iconResource"

    .line 2891
    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3a

    .line 2892
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p2, p0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v4, "iconPackage"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p7, "container"

    invoke-virtual {v2, p7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2894
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p7, "cellX"

    invoke-virtual {v2, p7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2895
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p7, "cellY"

    invoke-virtual {v2, p7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    .line 2896
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    const-string p8, "spanX"

    invoke-virtual {v2, p8, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2897
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    const-string p8, "spanY"

    invoke-virtual {v2, p8, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2898
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2899
    invoke-virtual {v1, p4, p5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x10200000

    .line 2900
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p3, "android.intent.category.DEFAULT"

    .line 2902
    invoke-virtual {v1, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2903
    invoke-virtual {v1, p0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    const-string p3, "intent"

    invoke-virtual {v2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "title"

    .line 2904
    invoke-virtual {v2, p0, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "itemType"

    invoke-virtual {v2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2906
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p0, 0x0

    const-string p3, "favorites"

    .line 2907
    invoke-static {p1, p3, p0, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return p2
.end method

.method public static addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 4

    const-wide/16 v0, -0x1

    if-nez p4, :cond_0

    return-wide v0

    .line 2856
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

    .line 2859
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 2860
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "iconType"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "iconResource"

    .line 2861
    invoke-virtual {p1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "iconPackage"

    .line 2862
    invoke-virtual {p1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x1

    .line 2863
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v2, "spanX"

    invoke-virtual {p1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2864
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v2, "spanY"

    invoke-virtual {p1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2865
    invoke-virtual {v0, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2866
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_2

    .line 2867
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p8, :cond_3

    .line 2870
    invoke-static {p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_3
    const-string p2, "android.intent.category.DEFAULT"

    .line 2872
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2873
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "intent"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "title"

    .line 2874
    invoke-virtual {p1, p2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "itemType"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2876
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p9, :cond_4

    .line 2878
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "isShortcut"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    const/4 p2, 0x0

    const-string p3, "favorites"

    .line 2880
    invoke-static {p0, p3, p2, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private createFavoritesTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TRIGGER IF EXISTS update_item_on_update_item;"

    .line 1161
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "CREATE TRIGGER update_item_on_update_item  AFTER UPDATE of container ON favorites  WHEN (new.itemType == 0 OR new.itemType == 1) AND (new.container > 0) BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | (SELECT ((itemFlags>>1)&1) from favorites where _id==new.container))     WHERE _id==new._id;  END"

    .line 1162
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "DROP TRIGGER IF EXISTS update_item_on_update_home;"

    .line 1164
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "CREATE TRIGGER update_item_on_update_home  AFTER UPDATE of container ON favorites  WHEN (new.itemType == 0 OR new.itemType == 1) AND (new.container <= 0) BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | 0)     WHERE _id==new._id;  END"

    .line 1165
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "DROP TRIGGER IF EXISTS update_item_on_update_folder;"

    .line 1167
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "CREATE TRIGGER update_item_on_update_folder  AFTER UPDATE of itemFlags ON favorites  WHEN new.itemType == 2  BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | ((new.itemFlags>>1)&1))      WHERE container==new._id;  END"

    .line 1168
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 31

    move-object/from16 v9, p1

    const-string v10, "="

    const-string v11, " | "

    const-string v12, "container"

    const-string v13, "COUNT()"

    const-string v14, " AND "

    const-string v0, "DROP TABLE IF EXISTS screens"

    .line 1172
    invoke-static {v9, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE screens (_id INTEGER PRIMARY KEY,title TEXT,screenOrder INTEGER NOT NULL DEFAULT -1,screenType INTEGER NOT NULL DEFAULT 0);"

    .line 1174
    invoke-static {v9, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "MAX(screen)"

    .line 1182
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "favorites"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_d

    .line 1188
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v8, 0x0

    .line 1189
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v7, 0x1

    add-int/lit8 v6, v0, 0x1

    .line 1190
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1191
    new-array v4, v6, [J

    move-object/from16 v0, p0

    .line 1192
    iget-object v0, v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0034

    .line 1193
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    move v3, v0

    :goto_0
    const-wide/16 v16, -0x1

    if-ge v3, v6, :cond_a

    .line 1194
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    const-string v0, "screenOrder"

    .line 1195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1199
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const-string v2, "Launcher.LauncherProvider"

    if-eqz v0, :cond_5

    :try_start_1
    const-string v0, "favorites"

    .line 1201
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "spanX+spanY>2 AND screen="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, -0x64

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v1, p1

    move-object/from16 v26, v2

    move-object v2, v0

    move/from16 v27, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v20

    move-object/from16 v28, v5

    move-object/from16 v5, v21

    move/from16 v20, v6

    move-object/from16 v6, v22

    move v0, v7

    move-object/from16 v7, v23

    move-object/from16 v19, v15

    move v15, v8

    move-object/from16 v8, v24

    :try_start_2
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    const-string v2, "favorites"

    .line 1205
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spanX=1 AND spanY=1 AND screen="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v7, v27

    :try_start_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "itemType"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move/from16 v29, v7

    move-object v7, v0

    move-object/from16 p0, v8

    move-object/from16 v8, v21

    :try_start_5
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1210
    :try_start_6
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v2, p0

    .line 1211
    :try_start_7
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1212
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1213
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_0

    .line 1222
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v1, :cond_1

    .line 1225
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :cond_1
    move-object/from16 v4, v26

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    :goto_1
    move-object/from16 v25, v1

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    :goto_2
    move-object/from16 v30, v2

    move-object v2, v1

    move-object/from16 v1, v30

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_3

    :catch_3
    move-exception v0

    move/from16 v29, v7

    move-object v2, v8

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v8

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v8

    move/from16 v29, v27

    :goto_3
    move-object v1, v2

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move/from16 v29, v27

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v19, v15

    :goto_4
    const/4 v2, 0x0

    :goto_5
    const/16 v25, 0x0

    goto :goto_9

    :catch_6
    move-exception v0

    move-object/from16 v26, v2

    move/from16 v29, v3

    move-object/from16 v18, v4

    move-object/from16 v28, v5

    move/from16 v20, v6

    move-object/from16 v19, v15

    move v15, v8

    :goto_6
    const/4 v1, 0x0

    :goto_7
    const/4 v2, 0x0

    :goto_8
    :try_start_9
    const-string v3, "createScreensTable fail"

    move-object/from16 v4, v26

    .line 1218
    invoke-static {v4, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v1, :cond_2

    .line 1222
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_6

    .line 1225
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object/from16 v25, v2

    move-object v2, v1

    :goto_9
    if-eqz v2, :cond_3

    .line 1222
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v25, :cond_4

    .line 1225
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1227
    :cond_4
    throw v0

    :cond_5
    move/from16 v29, v3

    move-object/from16 v18, v4

    move-object/from16 v28, v5

    move/from16 v20, v6

    move-object/from16 v19, v15

    move-object v4, v2

    move v15, v8

    .line 1229
    :cond_6
    :goto_a
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    const/4 v8, -0x1

    move/from16 v1, v29

    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    .line 1230
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isShowQuickCallCellLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_b

    :cond_7
    move v0, v8

    goto :goto_b

    :cond_8
    move v0, v15

    :goto_b
    if-ne v0, v8, :cond_9

    .line 1237
    aput-wide v16, v18, v1

    move-object/from16 v5, v28

    goto :goto_c

    :cond_9
    const-string v2, "screenType"

    .line 1239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v5, v28

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "screens"

    const/4 v3, 0x0

    .line 1240
    invoke-static {v9, v2, v3, v5}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    aput-wide v2, v18, v1

    .line 1242
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createScreensTable, ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v18, v1

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v1, 0x1

    move v8, v15

    move-object/from16 v4, v18

    move-object/from16 v15, v19

    move/from16 v6, v20

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v18, v4

    move/from16 v20, v6

    move v1, v7

    move-object/from16 v19, v15

    move v15, v8

    add-int/lit8 v6, v20, -0x1

    :goto_d
    if-ltz v6, :cond_e

    .line 1245
    aget-wide v2, v18, v6

    cmp-long v0, v2, v16

    if-nez v0, :cond_b

    goto :goto_e

    .line 1247
    :cond_b
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    const-string v0, "screen"

    .line 1248
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "favorites"

    const-string v2, "screen=?"

    new-array v3, v1, [Ljava/lang/String;

    .line 1253
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    .line 1249
    invoke-static {v9, v0, v5, v2, v3}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :goto_e
    add-int/lit8 v6, v6, -0x1

    goto :goto_d

    :catchall_7
    move-exception v0

    goto :goto_f

    :catchall_8
    move-exception v0

    move-object/from16 v19, v15

    :goto_f
    if-eqz v19, :cond_c

    .line 1258
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1260
    :cond_c
    throw v0

    :cond_d
    move-object/from16 v19, v15

    :cond_e
    if-eqz v19, :cond_f

    .line 1258
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_f
    return-void
.end method

.method private deleteClockBack()V
    .locals 4

    .line 2092
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    const-string v1, "clock_bak"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 2093
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2094
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2095
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 2096
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2097
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2100
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private deleteEmptyScreen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    const-string p0, "_id="

    const-string v0, "screenType"

    const-string v1, "_id"

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "screens"

    .line 2108
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2110
    :try_start_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2111
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2112
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2113
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2114
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2115
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2116
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2117
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2118
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2121
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2122
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2125
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v7, "favorites"

    const-string v0, "screen"

    .line 2128
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2130
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 2131
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2136
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2139
    :try_start_4
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2140
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2141
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2142
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2143
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2148
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2149
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v1, v2

    :cond_6
    :goto_3
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "screens"

    const-string v5, "screenOrder"

    .line 2150
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2153
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2154
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "screens"

    .line 2155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v6, v4, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE screens SET screenOrder=screenOrder-1 WHERE screenOrder>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_7
    move-object v1, v2

    :cond_8
    if-eqz v1, :cond_9

    .line 2164
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v1, v3

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2166
    :cond_a
    throw p0
.end method

.method private dumpDefaultWorkspace(I)V
    .locals 3

    .line 2501
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2502
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2503
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2502
    invoke-direct {p0, v0, v1, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpDefaultWorkspaceImpl(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2504
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/16 p1, 0x64

    const-string v0, "dump default workspace succeeded."

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private dumpDefaultWorkspaceImpl(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "iconResource"

    const-string v3, "folder"

    const-string v4, "default"

    const-string v5, "favorites"

    const-string v6, "launcher"

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2516
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    .line 2517
    new-instance v10, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;

    invoke-direct {v10}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;-><init>()V

    .line 2518
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p2

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "utf-8"

    .line 2519
    invoke-virtual {v10, v11, v9}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2520
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2521
    invoke-virtual {v10, v8, v5}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "xmlns:launcher"

    const-string v12, "http://schemas.android.com/apk/res-auto"

    .line 2522
    invoke-virtual {v10, v8, v9, v12}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2523
    invoke-virtual {v10, v8, v4}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "screen"

    .line 2524
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v6, v9, v12}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2525
    invoke-virtual {v10, v8, v4}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2527
    iget-object v4, v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v9, p1

    invoke-virtual {v4, v9}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    .line 2528
    invoke-static {v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v12, "SELECT * FROM favorites WHERE itemType=2 ORDER BY screen ASC, cellY ASC, cellX ASC"

    .line 2529
    invoke-virtual {v4, v12, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2533
    :goto_0
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-string/jumbo v14, "true"

    const-string/jumbo v15, "title"

    if-eqz v13, :cond_1

    .line 2534
    :try_start_2
    invoke-virtual {v10, v8, v3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "_id"

    .line 2535
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v7, v13

    move-object v13, v10

    .line 2536
    iget-wide v9, v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mPresetsContainerId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const-string v7, "presets_container"

    move-object v8, v13

    .line 2537
    invoke-virtual {v8, v6, v7, v14}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_0
    move-object v8, v13

    .line 2539
    :goto_1
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v15, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2540
    invoke-direct {v1, v12, v8, v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 2541
    invoke-virtual {v8, v7, v3}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v10, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move-object v8, v10

    .line 2543
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string v3, "SELECT * FROM favorites WHERE itemType!=2 ORDER BY screen ASC, cellY ASC, cellX ASC"
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v7, 0x0

    .line 2546
    :try_start_4
    invoke-virtual {v4, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2550
    :goto_2
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "itemType"

    .line 2551
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v7, 0x5

    if-eqz v4, :cond_6

    const/4 v9, 0x1

    if-eq v4, v9, :cond_5

    if-eq v4, v7, :cond_2

    goto :goto_3

    :cond_2
    const-string v9, "appWidgetId"

    .line 2562
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    const-string v9, "search"

    goto :goto_4

    :cond_3
    const/4 v10, 0x6

    if-ne v9, v10, :cond_4

    const-string v9, "clock2x4"

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    const-string v9, "shortcut"

    goto :goto_4

    :cond_6
    const-string v9, "favorite"

    :goto_4
    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    .line 2573
    invoke-virtual {v8, v10, v9}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x1

    if-eq v4, v10, :cond_a

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    if-ne v4, v7, :cond_9

    .line 2593
    invoke-direct {v1, v3, v8, v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V

    :cond_9
    :goto_5
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_a
    :goto_6
    const-string v7, "intent"

    .line 2575
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 2576
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v10, "packageName"

    .line 2577
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v6, v10, v12}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "className"

    .line 2578
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v6, v10, v12}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2579
    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/home/launcher/LauncherSettings;->isRetainedPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "retained"

    .line 2580
    invoke-virtual {v8, v6, v10, v14}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2582
    :cond_b
    invoke-direct {v1, v3, v8, v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->dumpWorkspaceWritePos(Landroid/database/Cursor;Lcom/miui/launcher/utils/LauncherFastXmlSerializer;Ljava/lang/String;)V

    const/4 v10, 0x1

    if-ne v4, v10, :cond_9

    .line 2584
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v6, v15, v4}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "action"

    .line 2585
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v4, v10}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2586
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v6, v2, v4}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2587
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "uri"

    .line 2588
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v4, v7}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 2595
    :goto_7
    invoke-virtual {v8, v4, v9}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    :cond_c
    const/4 v7, 0x0

    .line 2597
    invoke-virtual {v8, v7, v5}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2598
    invoke-virtual {v8}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->endDocument()V

    .line 2599
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_d

    .line 2606
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d
    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v8, v3

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    const/4 v7, 0x0

    goto :goto_9

    :catch_2
    move-exception v0

    const/4 v7, 0x0

    :goto_8
    move-object v1, v0

    move-object v8, v7

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v3, v12

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v8, v12

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v7, v8

    :goto_9
    move-object v1, v0

    move-object v3, v7

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v7, v8

    move-object v1, v0

    .line 2603
    :goto_a
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v8, :cond_e

    .line 2606
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_e
    const/4 v1, 0x0

    return v1

    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v3, v8

    :goto_b
    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2608
    :cond_f
    throw v1
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

    const-string p0, "container"

    .line 2613
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const-string p0, "screen"

    .line 2615
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, p0, v0}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2617
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, p0, v0}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    const-string p0, "cellX"

    .line 2619
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "x"

    invoke-virtual {p2, p3, v0, p0}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "cellY"

    .line 2620
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "y"

    invoke-virtual {p2, p3, p1, p0}, Lcom/miui/launcher/utils/LauncherFastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static fillSerialNumber(Landroid/content/ContentValues;)V
    .locals 2

    .line 2491
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    .line 2492
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 2493
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "profileId"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private fixFavoritesTableIfNeed(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 817
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result p0

    const-string v0, "Launcher.LauncherProvider"

    if-nez p0, :cond_0

    .line 818
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "db is not integrity, try fix table favorites, beginTime="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "create table favorites2 as select * from favorites;"

    .line 819
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "DROP TABLE favorites;"

    .line 820
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "ALTER TABLE favorites2 RENAME TO favorites;"

    .line 821
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 822
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fixFavoritesTableIfNeed, endTime="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "db is integrity"

    .line 824
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getAppShortcutActivityInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/LauncherActivityInfo;
    .locals 5

    .line 2727
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2729
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 2731
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "Launcher.LauncherProvider"

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    .line 2732
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2734
    aget-object v2, p2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find launcherActivityInfoList with pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", try use pkg="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p2, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
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

    .line 2741
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find launcherActivityInfoList with pkg="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 2746
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

    .line 2747
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find LauncherActivityInfo with className="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    goto :goto_1

    :cond_4
    if-nez v1, :cond_6

    const-string p0, "find LauncherActivityInfo in launcherActivityInfoList[0]"

    .line 2754
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    goto :goto_2

    :cond_5
    const-string p0, "not find launcherActivityInfoList at last"

    .line 2758
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-object v1
.end method

.method private getApplicationInDb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;
    .locals 11
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

    .line 941
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "intent"

    const-string v2, "profileId"

    .line 942
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "favorites"

    const-string v6, "itemType=0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 949
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 950
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 951
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 953
    :cond_0
    :try_start_0
    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 956
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 959
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v2

    .line 960
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

    .line 962
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getClockValues()Landroid/content/ContentValues;
    .locals 5

    .line 2051
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2052
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getMamlInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object p0

    .line 2053
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const-string v2, "product_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v4, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->installMaMlFromExternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2057
    invoke-static {p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResPath(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getExtraIntentParams()Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x1

    .line 2061
    invoke-virtual {p0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getItemCountInDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 p0, -0x1

    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 846
    :try_start_0
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 847
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 848
    invoke-interface {v9, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v9, :cond_2

    .line 853
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 855
    :cond_1
    throw p0

    :catch_0
    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return p0
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

    .line 1139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1142
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 1143
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1144
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x2

    .line 1145
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v3, v4, :cond_0

    const-string v3, "folder"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1146
    sget-object v3, Lcom/miui/home/R$styleable;->Favorite:[I

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v4, 0x14

    .line 1147
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1148
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1149
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1155
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    const-string p0, "Launcher.LauncherProvider"

    const-string v1, "getLocalLayoutSystemCreatedFolderTitles, error when get parser"

    .line 1153
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getMamlInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
    .locals 1

    .line 2067
    new-instance p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    const/4 v0, 0x4

    .line 2068
    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    const/4 v0, 0x2

    .line 2069
    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    const-string v0, "52b8238d-848f-4608-a0e6-28458d4b1f2c"

    .line 2070
    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const-string v0, "ma_0216952801892370215809"

    .line 2071
    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->pickerID:Ljava/lang/String;

    const/16 v0, 0x3f3

    .line 2072
    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->addSource:I

    const/16 v0, 0xc

    .line 2073
    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    const-string v0, "file:///system/media/theme/default/maml/maml_clock_4x2_v3.mtz"

    .line 2074
    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    .line 2075
    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->allocMaMlWidgetId()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    return-object p0
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

    .line 1135
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

    .line 1118
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1119
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/AutoInstallsLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getRemoteLayoutSystemCreatedFolderTitles(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    .line 1120
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1121
    sget-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    return-object p0

    .line 1124
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/install/OthersInRomConfigParser;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/OthersInRomConfigParser;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getRemoteLayoutSystemCreatedFolderTitles(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    .line 1125
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1126
    sget-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    return-object p0

    .line 1129
    :cond_2
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getLocalLayoutSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    .line 1131
    :cond_3
    sget-object p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mSystemCreatedFolderTitles:Ljava/util/Set;

    return-object p0
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "SELECT MAX(_id) FROM favorites"

    const/4 v1, 0x0

    .line 2386
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    .line 2391
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 2392
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2395
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 2401
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    .line 2399
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: could not query max id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private insertAppToFolder(JLcom/miui/home/launcher/util/ComponentKey;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;)Z
    .locals 8

    .line 926
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 927
    invoke-static {p4, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "cellX"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x0

    .line 928
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "cellY"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, -0x1

    .line 929
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "screen"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "container"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 931
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p0

    .line 932
    iget-object p1, p3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    if-eqz p1, :cond_0

    iget-object p1, p3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p0

    .line 933
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "profileId"

    invoke-virtual {v1, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 934
    new-instance v3, Landroid/content/Intent;

    const/4 p0, 0x0

    const-string p1, "android.intent.action.MAIN"

    invoke-direct {v3, p1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p0, "android.intent.category.LAUNCHER"

    .line 935
    invoke-virtual {v3, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    iget-object p0, p3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 937
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p4

    move-object v2, p5

    .line 936
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-lez p0, :cond_1

    const/4 v7, 0x1

    :cond_1
    return v7
.end method

.method private insertShortcutAppToFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/LauncherProvider;)Z
    .locals 9

    .line 921
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

    .line 922
    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->insertAppToFolder(JLcom/miui/home/launcher/util/ComponentKey;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDatabaseLegal(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8

    const-string v0, "favorites"

    .line 830
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "screens"

    .line 831
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "count(*)"

    .line 834
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "screens"

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getItemCountInDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public static isSystemDefaultFolder(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1114
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
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 863
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select count(*) from sqlite_master where type=\'table\' and name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 865
    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 866
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 867
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p1, :cond_2

    .line 872
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 874
    :cond_1
    throw p0

    :catch_0
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method static synthetic lambda$onUpgrade$1(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher.LauncherProvider"

    const-string/jumbo v1, "update folder label exception"

    .line 1951
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private loadDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 3

    .line 902
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isXLargeMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 904
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 906
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 911
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 912
    invoke-static {p2}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 913
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->moveUnsetPositionToOtherAppsFolder(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V

    .line 915
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 916
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->updateRomPreintallAppsPositionInDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 917
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_debug_LauncherLoadTrace_loadFavorites(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method private loadFavorites$___twin___(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 4

    const-string v0, "DROP TABLE IF EXISTS favorites"

    .line 2410
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,launchCount TEXT,sortMode INTEGER,itemFlags INTEGER NOT NULL DEFAULT 0,profileId INTEGER NOT NULL DEFAULT 0,label STRING,appWidgetProvider STRING,originWidgetId INTEGER NOT NULL DEFAULT -1,product_id STRING);"

    .line 2411
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2441
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->get(Landroid/content/Context;)Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2442
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isInWorkManagedMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2443
    invoke-virtual {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->loadConfig()V

    .line 2446
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/AutoInstallsLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2451
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

    .line 2453
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2455
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseRemote(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2460
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/install/OthersInRomConfigParser;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/home/launcher/install/OthersInRomConfigParser;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->parseRemote(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 2464
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

    .line 969
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    .line 971
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getApplicationInDb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Set;

    move-result-object v1

    .line 972
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 973
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

    .line 974
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 975
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

    .line 976
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherHideApp;->isHideApp(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    iget-object v5, v3, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 977
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v4, v5, v6}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 978
    invoke-direct {p0, p1, p3, v3, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->insertShortcutAppToFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/LauncherProvider;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 979
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private moveUnsetPositionToOtherAppsFolder(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 12

    const-string v0, "com.miui.home:string/default_folder_title_other_apps"

    .line 986
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    const-string v9, "Launcher.LauncherProvider"

    if-nez v0, :cond_0

    const-string p0, "have NO other app folder in db"

    .line 988
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 993
    invoke-interface {p2}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllComponentKey()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->moveAppToDefaultFolderByAppCategory(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Landroid/content/pm/PackageManager;)Ljava/util/Set;

    move-result-object p2

    .line 995
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 996
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->getElderlyManTopLikeAppsList(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    .line 997
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/miui/home/launcher/util/ComponentKey;

    .line 998
    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p0

    move-wide v2, v7

    move-object v4, v11

    move-object v5, p1

    move-object v6, v0

    .line 999
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->insertAppToFolder(JLcom/miui/home/launcher/util/ComponentKey;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;)Z

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move app("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") to other folder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1002
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keep old man like app("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private parseDefaultLayout(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;->com_miui_home_launcher_debug_LauncherLoadTrace_parseDefaultLayout(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method private parseDefaultLayout$___twin___(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 4

    .line 2478
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result p2

    .line 2479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse default workspace name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.LauncherProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    :try_start_0
    new-instance v0, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;

    invoke-direct {v0}, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;-><init>()V

    .line 2482
    new-instance v2, Lcom/miui/home/launcher/defaultlayout/DefaultContext;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-direct {v2, p1, p2, v3, p0}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;-><init>(Landroid/database/sqlite/SQLiteDatabase;ILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)V

    .line 2483
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 2484
    invoke-virtual {v2}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Got exception parsing favorites."

    .line 2486
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private parseRemote(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 2469
    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    if-nez p0, :cond_2

    const-string p1, "delete from favorites"

    .line 2472
    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_2
    return p0
.end method

.method private queryDupColumnCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 8

    const/4 p0, 0x0

    :try_start_0
    const-string v1, "favorites"

    const-string v0, "_id"

    .line 786
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v6, "count(*) > 1"

    const/4 v7, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 792
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 798
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return p1

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "Launcher.LauncherProvider"

    const-string v0, "queryDupColumnCount error"

    .line 795
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 798
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x0

    return p0

    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 800
    :cond_3
    throw p1
.end method

.method public static queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I
    .locals 3

    const/4 v0, 0x0

    .line 2191
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

    .line 2193
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 2194
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2199
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

    .line 2201
    :cond_2
    throw p0

    :catch_0
    if-eqz v0, :cond_3

    .line 2199
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

    .line 2313
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

    .line 2315
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2316
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2320
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2323
    :cond_2
    throw p0
.end method

.method public static queryIdByLabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2295
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

    .line 2297
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2298
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2302
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2305
    :cond_2
    throw p0
.end method

.method static queryIdByPackageName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2331
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

    .line 2334
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2335
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2339
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2342
    :cond_2
    throw p0
.end method

.method public static queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "_id"

    .line 2277
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "title=?"

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

    .line 2279
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2280
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2284
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2287
    :cond_2
    throw p0
.end method

.method public static queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 2

    .line 2206
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

    .line 2170
    invoke-static {p0, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    :try_start_0
    const-string v4, "favorites"

    const-string p3, "_id"

    .line 2174
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

    .line 2176
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    if-eqz v2, :cond_0

    .line 2182
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2184
    :cond_1
    throw p0

    :cond_2
    if-eqz v2, :cond_3

    .line 2182
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

    const-string p0, "intent"

    .line 2913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "favorites"

    .line 2915
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "itemType=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 2916
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v10, 0x0

    aput-object p2, v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 2915
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 2917
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2918
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2919
    invoke-static {p1, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2920
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2921
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "pkgName"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2922
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2923
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 2928
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 2931
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2934
    :cond_3
    throw p0
.end method

.method static removeSkippedItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 2212
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

    .line 2213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";end"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2213
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 2218
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "favorites"

    const-string v2, "_id=?"

    .line 2217
    invoke-static {p0, v1, v2, v3}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendAppWidgetResetNotify()V
    .locals 2

    .line 889
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 890
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static setDefaultScreen(J)V
    .locals 0

    .line 2497
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    return-void
.end method

.method private tryRemoveDupIdRows(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "_id"

    .line 805
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryDupColumnCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result p0

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tryRemoveDupIdRows, dupIdCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.LauncherProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p0, :cond_0

    const-string p0, "create table dupFavorites as select * from favorites;"

    .line 808
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "delete from favorites where _id in (select _id from favorites GROUP by _id HAVING count(_id) > 1);"

    .line 809
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "insert into favorites SELECT * FROM dupFavorites GROUP by _id HAVING count(_id) > 1;"

    .line 810
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p0, "DROP TABLE dupFavorites;"

    .line 811
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    const-string p0, "after tryRemoveDupIdRows"

    .line 813
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAllFolderAppPredictStatus(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/16 v0, 0x15

    .line 2081
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p0, v2

    const-string v0, "SELECT * FROM favorites WHERE itemType=? OR itemType=?"

    .line 2080
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2082
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2083
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 2084
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_enable_app_predict_button_view_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_UNINITIALIZED:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->getValue()I

    move-result v4

    invoke-static {v0, v2, v4}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2085
    sget-object v2, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_UNINITIALIZED:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2086
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_OPEN:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->getValue()I

    move-result v2

    invoke-static {v0, p1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static updateDefaultFolderLabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4

    .line 2242
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2244
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 2245
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v3, "label"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    sget-object p1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 2247
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "favorites"

    const-string v1, "_id=?"

    .line 2246
    invoke-static {p0, v0, p1, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V
    .locals 1

    .line 2234
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2235
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "container"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2236
    sget-object p3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "cellX"

    invoke-virtual {p3, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2237
    sget-object p3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    .line 2238
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p4, p2

    const-string p1, "favorites"

    const-string p2, "_id=?"

    .line 2237
    invoke-static {p0, p1, p3, p2, p4}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static updateSettingIconToToggle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2267
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

    .line 2270
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method static upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 5

    .line 2252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10200000

    .line 2253
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 2255
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2256
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2257
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

    .line 2258
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2259
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

    .line 2261
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2262
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

    .line 2263
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createdFirstTime()Z
    .locals 0

    .line 1009
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mCreatedFirstTime:Z

    return p0
.end method

.method public generateNewId()J
    .locals 4

    .line 2378
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2381
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 2382
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    .line 2379
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error: max id was not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPreferenceValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDatabaseReady()Z
    .locals 0

    .line 879
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    return p0
.end method

.method public synthetic lambda$onUpgrade$0$LauncherProvider$DatabaseHelper(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1942
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getSystemCreatedFolderTitles(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1943
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1945
    invoke-static {p1, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateDefaultFolderLabel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.LauncherProvider"

    const-string/jumbo v0, "updateDefaultFolderLabel fail"

    .line 1949
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public loadDefaultWorkspace(Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 5

    const-string v0, "Launcher.LauncherProvider"

    const/4 v1, 0x1

    .line 1013
    iput-boolean v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mCreatedFirstTime:Z

    .line 1014
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "database_ready_pref_key"

    invoke-static {v2, v4, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1015
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1018
    :try_start_0
    invoke-direct {p0, v2, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->loadDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1020
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " loadDefaultWorkspace err: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    :goto_0
    if-eqz p1, :cond_0

    .line 1023
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    move v3, v1

    :cond_0
    if-eqz v3, :cond_1

    .line 1026
    iput-boolean v1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    .line 1027
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v0, "home_data_create_time_key"

    invoke-static {p0, v0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    const-string p0, " loadDefaultWorkspace failure"

    .line 1029
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string p1, "Launcher.LauncherProvider"

    const-string v0, "creating new launcher database"

    .line 895
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mMaxId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/4 p1, 0x0

    .line 897
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mDatabaseReady:Z

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/16 v0, 0xb

    if-lt p3, v0, :cond_0

    return-void

    .line 2374
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 36

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const-string v0, "-"

    const-string v1, "Launcher.LauncherProvider"

    const-string v2, "onUpgrade triggered"

    .line 1265
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    new-instance v14, Landroid/content/Intent;

    const/4 v15, 0x0

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v14, v1, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 1272
    invoke-virtual {v14, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    iget-object v1, v12, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const/16 v1, 0x9

    move/from16 v2, p2

    if-ge v2, v1, :cond_0

    .line 1275
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    const-string v1, "ALTER TABLE favorites ADD COLUMN launchCount INTEGER NOT NULL DEFAULT 1"

    .line 1280
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v1, "ALTER TABLE favorites ADD COLUMN sortMode INTEGER"

    .line 1282
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v1, 0xa

    :cond_1
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    const-string v1, "ALTER TABLE favorites ADD COLUMN itemFlags INTEGER NOT NULL DEFAULT 0"

    .line 1288
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v1, 0xb

    :cond_2
    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    const-string v1, "UPDATE favorites SET title=\'com.miui.home:string/default_folder_title_tools\' WHERE title=\'com.android.launcher:string/default_folder_title_tools\';"

    .line 1294
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v1, "UPDATE favorites SET title=\'com.miui.home:string/default_folder_title_recommend\' WHERE title=\'com.android.launcher:string/default_folder_title_recommend\';"

    .line 1297
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v1, "com.miui.camera/.Camera"

    .line 1302
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.camera/.Camera"

    .line 1303
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1301
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.android.gallery/.ui.MainActivity"

    .line 1306
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.miui.gallery/.app.Gallery"

    .line 1307
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1305
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.miui.player/.drawerActivityGroup.MainActivityGroup"

    .line 1310
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.miui.player/.ui.MusicBrowserActivity"

    .line 1311
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1309
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.android.settings/.Settings"

    .line 1314
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.settings/.MiuiSettings"

    .line 1315
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1313
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.miui.supermarket/.MainActivity"

    .line 1318
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.xiaomi.market/.ui.MainTabActivity"

    .line 1319
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1317
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.android.deskclock/.DeskClock"

    .line 1322
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.deskclock/.DeskClockTabActivity"

    .line 1323
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1321
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "UPDATE favorites SET intent=\'#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.deskclock/.DeskClockTabActivity;end\' WHERE intent=\'#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.deskclock/.DeskClock;end\';"

    .line 1324
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v1, "com.android.contacts/.TwelveKeyDialer"

    .line 1333
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.contacts/.activities.TwelveKeyDialer"

    .line 1334
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1332
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.android.contacts/.DialtactsContactsEntryActivity"

    .line 1337
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.contacts/.activities.PeopleActivity"

    .line 1338
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1336
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/16 v1, 0xc

    :cond_3
    const/16 v2, 0xc

    const/4 v11, 0x2

    const-string v9, "com.miui.home:string/default_folder_title_security"

    const-string v10, "container"

    const-string v8, "screen"

    const/4 v7, -0x1

    const-string v6, "favorites"

    const/4 v4, 0x1

    const-wide/16 v17, -0x1

    if-ne v1, v2, :cond_9

    .line 1344
    invoke-static {v13, v9}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_8

    const-string v1, "com.android.settings/.VirusScanActivity"

    .line 1346
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.wali.miui.networkassistant/.NetworkAssistantActivity"

    .line 1347
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v19

    const-string v3, "com.android.settings/.MiuiPasswordGuardActivity"

    .line 1348
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v21

    const-string v3, "com.miui.backup/.BackupActivity"

    .line 1349
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v23

    const-string v3, "com.miui.antispam/.firewall.FirewallTab"

    .line 1350
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v25

    const-string v3, "com.lbe.security.miui/com.lbe.security.ui.MainActivity"

    .line 1351
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v27

    const-string v3, "com.lbe.security.miui/com.lbe.security.ui.AutoStartAppList"

    .line 1352
    invoke-static {v13, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v29

    cmp-long v1, v1, v17

    if-nez v1, :cond_8

    cmp-long v1, v21, v17

    if-nez v1, :cond_8

    cmp-long v1, v29, v17

    if-nez v1, :cond_8

    .line 1354
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1355
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "itemType"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1357
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1358
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "spanX"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1359
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "spanY"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1360
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1361
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v13, v6, v15, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v21

    const-string v1, "com.android.settings/.VirusScanActivity"

    .line 1363
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v29, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move v15, v4

    move-wide/from16 v4, v21

    move-object/from16 v31, v6

    move/from16 v6, v29

    move-object/from16 v7, v16

    .line 1365
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    cmp-long v1, v19, v17

    if-eqz v1, :cond_4

    const/4 v6, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, v19

    move-wide/from16 v4, v21

    .line 1368
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_1

    :cond_4
    const-string v1, "com.wali.miui.networkassistant/.NetworkAssistantActivity"

    .line 1370
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v21

    move-object/from16 v7, v16

    .line 1372
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :goto_1
    const-string v1, "com.android.settings/.MiuiPasswordGuardActivity"

    .line 1375
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v21

    move-object/from16 v7, v16

    .line 1377
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    cmp-long v1, v23, v17

    if-eqz v1, :cond_5

    const/4 v6, 0x3

    move-object/from16 v1, p1

    move-wide/from16 v2, v23

    move-wide/from16 v4, v21

    .line 1380
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    :cond_5
    cmp-long v1, v25, v17

    if-eqz v1, :cond_6

    const/4 v6, 0x4

    move-object/from16 v1, p1

    move-wide/from16 v2, v25

    move-wide/from16 v4, v21

    .line 1383
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    :cond_6
    cmp-long v1, v27, v17

    if-eqz v1, :cond_7

    const/4 v6, 0x5

    move-object/from16 v1, p1

    move-wide/from16 v2, v27

    move-wide/from16 v4, v21

    .line 1386
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_2

    :cond_7
    const-string v1, "com.lbe.security.miui/com.lbe.security.ui.MainActivity"

    .line 1388
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v21

    move-object/from16 v7, v16

    .line 1390
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :goto_2
    const-string v1, "com.lbe.security.miui/com.lbe.security.ui.AutoStartAppList"

    .line 1393
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v21

    move-object/from16 v7, v16

    .line 1395
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    goto :goto_3

    :cond_8
    move v15, v4

    move-object/from16 v31, v6

    :goto_3
    const/16 v1, 0xd

    goto :goto_4

    :cond_9
    move v15, v4

    move-object/from16 v31, v6

    :goto_4
    const/16 v2, 0xd

    const-string v7, "_id"

    const-string v6, "cellY"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_f

    const-string v1, "com.xiaomi.market/.ui.MainTabActivity"

    .line 1404
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.xiaomi.market/.ui.MarketTabActivity"

    .line 1405
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1403
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.lbe.security.miui/com.lbe.security.ui.MainActivity"

    .line 1408
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.settings/.permission.PermManageActivity"

    .line 1409
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1407
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.lbe.security.miui/com.lbe.security.ui.AutoStartAppList"

    .line 1412
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.android.settings/.BackgroundApplicationsManager"

    .line 1413
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1411
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v1, "com.miui.bugreport/.BugReportActivity"

    .line 1416
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "com.miui.bugreport/.ui.TypeSelectionActivity"

    .line 1417
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1415
    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1418
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    .line 1422
    :try_start_0
    invoke-static {v13, v9}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v19

    cmp-long v1, v19, v17

    if-eqz v1, :cond_a

    const-string v1, "com.xiaomi.xmsf/.payment.MiliCenterEntryActivity"

    .line 1424
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v21, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move v15, v4

    move-wide/from16 v4, v19

    move-object v11, v6

    move/from16 v6, v21

    move-object/from16 v20, v7

    move-object/from16 v7, v16

    .line 1426
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    goto :goto_5

    :cond_a
    move v15, v4

    move-object v11, v6

    move-object/from16 v20, v7

    :goto_5
    const-string v2, "favorites"

    .line 1429
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=5 AND appWidgetId=6 AND cellX=0 AND cellY=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move-object/from16 v32, v8

    move-object/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1433
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1434
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1435
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "favorites"

    .line 1437
    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container=-100 AND screen="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">3"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move v15, v8

    move-object/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1441
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_b

    .line 1442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE favorites SET cellY=cellY+1 WHERE container=-100 AND screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    if-eqz v1, :cond_e

    .line 1452
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v30, v1

    goto :goto_6

    :catchall_1
    move-exception v0

    const/16 v30, 0x0

    :goto_6
    if-eqz v30, :cond_c

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 1455
    :cond_c
    throw v0

    :cond_d
    move-object v11, v6

    move-object/from16 v20, v7

    move-object/from16 v32, v8

    :cond_e
    :goto_7
    const/16 v1, 0xe

    goto :goto_8

    :cond_f
    move-object v11, v6

    move-object/from16 v20, v7

    move-object/from16 v32, v8

    :goto_8
    const/16 v2, 0xe

    if-ne v1, v2, :cond_17

    .line 1464
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->removeSkippedItems(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v1, "com.xiaomi.xmsf/.account.ui.MiCloudSettingsActivity"

    .line 1465
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v23

    const-string v1, "com.android.stk/.StkLauncherActivity"

    .line 1466
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v25

    .line 1468
    invoke-static {v13, v9}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v1, v8, v17

    if-eqz v1, :cond_13

    const-string v2, "favorites"

    .line 1470
    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v27, v8

    move-object v8, v15

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1472
    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v9

    cmp-long v1, v23, v17

    if-nez v1, :cond_12

    const-string v1, "com.xiaomi.xmsf/.account.ui.MiCloudSettingsActivity"

    .line 1475
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    const-string v2, "favorites"

    .line 1479
    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "container=? AND _id=?"

    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    .line 1481
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p1

    move/from16 v21, v8

    move-object/from16 v8, v19

    .line 1479
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1483
    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    add-int/lit8 v6, v9, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v27

    move-object/from16 v7, v16

    .line 1484
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    move-object/from16 v1, p1

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    move v6, v9

    .line 1485
    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateItemContainer(Landroid/database/sqlite/SQLiteDatabase;JJI)V

    goto :goto_9

    :cond_10
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, v27

    move v6, v9

    move-object/from16 v7, v16

    .line 1487
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_9
    if-eqz v8, :cond_14

    .line 1491
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v30, v8

    goto :goto_a

    :catchall_3
    move-exception v0

    const/16 v30, 0x0

    :goto_a
    if-eqz v30, :cond_11

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 1493
    :cond_11
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_12
    const/16 v21, 0x2

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v30, v15

    goto :goto_c

    :cond_13
    const/16 v21, 0x2

    const/4 v15, 0x0

    :cond_14
    :goto_b
    if-eqz v15, :cond_15

    .line 1498
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_15
    const/16 v1, 0xf

    goto :goto_d

    :catchall_5
    move-exception v0

    const/16 v30, 0x0

    :goto_c
    if-eqz v30, :cond_16

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 1501
    :cond_16
    throw v0

    :cond_17
    const/16 v21, 0x2

    :goto_d
    const/16 v2, 0xf

    if-ne v1, v2, :cond_19

    const-string v1, "com.miui.home:string/default_folder_title_recommend"

    .line 1506
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v1, v8, v17

    if-eqz v1, :cond_18

    .line 1508
    invoke-static {v13, v8, v9}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v15

    const/16 v19, 0x0

    const-string v3, "com.android.fileexplorer:drawable/kuaipan_icon"

    const-string v4, "miui.intent.action.START_KUAIPAN"

    const-string v5, "com.android.fileexplorer"

    const-string v6, "com.android.fileexplorer.FileExplorerTabActivity"

    const-string v7, "com.android.fileexplorer:string/kuaipan_label"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v12, v10

    move v10, v15

    move-object/from16 v33, v11

    move/from16 v15, v21

    move/from16 v11, v19

    .line 1509
    invoke-direct/range {v1 .. v11}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    goto :goto_e

    :cond_18
    move-object v12, v10

    move-object/from16 v33, v11

    move/from16 v15, v21

    :goto_e
    const/16 v1, 0x10

    goto :goto_f

    :cond_19
    move-object v12, v10

    move-object/from16 v33, v11

    move/from16 v15, v21

    :goto_f
    const/16 v2, 0x10

    if-ne v1, v2, :cond_1b

    const-string v1, "com.miui.home:string/new_default_folder_title_tools"

    .line 1518
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v17, v4

    if-eqz v1, :cond_1a

    .line 1520
    invoke-static {v13, v4, v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v6

    const-string v1, "com.miui.transfer/cn.kuaipan.mishare.LogoActivity"

    .line 1521
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v17, v1

    if-nez v1, :cond_1a

    const-string v1, "com.miui.transfer/cn.kuaipan.mishare.LogoActivity"

    .line 1522
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v7, v16

    .line 1524
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :cond_1a
    const/16 v1, 0x11

    :cond_1b
    const/16 v2, 0x11

    const-string v9, "cellX"

    if-ne v1, v2, :cond_26

    const-string v1, "com.miui.home:string/new_default_folder_title_tools"

    .line 1531
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v17

    if-eqz v3, :cond_25

    .line 1533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT _id, cellX, cellY, screen FROM favorites WHERE _id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1543
    :try_start_9
    invoke-virtual {v13, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 1544
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    .line 1545
    :try_start_b
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1546
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    .line 1547
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_10

    :catch_0
    move-object/from16 v10, v33

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    goto/16 :goto_17

    :cond_1c
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v7, -0x1

    :goto_10
    const/4 v8, -0x1

    if-eq v7, v8, :cond_1f

    if-eq v2, v8, :cond_1f

    if-eq v3, v8, :cond_1f

    const/4 v4, 0x1

    add-int/2addr v7, v4

    .line 1550
    :try_start_c
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v4

    if-ge v7, v4, :cond_1f

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-ge v2, v4, :cond_1f

    .line 1553
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT _id FROM favorites WHERE container=-100 AND screen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")*("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "spanX"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")< 0 AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object/from16 v10, v33

    :try_start_e
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")*("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "spanY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")< 0"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    const/4 v4, 0x0

    .line 1562
    :try_start_f
    invoke-virtual {v13, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1563
    :try_start_10
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-nez v0, :cond_1d

    const/4 v4, 0x1

    goto :goto_11

    :cond_1d
    const/4 v4, 0x0

    :goto_11
    if-eqz v5, :cond_20

    .line 1568
    :try_start_11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_13

    :catchall_6
    move-exception v0

    goto :goto_12

    :catchall_7
    move-exception v0

    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_1e

    :try_start_12
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1570
    :cond_1e
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :catch_1
    move-object/from16 v10, v33

    goto :goto_16

    :catch_2
    move-object/from16 v10, v33

    move v2, v8

    move v7, v2

    goto :goto_16

    :cond_1f
    move-object/from16 v10, v33

    move v2, v8

    move v7, v2

    const/4 v4, 0x0

    :cond_20
    :goto_13
    if-eqz v1, :cond_22

    .line 1576
    :goto_14
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_18

    :catchall_8
    move-exception v0

    goto :goto_15

    :catch_3
    move-object/from16 v10, v33

    const/4 v8, -0x1

    move v2, v8

    move v3, v2

    move v7, v3

    goto :goto_16

    :catchall_9
    move-exception v0

    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_21

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1578
    :cond_21
    throw v0

    :catch_4
    move-object/from16 v10, v33

    const/4 v8, -0x1

    move v2, v8

    move v3, v2

    move v7, v3

    const/4 v1, 0x0

    :catch_5
    :goto_16
    const/4 v4, 0x0

    :catch_6
    :goto_17
    if-eqz v1, :cond_22

    goto :goto_14

    :cond_22
    :goto_18
    if-eqz v4, :cond_24

    const-string v0, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.settings/com.miui.securitycenter.Main;end"

    .line 1581
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v4, v0, v17

    if-eqz v4, :cond_23

    .line 1585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE favorites SET cellX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v32

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, -0x64

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object v7, v6

    goto :goto_19

    :cond_23
    move-object/from16 v6, v20

    move-object/from16 v11, v32

    const-string v0, "com.android.settings/com.miui.securitycenter.Main"

    .line 1592
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1594
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1595
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1596
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1597
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1598
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1599
    sget-object v3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, v16

    move-object v7, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    goto :goto_19

    :cond_24
    move-object/from16 v7, v20

    move-object/from16 v11, v32

    goto :goto_19

    :cond_25
    move-object/from16 v7, v20

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    const/4 v8, -0x1

    :goto_19
    const/16 v1, 0x12

    goto :goto_1a

    :cond_26
    move-object/from16 v7, v20

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    const/4 v8, -0x1

    :goto_1a
    const/16 v0, 0x12

    if-ne v1, v0, :cond_28

    :try_start_13
    const-string v0, "ALTER TABLE screens ADD screenType INTEGER NOT NULL DEFAULT 0"

    .line 1608
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_1b

    :catch_7
    move-exception v0

    .line 1611
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name: screenType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    :goto_1b
    const/16 v1, 0x13

    goto :goto_1c

    .line 1612
    :cond_27
    throw v0

    :cond_28
    :goto_1c
    const/16 v0, 0x13

    if-ne v1, v0, :cond_2a

    .line 1618
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.miui.securitycenter.Main"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycenter"

    const-string v3, "com.miui.securitycenter.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1620
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.weather2"

    const-string v2, "com.miui.weather2.ActivityWeatherCycle"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.weather2"

    const-string v3, "com.miui.weather2.ActivityWeatherMain"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1622
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.xmsf"

    const-string v2, "com.xiaomi.xmsf.account.ui.MiCloudSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.cloudservice"

    const-string v3, "com.miui.cloudservice.ui.MiCloudInfoSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1624
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.duokan.phone.remotecontroller"

    const-string v2, "com.xiaomi.mitv.phone.remotecontroller.HoriWidgetMainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.duokan.phone.remotecontroller"

    const-string v3, "com.xiaomi.mitv.phone.remotecontroller.HoriWidgetMainActivityV2"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1626
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.bugreport"

    const-string v2, "com.miui.bugreport.ui.TypeSelectionActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.bugreport"

    const-string v3, "com.miui.bugreport.ui.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.miui.home:string/new_default_folder_title_tools"

    .line 1628
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v17

    if-eqz v2, :cond_29

    const-string v2, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.xiaomi.account/.ui.MiCloudSettingsActivity;end"

    .line 1630
    invoke-static {v13, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByIntent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v17

    if-nez v2, :cond_29

    const-string v2, "com.xiaomi.account/.ui.MiCloudSettingsActivity"

    .line 1634
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1636
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1637
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1638
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1639
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1640
    sget-object v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1641
    sget-object v3, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, v16

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    .line 1644
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x14

    :cond_2a
    const/16 v0, 0x14

    if-ne v1, v0, :cond_2b

    .line 1648
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x15

    :cond_2b
    const/16 v0, 0x15

    if-ne v1, v0, :cond_2c

    .line 1652
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

    :cond_2c
    const/16 v0, 0x16

    if-ne v1, v0, :cond_2d

    .line 1658
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x17

    :cond_2d
    const/16 v0, 0x17

    if-ne v1, v0, :cond_2f

    :try_start_14
    const-string v0, "ALTER TABLE favorites ADD profileId INTEGER NOT NULL DEFAULT 0 "

    .line 1664
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_1d

    :catch_8
    move-exception v0

    .line 1667
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :goto_1d
    const/16 v1, 0x18

    goto :goto_1e

    .line 1668
    :cond_2e
    throw v0

    :cond_2f
    :goto_1e
    const/16 v0, 0x18

    if-ne v1, v0, :cond_30

    .line 1676
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object v8, v12

    move-object/from16 v12, p0

    .line 1678
    :try_start_15
    iget-object v0, v12, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 1679
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "profileId"

    long-to-int v0, v0

    .line 1680
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v6, v31

    const/4 v1, 0x0

    .line 1681
    invoke-static {v13, v6, v2, v1, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1682
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 1684
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v1, 0x19

    goto :goto_1f

    :catchall_a
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1685
    throw v0

    :cond_30
    move-object v8, v12

    move-object/from16 v6, v31

    move-object/from16 v12, p0

    :goto_1f
    const/16 v0, 0x19

    if-ne v1, v0, :cond_31

    const-string/jumbo v0, "update favorites set launchCount = launchCount+1 where itemType = 2"

    .line 1690
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v1, 0x1a

    :cond_31
    const/16 v0, 0x1a

    if-ne v1, v0, :cond_32

    .line 1696
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x1b

    :cond_32
    const/16 v0, 0x1b

    if-ne v1, v0, :cond_33

    .line 1701
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.barcodescanner"

    const-string v2, "com.miui.barcodescanner.activity.CaptureActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.scanner"

    const-string v3, "com.xiaomi.scanner.app.ScanActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1703
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

    :cond_33
    const/16 v0, 0x1c

    if-ne v1, v0, :cond_35

    .line 1709
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "file:///system/media/theme/default/gadgets/music.mtz"

    .line 1710
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uri=?"

    invoke-static {v13, v6, v1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_34
    const/16 v1, 0x1d

    :cond_35
    const/16 v0, 0x1d

    if-ne v1, v0, :cond_36

    .line 1717
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x1e

    :cond_36
    const/16 v0, 0x1e

    if-ne v1, v0, :cond_37

    const-string v0, "com.miui.gallery/.app.Gallery"

    .line 1724
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.gallery/.activity.HomePageActivity"

    .line 1725
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1723
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.miui.bugreport/.ui.MainActivity"

    .line 1728
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.miui.bugreport/.ui.MainTabActivity"

    .line 1729
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1727
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "com.android.deskclock/.DeskClock"

    .line 1732
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "com.android.deskclock/.DeskClockTabActivity"

    .line 1733
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1731
    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/16 v1, 0x1f

    :cond_37
    const/16 v0, 0x1f

    if-ne v1, v0, :cond_38

    const-string v0, "5"

    const-string v1, "5"

    .line 1738
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "appWidgetId=? AND itemType = ? "

    invoke-static {v13, v6, v1, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1741
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteClockBack()V

    const/16 v1, 0x20

    :cond_38
    const/16 v0, 0x20

    if-ne v1, v0, :cond_39

    .line 1746
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x3e8

    .line 1747
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v1, v15, [Ljava/lang/String;

    const/16 v2, 0x3e8

    .line 1750
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x5

    .line 1751
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "appWidgetId >= ? AND itemType = ?"

    .line 1748
    invoke-static {v13, v6, v0, v2, v1}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x21

    :cond_39
    const/16 v0, 0x21

    if-ne v1, v0, :cond_3b

    :try_start_16
    const-string v0, "ALTER TABLE favorites ADD label STRING "

    .line 1757
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_9

    goto :goto_20

    :catch_9
    move-exception v0

    .line 1760
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :goto_20
    const/16 v1, 0x22

    goto :goto_21

    .line 1761
    :cond_3a
    throw v0

    :cond_3b
    :goto_21
    const/16 v0, 0x22

    if-ne v1, v0, :cond_47

    :try_start_17
    const-string v2, "favorites"

    .line 1772
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=2"

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p1

    move-object/from16 v34, v6

    move-object v6, v0

    move-object/from16 v35, v7

    move-object v7, v15

    move-object v15, v8

    move-object/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    .line 1775
    :goto_22
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v2, 0x0

    .line 1776
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    .line 1777
    invoke-static {v13, v2, v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryFolderSize(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v2

    if-nez v2, :cond_3c

    .line 1778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v34

    const/4 v2, 0x0

    invoke-static {v13, v8, v0, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    goto :goto_23

    :cond_3c
    move-object/from16 v8, v34

    :goto_23
    move-object/from16 v34, v8

    goto :goto_22

    :cond_3d
    move-object/from16 v8, v34

    if-eqz v1, :cond_3e

    .line 1783
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v19, 0x0

    goto :goto_24

    :cond_3e
    move-object/from16 v19, v1

    .line 1787
    :goto_24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "ToggleId=10;"

    .line 1788
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=15;"

    .line 1789
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=11;"

    .line 1790
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=1;"

    .line 1791
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ToggleId=9;"

    .line 1792
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "BluetoothSettingsActivity"

    .line 1793
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "TetherSettingsActivity"

    .line 1794
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ZonePickerActivity"

    .line 1795
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_19
    const-string v2, "favorites"

    const-string v1, "intent"

    .line 1798
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "iconType=3 OR iconType=5"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-object v12, v8

    move-object/from16 v8, v20

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 1802
    :cond_3f
    :goto_25
    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, 0x0

    .line 1803
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1805
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :cond_40
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1806
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v4, 0x0

    goto :goto_26

    :cond_41
    if-eqz v4, :cond_3f

    const-string v2, "intent=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    .line 1811
    invoke-static {v13, v12, v2, v5}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_25

    :cond_42
    const-string v0, "appWidgetId=7"

    const/4 v2, 0x0

    .line 1815
    invoke-static {v13, v12, v0, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1817
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "/system/media/theme/default/gadgets/clock.mtz"

    .line 1819
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

    .line 1822
    :cond_43
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->deleteEmptyScreen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    if-eqz v1, :cond_44

    .line 1825
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_44
    const/16 v1, 0x23

    goto :goto_29

    :catchall_b
    move-exception v0

    goto :goto_27

    :catchall_c
    move-exception v0

    move-object/from16 v1, v19

    :goto_27
    if-eqz v1, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1828
    :cond_45
    throw v0

    :catchall_d
    move-exception v0

    goto :goto_28

    :catchall_e
    move-exception v0

    const/4 v1, 0x0

    :goto_28
    if-eqz v1, :cond_46

    .line 1783
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1786
    :cond_46
    throw v0

    :cond_47
    move-object v12, v6

    move-object/from16 v35, v7

    move-object v15, v8

    :goto_29
    const/16 v0, 0x23

    if-ne v1, v0, :cond_49

    .line 1833
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_48

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_48

    .line 1834
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.account"

    const-string v2, "com.xiaomi.account.ui.AccountSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.vipaccount"

    const-string v3, "com.xiaomi.vipaccount.ui.VipAccountActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1836
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.account"

    const-string v2, "com.xiaomi.account.ui.MainAccountActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.vipaccount"

    const-string v3, "com.xiaomi.vipaccount.ui.VipAccountActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_48
    const/16 v1, 0x24

    :cond_49
    const/16 v0, 0x24

    if-ne v1, v0, :cond_4d

    const-string v0, "/system/media/theme/default/gadgets/weather_clock.mtz"

    .line 1847
    :try_start_1b
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
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    .line 1849
    :goto_2a
    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1850
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "profileId"

    const-string v4, "profileId"

    .line 1851
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    invoke-static {v13, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addClock2x4(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    goto :goto_2a

    .line 1858
    :cond_4a
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
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    if-eqz v1, :cond_4b

    .line 1862
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4b
    const/16 v1, 0x25

    goto :goto_2c

    :catchall_f
    move-exception v0

    goto :goto_2b

    :catchall_10
    move-exception v0

    const/4 v1, 0x0

    :goto_2b
    if-eqz v1, :cond_4c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1865
    :cond_4c
    throw v0

    :cond_4d
    :goto_2c
    const/16 v0, 0x25

    if-ne v1, v0, :cond_4e

    .line 1870
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x18

    new-array v1, v1, [I

    .line 1871
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launchCount"

    .line 1872
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 1873
    invoke-static {v13, v12, v0, v9, v9}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x26

    goto :goto_2d

    :cond_4e
    const/4 v9, 0x0

    :goto_2d
    const/16 v0, 0x26

    if-ne v1, v0, :cond_50

    .line 1878
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4f

    .line 1879
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.fileexplorer"

    const-string v2, "com.android.fileexplorer.FileExplorerTabActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mi.android.globalFileexplorer"

    const-string v3, "com.android.fileexplorer.FileExplorerTabActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->upgradeComponentName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_4f
    const/16 v1, 0x27

    :cond_50
    const/16 v0, 0x27

    if-ne v1, v0, :cond_52

    .line 1886
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_51

    .line 1887
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

    .line 1890
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryInstalledComponentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_51

    const-string v1, "Google"

    .line 1891
    invoke-static {v13, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v17

    if-eqz v1, :cond_51

    .line 1893
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v7, v16

    .line 1894
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Intent;JILandroid/content/pm/PackageManager;)V

    :cond_51
    const/16 v1, 0x28

    :cond_52
    const/16 v0, 0x28

    if-eq v1, v0, :cond_54

    const/16 v0, 0x29

    if-ne v1, v0, :cond_53

    goto :goto_2e

    :cond_53
    move v0, v1

    move-object v3, v12

    move-object/from16 v1, p0

    goto/16 :goto_32

    :cond_54
    :goto_2e
    const-string v0, "ALTER TABLE favorites ADD COLUMN appWidgetProvider STRING"

    .line 1902
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :try_start_1d
    const-string v2, "favorites"

    const-string v0, "appWidgetId"

    move-object/from16 v1, v35

    .line 1906
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=4"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    .line 1908
    :goto_2f
    :try_start_1e
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v1, 0x0

    .line 1909
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1910
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_13

    move-object/from16 v1, p0

    move-object v3, v12

    .line 1911
    :try_start_1f
    iget-object v4, v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 1913
    sget-object v4, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1914
    sget-object v4, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v5, "appWidgetProvider"

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    sget-object v2, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContentvalues:Landroid/content/ContentValues;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v6, v5

    invoke-static {v13, v3, v2, v4, v6}, Lcom/miui/home/launcher/LauncherProvider;->safelyUpdateDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    :cond_55
    move-object v12, v3

    goto :goto_2f

    :catch_a
    move-exception v0

    goto :goto_30

    :cond_56
    move-object/from16 v1, p0

    move-object v3, v12

    if-eqz v15, :cond_57

    goto :goto_31

    :catch_b
    move-exception v0

    move-object/from16 v1, p0

    move-object v3, v12

    goto :goto_30

    :catchall_11
    move-exception v0

    move-object v15, v9

    goto/16 :goto_37

    :catch_c
    move-exception v0

    move-object/from16 v1, p0

    move-object v3, v12

    move-object v15, v9

    .line 1919
    :goto_30
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    if-eqz v15, :cond_57

    .line 1922
    :goto_31
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_57
    const/16 v0, 0x2a

    :goto_32
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_58

    const-string v0, "#Intent;action=com.miui.action.SETTINGS_SHURTCUT;component=com.android.settings/.Settings%24BluetoothSettingsActivity;end"

    const-string v2, "#Intent;action=com.miui.action.TOGGLE_SHURTCUT;i.ToggleId=2;end"

    .line 1930
    invoke-static {v13, v0, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateSettingIconToToggle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "#Intent;action=com.miui.action.SETTINGS_SHURTCUT;component=com.android.settings/.Settings%24TetherSettingsActivity;end"

    const-string v2, "#Intent;action=com.miui.action.TOGGLE_SHURTCUT;i.ToggleId=24;end"

    .line 1932
    invoke-static {v13, v0, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateSettingIconToToggle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "#Intent;action=com.miui.action.SETTINGS_SHURTCUT;component=com.android.settings/.Settings%24ZonePickerActivity;end"

    .line 1934
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "intent=?"

    invoke-static {v13, v3, v2, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v0, 0x2b

    :cond_58
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_59

    .line 1940
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$bGv1KmwWdy4uoPJ-sdQTr5X-Z3c;

    invoke-direct {v0, v1, v13}, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$bGv1KmwWdy4uoPJ-sdQTr5X-Z3c;-><init>(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$iYt-jXbxJeJcp7qejOVyJI-vDyA;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$iYt-jXbxJeJcp7qejOVyJI-vDyA;

    invoke-static {v0, v2}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    const/16 v0, 0x2c

    :cond_59
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_5a

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/16 v2, 0x10

    .line 1958
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const-string v2, "itemType=?"

    .line 1957
    invoke-static {v13, v3, v2, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v0, 0x2d

    :cond_5a
    const/16 v2, 0x2d

    if-ne v0, v2, :cond_5b

    const-string v0, "DELETE FROM favorites WHERE appWidgetProvider LIKE \'com.xunmeng.pinduoduo/%\'"

    .line 1963
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v0, 0x2e

    :cond_5b
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_5c

    .line 1969
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallFixIconPackageUtils;->fixIconPackage()V

    const/16 v0, 0x2f

    :cond_5c
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_5d

    const-string v0, "17"

    const-string v2, "#Intent;component=com.miui.home/.settings.MiuiHomeSettingActivity;end"

    .line 1975
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "itemType=? And intent=?"

    invoke-static {v13, v3, v2, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyDeleteFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v0, 0x30

    :cond_5d
    const/16 v2, 0x30

    if-ne v0, v2, :cond_5e

    .line 1981
    iget-object v0, v1, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->updateSearchBarTransferEnable(Landroid/content/Context;)V

    const/16 v0, 0x31

    :cond_5e
    const/16 v2, 0x31

    if-ne v0, v2, :cond_5f

    const-string v0, "ALTER TABLE favorites ADD COLUMN originWidgetId INTEGER NOT NULL DEFAULT -1"

    .line 1986
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE favorites ADD COLUMN product_id STRING"

    .line 1988
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v0, 0x32

    :cond_5f
    const/16 v2, 0x32

    if-ne v0, v2, :cond_60

    const-string v0, "UPDATE favorites SET itemType = \'19\' WHERE itemType = \'18\' AND product_id is not null"

    .line 2000
    invoke-static {v13, v0}, Lcom/miui/home/launcher/LauncherProvider;->safelyExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v0, 0x33

    :cond_60
    const/16 v2, 0x33

    if-ne v0, v2, :cond_61

    const/16 v0, 0x34

    :cond_61
    const/16 v2, 0x34

    if-ne v0, v2, :cond_62

    const/16 v0, 0x35

    :cond_62
    const/16 v2, 0x35

    if-ne v0, v2, :cond_63

    const/16 v0, 0x36

    :cond_63
    const/16 v2, 0x36

    if-ne v0, v2, :cond_64

    const/16 v0, 0x37

    :cond_64
    const/16 v2, 0x37

    if-ne v0, v2, :cond_66

    .line 2017
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2019
    :try_start_21
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2020
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->UpdateDatabaseClockProductId(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2022
    :cond_65
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2023
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateAllFolderAppPredictStatus(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_d
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    .line 2028
    :goto_33
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_34

    :catchall_12
    move-exception v0

    goto :goto_35

    :catch_d
    move-exception v0

    :try_start_22
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "onUpgrade: \u66f4\u65b0MIUI15\u65b0\u63a7\u4ef6\u5931\u8d25\uff01"

    .line 2025
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    goto :goto_33

    .line 2030
    :goto_34
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIsOnUpgradeMiui15(Z)V

    const/16 v0, 0x38

    goto :goto_36

    .line 2028
    :goto_35
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2029
    throw v0

    :cond_66
    :goto_36
    move/from16 v2, p3

    if-eq v0, v2, :cond_67

    const-string v0, "Launcher.LauncherProvider"

    const-string v2, "Destroying all old data and re-create."

    .line 2039
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_67
    return-void

    :catchall_13
    move-exception v0

    :goto_37
    if-eqz v15, :cond_68

    .line 1922
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1925
    :cond_68
    throw v0
.end method

.method public queryAppWidgetIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 9
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

    .line 2348
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "favorites"

    const-string v1, "appWidgetId"

    .line 2350
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=5"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2352
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2353
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 2354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2355
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "Launcher.LauncherProvider"

    const-string v2, "Fail to query AppWidgetIds from db."

    .line 2359
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 2362
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p0

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2365
    :cond_3
    throw p0
.end method

.method public updatePreferenceValue(Landroid/content/ContentValues;)V
    .locals 6

    .line 1039
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

    .line 1040
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1041
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 1042
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1043
    :cond_0
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 1044
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    goto :goto_0

    .line 1045
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 1046
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1047
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 1048
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 1050
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method
