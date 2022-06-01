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

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, 0x808080

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sProgressFilter:Landroid/graphics/LightingColorFilter;

    const-string v0, "content://com.miui.cloudbackup"

    .line 571
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "restore_app_info"

    .line 573
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->URI_CLOUD_BACKUP_INFO:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mIsStop:Z

    .line 53
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    if-nez v0, :cond_0

    .line 66
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

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Lcom/miui/home/launcher/progress/ProgressInfoList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Ljava/util/HashMap;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private addNewProgressItem(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 295
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.extra.shortcut.NAME"

    .line 296
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "iconUri"

    move-object/from16 v5, p3

    .line 297
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.miui.action.DOWNLOADING_APP"

    .line 299
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "invalidClassName"

    invoke-direct {v5, v1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.shortcut.INTENT"

    .line 301
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 303
    iget-object v4, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v4}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v4

    .line 304
    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 309
    :cond_0
    iget-object v6, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v6, v3, v1}, Lcom/miui/home/launcher/LauncherModel;->getProgressItemInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 311
    iget-boolean v3, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    if-eqz v3, :cond_1

    .line 312
    iget-object v3, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/RemovedComponentInfoList;

    move-result-object v3

    iget-object v4, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getRemovedInfo(Landroid/content/ComponentName;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 314
    invoke-virtual {v8, v3}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->copyPosition(Lcom/miui/home/launcher/ItemInfo;)V

    .line 317
    :cond_1
    invoke-virtual {v8, v1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 318
    iput v1, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    .line 319
    iput-object v2, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    move-object/from16 v1, p2

    .line 320
    iput-object v1, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 321
    invoke-direct {v0, v8}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 322
    iget-object v1, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v1, :cond_2

    return v5

    :cond_2
    const/4 v1, 0x0

    if-eqz p5, :cond_3

    .line 324
    invoke-direct {v0, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->isWaitingFor(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    iget-object v1, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mFinishWaitingCallback:Ljava/lang/Runnable;

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->finishWaiting()V

    .line 332
    :cond_3
    iget-wide v2, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    .line 333
    iget-object v2, v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget v3, v8, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->cellX:I

    invoke-virtual {v2, v8, v3, v5, v1}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V

    goto :goto_0

    .line 335
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

    .line 523
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Launcher_ApplicationProgressManager"

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllServersProgressMap.put:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
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

    .line 530
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->containsAppProgress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordProgressInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)Z

    .line 535
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

    .line 444
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 445
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onProgressIconDeleted(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 446
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->removeProgressingInfo(Ljava/lang/String;)V

    .line 447
    iput-object p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    .line 448
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    .line 449
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

    .line 86
    sget-object p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 87
    sget-object p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 88
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

    .line 90
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float v3, p0

    sget-object v5, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    sget-object p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sPaint:Landroid/graphics/Paint;

    sget-object p3, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sProgressFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 92
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

    .line 645
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mFinishWaitingCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 646
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    return-void
.end method

.method private getIconUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .line 635
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

    .line 636
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 637
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

    .line 469
    sget-object v0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->sProgressFilter:Landroid/graphics/LightingColorFilter;

    return-object v0
.end method

.method private isWaitingFor(Ljava/lang/String;)Z
    .locals 1

    .line 641
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

.method public static synthetic lambda$handleProgressUpdate$0(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Ljava/util/List;)V
    .locals 5

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 117
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$handleProgressUpdate$1(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressUpdateParams;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mapStatusToTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V

    :cond_0
    return-void
.end method

.method private mapStatusToTitle(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    const/4 p1, -0x2

    .line 421
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

    .line 424
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private onNewProgressStart(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAutoAddNewAppShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 256
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addNewProgressItem(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private onProgressFinished(Ljava/lang/String;)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 346
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->removeProgressingInfo(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 352
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 353
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$3;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$3;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private queryProgressSharedValue(Ljava/lang/String;)V
    .locals 6

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 512
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 513
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

    .line 514
    invoke-static {p1, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressSharedValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "Launcher_ApplicationProgressManager"

    .line 515
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

    .line 516
    new-instance v3, Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    invoke-direct {v3, v1, p1, v2}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 517
    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mapStatusToTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->setTitle(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 518
    invoke-virtual {p0, v3, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateExperimentParams(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Ljava/lang/String;)V
    .locals 2

    .line 432
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "showNewInstallAnim"

    const/4 v1, 0x0

    .line 433
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 434
    iget p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->itemFlags:I

    or-int/lit16 p2, p2, 0x100

    iput p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->itemFlags:I

    .line 436
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 439
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .line 365
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

.method private updateStatusTitleMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 147
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
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

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordStatusTitleMap(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Launcher_ApplicationProgressManager"

    .line 153
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

    .line 227
    iget-wide v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->id:J

    cmp-long p2, v3, v1

    if-eqz p2, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    return v0

    .line 231
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->getProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    .line 232
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, -0x1

    .line 233
    iput p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    .line 234
    iget p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    iget-object v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-direct {p0, p2, v3}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mapStatusToTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 236
    iget-wide v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->id:J

    cmp-long p2, v3, v1

    if-nez p2, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressTitle:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    .line 237
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onNewProgressStart(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 240
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->addProgressingInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public checkProgress(Landroid/content/Context;)V
    .locals 9

    .line 473
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 474
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->shouldCheckProgress()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 475
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 477
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

    .line 478
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->isSupportProgress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 481
    :cond_2
    invoke-static {v2}, Lcom/miui/home/launcher/progress/ProgressManager;->generateServiceProgressChangedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/miui/Shell;->getRuntimeSharedValue(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 483
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

    .line 485
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

    .line 487
    iget-object v7, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 488
    :cond_6
    iget-object v7, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-static {p1, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->isServerEnableShareProgressStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    .line 490
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 491
    invoke-static {p1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v3

    if-eqz v4, :cond_7

    .line 493
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->queryProgressSharedValue(Ljava/lang/String;)V

    goto :goto_3

    .line 494
    :cond_7
    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    .line 495
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v5, :cond_9

    .line 496
    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->hasBroughtToForeground()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 497
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v5, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    .line 498
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 497
    invoke-virtual {v3, v4, v2, v5}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressByBroadcast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 501
    :cond_8
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v5, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    .line 502
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 501
    invoke-virtual {v3, v4, v2, v5}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressByBroadcast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 504
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 507
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

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 161
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "Launcher_ApplicationProgressManager"

    const-string v2, "mAllServersProgressMap.clear()"

    .line 162
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
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

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressInfoList;->getAllProgressPackages()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->getProgressInfo(Ljava/lang/String;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)Z

    :cond_0
    return-void
.end method

.method public handleProgressUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home.extra.server_name"

    .line 99
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v2, :cond_1

    return-void

    .line 108
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "miui.intent.action.APPLICATION_PROGRESS_UPDATE"

    .line 109
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "android.intent.extra.update_application_progress_title"

    .line 110
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string p1, "android.intent.extra.update_progress_check_code"

    const-wide/16 v0, 0x0

    .line 111
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 112
    invoke-static {v2}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getCheckCode()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    cmp-long p1, v3, v0

    if-nez p1, :cond_6

    .line 113
    :cond_2
    invoke-static {p2}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->createFromIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 114
    new-instance p2, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$PYNQsexoc9ObjwMWBgiiwXtYZe4;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$PYNQsexoc9ObjwMWBgiiwXtYZe4;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Ljava/util/List;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 121
    :cond_3
    invoke-static {p1, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->isServerEnableShareProgressStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 122
    new-instance p1, Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;-><init>(Landroid/content/Intent;)V

    const-string v0, "android.intent.extra.update_progress_status_title_map"

    .line 123
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Launcher_ApplicationProgressManager"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatusTitleMap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, v1, p2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateStatusTitleMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setStarted(Z)V

    .line 132
    :cond_5
    new-instance p2, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$HTx62oRCx0l3lLhilgh0ZXC8rrc;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/progress/-$$Lambda$ApplicationProgressProcessor$HTx62oRCx0l3lLhilgh0ZXC8rrc;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressUpdateParams;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher_ApplicationProgressManager"

    const-string v0, "problem while receiving progress info"

    .line 141
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public isStop()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mIsStop:Z

    return v0
.end method

.method isSupportProgress(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.vending"

    .line 465
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
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 583
    iput-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mFinishWaitingCallback:Ljava/lang/Runnable;

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 588
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

    .line 590
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

    .line 593
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->getIconUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

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

    .line 604
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1
    if-eqz p2, :cond_3

    .line 607
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

    .line 601
    invoke-static {v2, v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p2, :cond_2

    .line 604
    invoke-virtual {p2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    if-eqz v1, :cond_3

    .line 607
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_3
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, ""

    return-object p1

    .line 615
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "cloudbackup_server"

    invoke-static {p2, p3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    .line 616
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerNoObservingCount:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "cloudbackup_title_map"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Launcher_ApplicationProgressManager"

    const-string p3, "loadingProgressFromCloudAppBackup(): titleMap = %s"

    const/4 p4, 0x1

    .line 619
    new-array v1, p4, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 622
    :try_start_3
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 623
    iget-object p3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersStatusTitleMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    iget-object p3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordStatusTitleMap(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    const-string p2, "Launcher_ApplicationProgressManager"

    .line 626
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

    .line 630
    :cond_5
    :goto_3
    iput-boolean p4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mWaitingForCloudAppBackup:Z

    .line 631
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCloudBackupPackageName:Ljava/lang/String;

    return-object p1

    :catchall_2
    move-exception p1

    move-object v9, v1

    move-object v1, p2

    move-object p2, v9

    :goto_4
    if-eqz v1, :cond_6

    .line 604
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_6
    if-eqz p2, :cond_7

    .line 607
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_7
    throw p1
.end method

.method public onLoadingFinished()V
    .locals 6

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 168
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 171
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

    .line 172
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    .line 173
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 172
    invoke-virtual {v2, v3, v1, v4}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressByBroadcast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onProgressIconClicked(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 3

    .line 545
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.on_click"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    iget-object v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.update_progress_key"

    .line 548
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    iget-object p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->communicateToServer(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onProgressIconDeleted(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    const-string v1, "com.android.vending"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/install/PackageInstallerCompat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/install/PackageInstallerCompat;->removeActiveSession(Ljava/lang/String;)V

    goto :goto_0

    .line 561
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.on_delete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    iget-object v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.update_progress_key"

    .line 563
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    iget-object v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->communicateToServer(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    const/16 v0, -0x64

    const-string v1, ""

    const/4 v2, 0x0

    .line 565
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method recordProgressInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->containsAppProgress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordProgressInfo(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)Z

    :cond_0
    return-void
.end method

.method public removeProgressingInfo(Ljava/lang/String;)V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->containsAppProgress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->removeProgressInfo(Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 278
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 281
    invoke-virtual {v1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Launcher_ApplicationProgressManager"

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllServersProgressMap.remove(info.mAppProgressServer):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mServerChangedValues:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
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

    .line 82
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method shouldCheckProgress()Z
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 454
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 455
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 456
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->isSupportProgress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 457
    monitor-exit v0

    return v1

    .line 460
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

    .line 184
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mIsStop:Z

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mAllServersProgressMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 188
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;-><init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Ljava/util/ArrayList;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 212
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mIsStop:Z

    return-void
.end method

.method public updateProgress(Lcom/miui/home/launcher/progress/ProgressUpdateParams;Z)V
    .locals 10

    const-string v0, "Launcher_ApplicationProgressManager"

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getStatus()I

    move-result v0

    .line 385
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, -0x64

    const/4 v3, -0x5

    if-nez v1, :cond_1

    const/4 v1, -0x4

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 389
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getServer()Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    move v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onNewProgressStart(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)Z

    :cond_0
    return-void

    .line 393
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mCurrentProgressingMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 394
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getExperimentParams()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 395
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getExperimentParams()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateExperimentParams(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Ljava/lang/String;)V

    .line 397
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getStatus()I

    move-result v1

    if-eq v1, v3, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v1, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    .line 398
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 400
    :cond_4
    iget-object v1, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 401
    iget-object v1, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_5

    .line 403
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->attachProgressToNewServer(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Ljava/lang/String;)V

    .line 405
    :cond_5
    invoke-virtual {p2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 406
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getIconUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p2, v0, v2, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V

    if-eqz v1, :cond_8

    .line 408
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->mProgressInfoList:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->recordProgressInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)Z

    goto :goto_2

    .line 399
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/progress/ProgressUpdateParams;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onProgressFinished(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method
