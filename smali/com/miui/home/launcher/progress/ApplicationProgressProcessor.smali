.class public Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;
.super Ljava/lang/Object;
.source "ApplicationProgressProcessor.java"


# static fields
.field private static final URI_CLOUD_BACKUP_INFO:Landroid/net/Uri;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sProgressFilter:Landroid/graphics/LightingColorFilter;


# instance fields
.field private final mAllServersProgressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAllServersStatusTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudBackupPackageName:Ljava/lang/String;

.field private final mCurrentProgressingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/progress/ProgressShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishWaitingCallback:Ljava/lang/Runnable;

.field private mIsStop:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

.field private final mServerChangedValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mServerNoObservingCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingForCloudAppBackup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, 0x808080

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sProgressFilter:Landroid/graphics/LightingColorFilter;

    const-string v0, "content://com.miui.cloudbackup"

    .line 584
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "restore_app_info"

    .line 586
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->URI_CLOUD_BACKUP_INFO:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mIsStop:Z

    .line 54
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/miui/home/launcher/progress/ProgressInfoList;

    new-instance v1, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$1;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)V

    invoke-direct {v0, p1, v1}, Lcom/miui/home/launcher/progress/ProgressInfoList;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Ljava/util/HashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Lcom/miui/home/launcher/progress/ProgressInfoList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Ljava/util/HashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private addNewProgressItem(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 302
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.extra.shortcut.NAME"

    .line 303
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "iconUri"

    move-object/from16 v5, p3

    .line 304
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 305
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.miui.action.DOWNLOADING_APP"

    .line 306
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "invalidClassName"

    invoke-direct {v5, v1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.shortcut.INTENT"

    .line 308
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 310
    iget-object v4, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v4}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    .line 311
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 316
    :cond_0
    iget-object v6, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v6, v3, v1}, Lcom/miui/home/launcher/LauncherModel;->getProgressItemInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 318
    iget-boolean v3, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    if-eqz v3, :cond_1

    .line 319
    iget-object v3, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/RemovedComponentInfoList;

    move-result-object v3

    iget-object v4, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getRemovedInfo(Landroid/content/ComponentName;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 321
    invoke-virtual {v8, v3}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->copyPosition(Lcom/miui/home/launcher/ItemInfo;)V

    .line 324
    :cond_1
    invoke-virtual {v8, v1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 325
    iput v1, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    .line 326
    iput-object v2, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    move-object/from16 v1, p2

    .line 327
    iput-object v1, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 328
    invoke-direct {v0, v8}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 329
    iget-object v1, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v1, :cond_2

    return v5

    :cond_2
    const/4 v1, 0x0

    if-eqz p5, :cond_3

    .line 331
    invoke-direct {v0, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->isWaitingFor(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    iget-object v1, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mFinishWaitingCallback:Ljava/lang/Runnable;

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->finishWaiting()V

    .line 339
    :cond_3
    iget-wide v2, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    .line 340
    iget-object v2, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget v3, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->cellX:I

    invoke-virtual {v2, v8, v3, v5, v1}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V

    goto :goto_0

    .line 342
    :cond_4
    iget-object v7, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v9, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->screenId:J

    iget-wide v11, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->container:J

    iget v13, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->cellX:I

    iget v14, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->cellY:I

    const/4 v15, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v7 .. v16}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_5
    return v5
.end method

.method private addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 4

    .line 536
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Launcher_ApplicationProgressManager"

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllServersProgressMap.put:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->containsAppProgress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 546
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordProgressInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)Z

    .line 548
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private attachProgressToNewServer(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Ljava/lang/String;)V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 460
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onProgressIconDeleted(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 461
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->removeProgressingInfo(Ljava/lang/String;)V

    .line 462
    iput-object p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    .line 463
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 464
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static drawProgressIcon(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 11

    .line 87
    sget-object p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 88
    sget-object p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 89
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float v4, p0

    int-to-float p3, p3

    mul-float/2addr p3, v4

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    float-to-int p3, p3

    sub-int/2addr p0, p3

    int-to-float v9, p0

    .line 91
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float v3, p0

    sget-object v5, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    sget-object p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    sget-object p3, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sProgressFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float v8, p0

    sget-object v10, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private finishWaiting()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mFinishWaitingCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 659
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    return-void
.end method

.method private getIconUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .line 648
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "%s/%s.png"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "restore_icons"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 649
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static getProgressFilter()Landroid/graphics/LightingColorFilter;
    .locals 1

    .line 484
    sget-object v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sProgressFilter:Landroid/graphics/LightingColorFilter;

    return-object v0
.end method

.method private isWaitingFor(Ljava/lang/String;)Z
    .locals 1

    .line 654
    iget-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$handleProgressUpdate$399(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual/range {p0 .. p5}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgress([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$handleProgressUpdate$400(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 141
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private mapStatusToTitle(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    const/4 p1, -0x2

    .line 450
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 453
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private onNewProgressStart(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAutoAddNewAppShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 263
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addNewProgressItem(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private onProgressFinished(Ljava/lang/String;)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 353
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->removeProgressingInfo(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 359
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 360
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$3;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$3;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private parseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    if-eqz p1, :cond_1

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private queryProgressSharedValue(Ljava/lang/String;)V
    .locals 6

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 527
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 528
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 529
    invoke-static {p1, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressSharedValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "Launcher_ApplicationProgressManager"

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryProgressSharedValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgressStatus(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .line 372
    new-instance v6, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V

    invoke-static {v6}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)V
    .locals 6

    const-string v0, "Launcher_ApplicationProgressManager"

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, -0x64

    const/4 v2, -0x5

    if-nez v0, :cond_0

    const/4 v0, -0x4

    if-eq p3, v0, :cond_6

    if-eq p3, v2, :cond_6

    if-eq p3, v1, :cond_6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move v5, p6

    .line 409
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onNewProgressStart(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z

    goto :goto_2

    .line 412
    :cond_0
    iget-object p6, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eq p3, v2, :cond_1

    if-ne p3, v1, :cond_2

    .line 413
    :cond_1
    iget-object v0, p6, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    .line 414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p6, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 416
    :cond_2
    iget-object p2, p6, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 417
    iget-object p2, p6, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    if-eq p3, v1, :cond_3

    if-eq p3, v2, :cond_3

    .line 419
    invoke-direct {p0, p6, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->attachProgressToNewServer(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Ljava/lang/String;)V

    .line 421
    :cond_3
    invoke-virtual {p6}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_4

    if-eqz p5, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 422
    :goto_0
    invoke-direct {p0, p6, p3, p4, p5}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_6

    .line 424
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {p1, p6}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordProgressInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)Z

    goto :goto_2

    .line 415
    :cond_5
    :goto_1
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onProgressFinished(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private updateProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 7

    .line 431
    invoke-direct {p0, p3, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mapStatusToTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-direct {p0, p4}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method private updateProgressStatus(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 436
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v0, :cond_2

    .line 437
    iget-object v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    .line 438
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 439
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mapStatusToTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private updateStatusTitleMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 154
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordStatusTitleMap(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Launcher_ApplicationProgressManager"

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " send wrong title"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bindProgressItem(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Z)Z
    .locals 7

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    if-nez p2, :cond_0

    .line 234
    iget-wide v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->id:J

    cmp-long p2, v3, v1

    if-eqz p2, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    return v0

    .line 238
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->getProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    .line 239
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, -0x1

    .line 240
    iput p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    .line 241
    iget p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    iget-object v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-direct {p0, p2, v3}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mapStatusToTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 243
    iget-wide v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->id:J

    cmp-long p2, v3, v1

    if-nez p2, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    .line 244
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onNewProgressStart(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 247
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public checkProgress(Landroid/content/Context;)V
    .locals 9

    .line 488
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 489
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->shouldCheckProgress()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 490
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 492
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 493
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->isSupportProgress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 496
    :cond_2
    invoke-static {v2}, Lcom/miui/home/launcher/progress/ProgressManager;->generateServiceProgressChangedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/miui/Shell;->getRuntimeSharedValue(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 498
    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v5

    :goto_2
    if-nez v4, :cond_5

    .line 500
    iget-object v7, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v5, 0x5

    if-nez v4, :cond_6

    .line 502
    iget-object v7, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 503
    :cond_6
    iget-object v7, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-static {p1, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->isServerEnableShareProgressStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    .line 505
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 506
    invoke-static {p1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v3

    if-eqz v4, :cond_7

    .line 508
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->queryProgressSharedValue(Ljava/lang/String;)V

    goto :goto_3

    .line 509
    :cond_7
    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    .line 510
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v5, :cond_9

    .line 511
    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherApplication;->hasBroughtToForeground()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 512
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v5, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    .line 513
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 512
    invoke-virtual {v3, v4, v2, v5}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressByBroadcast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 516
    :cond_8
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v5, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    .line 517
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 516
    invoke-virtual {v3, v4, v2, v5}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressByBroadcast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 519
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 522
    :cond_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 168
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "Launcher_ApplicationProgressManager"

    const-string v2, "mAllServersProgressMap.clear()"

    .line 169
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllProgressKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressInfoList;->getAllProgressPackages()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->getProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)Z

    :cond_0
    return-void
.end method

.method public handleProgressUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home.extra.server_name"

    .line 100
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "miui.intent.action.APPLICATION_PROGRESS_UPDATE"

    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.intent.extra.update_application_progress_title"

    .line 108
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p1, "android.intent.extra.update_progress_check_code"

    const-wide/16 v2, 0x0

    .line 109
    invoke-virtual {p2, p1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 110
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getCheckCode()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-eqz p1, :cond_1

    cmp-long p1, v4, v2

    if-nez p1, :cond_5

    :cond_1
    const-string p1, "android.intent.extra.update_progress_key"

    .line 111
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string p1, "android.intent.extra.update_application_progress_title"

    .line 112
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string p1, "android.intent.extra.update_progress_status"

    .line 113
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    const-string p1, "android.intent.extra.update_application_progress_icon_uri"

    .line 114
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 115
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_5

    .line 117
    new-instance p1, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;

    move-object v2, p1

    move-object v3, p0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$3ewFTYvRebonWI9I9HRQ5i8A_k4;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p1, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->isServerEnableShareProgressStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "android.intent.extra.update_progress_key"

    .line 125
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "android.intent.extra.update_progress_status_title_map"

    .line 126
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.update_progress_status"

    const/16 v2, -0x3e8

    .line 127
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "android.intent.extra.update_application_progress_icon_uri"

    .line 128
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "Launcher_ApplicationProgressManager"

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStatusTitleMap:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateStatusTitleMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    .line 135
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setStarted(Z)V

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_5

    .line 139
    new-instance p1, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$-4GKHlSiHke7LnVqGUQ3dfo9nGA;

    move-object v2, p1

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$-4GKHlSiHke7LnVqGUQ3dfo9nGA;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher_ApplicationProgressManager"

    const-string v0, "problem while receiving progress info"

    .line 148
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public isStop()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mIsStop:Z

    return v0
.end method

.method isSupportProgress(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.vending"

    .line 480
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public loadingProgressFromCloudAppBackup(Landroid/content/Context;Ljava/lang/Runnable;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Runnable;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 596
    iput-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mFinishWaitingCallback:Ljava/lang/Runnable;

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 601
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->URI_CLOUD_BACKUP_INFO:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 603
    :try_start_1
    sget-object v4, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->URI_CLOUD_BACKUP_INFO:Landroid/net/Uri;

    const-string v2, "pkg_name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "is_on_launcher=?"

    const-string v2, "1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 606
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->getIconUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p4

    move-object v9, v1

    move-object v1, p2

    move-object p2, v9

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 617
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1
    if-eqz p2, :cond_3

    .line 620
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, p2

    goto/16 :goto_4

    :catch_1
    move-exception p4

    move-object v1, p2

    :goto_1
    :try_start_2
    const-string v2, "Launcher_ApplicationProgressManager"

    const-string v3, "loadingProgressFromCloudAppBackup(): "

    .line 614
    invoke-static {v2, v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p2, :cond_2

    .line 617
    invoke-virtual {p2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    if-eqz v1, :cond_3

    .line 620
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 624
    :cond_3
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, ""

    return-object p1

    .line 628
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "cloudbackup_server"

    invoke-static {p2, p3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    .line 629
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "cloudbackup_title_map"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Launcher_ApplicationProgressManager"

    const-string p3, "loadingProgressFromCloudAppBackup(): titleMap = %s"

    const/4 p4, 0x1

    .line 632
    new-array v1, p4, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 635
    :try_start_3
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 636
    iget-object p3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    iget-object p3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordStatusTitleMap(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    const-string p2, "Launcher_ApplicationProgressManager"

    .line 639
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "server "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " send wrong title"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    :cond_5
    :goto_3
    iput-boolean p4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    .line 644
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    return-object p1

    :catchall_2
    move-exception p1

    move-object v9, v1

    move-object v1, p2

    move-object p2, v9

    :goto_4
    if-eqz v1, :cond_6

    .line 617
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_6
    if-eqz p2, :cond_7

    .line 620
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p1
.end method

.method public onLoadingFinished()V
    .locals 6

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    .line 180
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 179
    invoke-virtual {v2, v3, v1, v4}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressByBroadcast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onProgressIconClicked(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.on_click"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    iget-object v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.update_progress_key"

    .line 561
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    iget-object p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->communicateToServer(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onProgressIconDeleted(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    const-string v1, "com.android.vending"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->removeActiveSession(Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.on_delete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    iget-object v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.update_progress_key"

    .line 576
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    iget-object v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->communicateToServer(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    const/16 v0, -0x64

    const-string v1, ""

    const/4 v2, 0x0

    .line 578
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method recordProgressInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->containsAppProgress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordProgressInfo(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)Z

    :cond_0
    return-void
.end method

.method public removeProgressingInfo(Ljava/lang/String;)V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->containsAppProgress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->removeProgressInfo(Ljava/lang/String;)V

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 285
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 288
    invoke-virtual {v1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Launcher_ApplicationProgressManager"

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllServersProgressMap.remove(info.mAppProgressServer):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method shouldCheckProgress()Z
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 469
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 470
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 471
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->isSupportProgress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 472
    monitor-exit v0

    return v1

    .line 475
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mIsStop:Z

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 195
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Ljava/util/ArrayList;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 219
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mIsStop:Z

    return-void
.end method

.method public updateProgress([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-nez v3, :cond_0

    goto :goto_4

    .line 393
    :cond_0
    array-length v4, v0

    .line 394
    array-length v5, v1

    if-ne v5, v4, :cond_5

    array-length v5, v2

    if-ne v5, v4, :cond_5

    array-length v5, v3

    if-eq v5, v4, :cond_1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    .line 397
    aget-object v7, v0, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 398
    aget-object v10, v0, v6

    aget v11, v2, v6

    aget-object v12, v1, v6

    aget-object v7, v3, v6

    move-object/from16 v15, p0

    invoke-direct {v15, v7}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    add-int/lit8 v7, v4, -0x1

    if-ne v6, v7, :cond_2

    const/4 v7, 0x1

    move v14, v7

    goto :goto_1

    :cond_2
    move v14, v5

    :goto_1
    move-object/from16 v8, p0

    move-object/from16 v9, p5

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_2

    :cond_3
    move-object/from16 v15, p0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v15, p0

    return-void

    :cond_5
    :goto_3
    move-object/from16 v15, p0

    return-void

    :cond_6
    :goto_4
    move-object/from16 v15, p0

    return-void
.end method
