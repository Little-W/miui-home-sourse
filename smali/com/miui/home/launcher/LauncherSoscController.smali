.class public Lcom/miui/home/launcher/LauncherSoscController;
.super Ljava/lang/Object;
.source "LauncherSoscController.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;
.implements Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;
    }
.end annotation


# static fields
.field public static SOSC_LOG_ENABLE:Z

.field private static final sInstance:Lcom/miui/home/launcher/LauncherSoscController;


# instance fields
.field private isInit:Z

.field private final mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/launcher/sosc/interfaces/SoscingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

.field private mSoscingEvent:Lcom/miui/launcher/sosc/module/SoscEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/miui/home/launcher/LauncherSoscController;

    invoke-direct {v0}, Lcom/miui/home/launcher/LauncherSoscController;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherSoscController;->sInstance:Lcom/miui/home/launcher/LauncherSoscController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->isInit:Z

    .line 47
    new-instance v0, Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-direct {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    .line 50
    new-instance v0, Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-direct {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->addSoscSplitScreenListener()V

    .line 61
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherSoscController;->addGestureProgressListener()V

    const/4 p0, 0x1

    .line 62
    sput-boolean p0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherSoscController;)Lcom/miui/launcher/sosc/module/SoscEvent;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/LauncherSoscController;Lcom/miui/launcher/sosc/module/SoscEvent;)Lcom/miui/launcher/sosc/module/SoscEvent;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscingEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherSoscController;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherSoscController;->onSoscChange(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void
.end method

.method private addGestureProgressListener()V
    .locals 1

    .line 93
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/GestureSoscController;->addGestureProgressListener(Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;)V

    return-void
.end method

.method private filterAndExecuteSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZII)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 307
    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/LauncherSoscController;->filterAndExecuteSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V

    return-void
.end method

.method private filterAndExecuteSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 311
    invoke-direct/range {v0 .. v10}, Lcom/miui/home/launcher/LauncherSoscController;->filterAndExecuteSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private filterAndExecuteSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 20

    move-object/from16 v8, p0

    move/from16 v15, p4

    move/from16 v14, p5

    move/from16 v13, p6

    move/from16 v12, p7

    move-object/from16 v0, p1

    .line 316
    invoke-direct {v8, v0, v15}, Lcom/miui/home/launcher/LauncherSoscController;->fixRootBounds(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v11

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 318
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherSoscController;->isValidHomeSoscBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZII)Z

    move-result v0

    const-string v1, "LauncherSoscController"

    if-nez v0, :cond_1

    .line 319
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bound, rootBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lotBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", robBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isMinimized: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", minimizedPosition: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minimizedSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lotTopTaskInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", robTopTaskInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p10

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    .line 333
    new-instance v0, Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-direct {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;-><init>()V

    .line 334
    iget-object v6, v8, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v6, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v11

    goto :goto_0

    :cond_2
    iget-object v6, v8, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v6, v6, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    :goto_0
    move-object v9, v0

    move v7, v10

    move-object v10, v6

    move v6, v12

    move-object/from16 v12, p2

    move v2, v13

    move-object/from16 v13, p3

    move v3, v14

    move/from16 v14, p4

    move v7, v15

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    .line 335
    invoke-virtual/range {v9 .. v19}, Lcom/miui/launcher/sosc/module/SoscEvent;->buildUpSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 336
    iget-object v4, v8, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v4, v4, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v5, 0x2

    const/4 v10, 0x1

    if-eq v4, v5, :cond_3

    if-nez p8, :cond_3

    move v4, v10

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->anim:Z

    .line 338
    iget-object v4, v8, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v0, v4}, Lcom/miui/launcher/sosc/module/SoscEvent;->diff(Lcom/miui/launcher/sosc/module/SoscEvent;)I

    move-result v4

    .line 340
    iget v9, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-ne v9, v5, :cond_5

    .line 341
    sget-boolean v2, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v2, :cond_4

    const-string v2, "filterAndExecuteSoscEvent\uff0cignore for state all"

    .line 342
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_4
    iget-object v1, v8, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 345
    iget-object v1, v8, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void

    .line 349
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherSoscController;->isSoscEventDispatching()Z

    move-result v5

    and-int/2addr v4, v10

    if-eqz v4, :cond_7

    .line 351
    sget-boolean v4, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v4, :cond_6

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "launcher bounds "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state is "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isMinimized "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " minimizedSize is "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " minimizedPosition "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isInSoscing "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_6
    sget-object v1, Lcom/miui/home/recents/util/Executors;->UI_HELPER_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v2, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;

    invoke-direct {v2, v8, v0, v5}, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;-><init>(Lcom/miui/home/launcher/LauncherSoscController;Lcom/miui/launcher/sosc/module/SoscEvent;Z)V

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 356
    :cond_7
    iget-object v2, v8, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v0, v2}, Lcom/miui/launcher/sosc/module/SoscEvent;->diff(Lcom/miui/launcher/sosc/module/SoscEvent;)I

    move-result v2

    if-eqz v5, :cond_9

    and-int/2addr v2, v10

    if-eqz v2, :cond_9

    .line 358
    sget-boolean v2, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v2, :cond_8

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop and replace with event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_8
    sget-object v1, Lcom/miui/home/recents/util/Executors;->UI_HELPER_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v2, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;

    invoke-direct {v2, v8, v0, v10}, Lcom/miui/home/launcher/LauncherSoscController$SoscChangeRunnable;-><init>(Lcom/miui/home/launcher/LauncherSoscController;Lcom/miui/launcher/sosc/module/SoscEvent;Z)V

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 363
    :cond_9
    sget-boolean v2, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v2, :cond_a

    const-string v2, "filterAndExecuteSoscEvent ignore"

    .line 364
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_a
    iget-object v1, v8, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 367
    iget-object v1, v8, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v1, v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    :goto_2
    return-void
.end method

.method private fixRootBounds(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 1

    .line 373
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 374
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lmiuix/device/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-le p1, p2, :cond_0

    .line 375
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fixRootBounds "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherSoscController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/LauncherSoscController;
    .locals 1

    .line 54
    sget-object v0, Lcom/miui/home/launcher/LauncherSoscController;->sInstance:Lcom/miui/home/launcher/LauncherSoscController;

    return-object v0
.end method

.method private isValidHomeSoscBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZII)Z
    .locals 2

    const/4 p0, 0x1

    const/4 p6, -0x1

    if-eq p4, p6, :cond_7

    const/4 p6, 0x2

    if-ne p4, p6, :cond_0

    goto :goto_3

    .line 385
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result p6

    const/4 v0, 0x0

    if-nez p6, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le p6, v1, :cond_1

    return v0

    .line 388
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p6

    invoke-virtual {p6}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p6

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    if-nez p4, :cond_2

    .line 391
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    div-float p5, p2, p1

    goto :goto_1

    :cond_2
    if-ne p4, p0, :cond_3

    .line 393
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    goto :goto_0

    :cond_3
    :goto_1
    const p1, 0x3f0ccccd    # 0.55f

    cmpg-float p1, p5, p1

    if-gez p1, :cond_4

    const p1, 0x3ee66666    # 0.45f

    cmpl-float p1, p5, p1

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move p0, v0

    :goto_2
    return p0

    :cond_5
    if-eqz p5, :cond_6

    .line 397
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadMinimizedSize()I

    move-result p1

    if-ne p7, p1, :cond_6

    goto :goto_3

    :cond_6
    move p0, v0

    :cond_7
    :goto_3
    return p0
.end method

.method private onSoscChange(Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 3

    .line 116
    iget-boolean v0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->cancel:Z

    const-string v1, "LauncherSoscController"

    if-eqz v0, :cond_0

    const-string p0, "soscEvent has been cancel"

    .line 117
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOSC changed by params event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 124
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START dispatch sosc event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", with anim: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->anim:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/launcher/sosc/interfaces/SoscingListener;

    .line 128
    invoke-interface {v2, p1}, Lcom/miui/launcher/sosc/interfaces/SoscingListener;->onSoscChange(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    goto :goto_0

    .line 130
    :cond_3
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "END for event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {p0, p1}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void
.end method


# virtual methods
.method public addSoscSplitScreenListener()V
    .locals 1

    .line 89
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->addSoscSplitScreenListener(Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController$SoscSplitScreenListener;)V

    return-void
.end method

.method public cancelSoscingAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherSoscController;->cancelSoscingAnim(Z)V

    return-void
.end method

.method public cancelSoscingAnim(Z)V
    .locals 2

    .line 174
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "LauncherSoscController"

    const-string v1, "cancel SoscingAnim"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 178
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/launcher/sosc/interfaces/SoscingListener;

    .line 179
    invoke-interface {v0, p1}, Lcom/miui/launcher/sosc/interfaces/SoscingListener;->cancelSoscingAnim(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getHalfSplitAppPackageName()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplitByState()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "LauncherSoscController"

    const-string v0, "getHalfSplitAppPackageName error: not HalfSplitMode"

    .line 150
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v0, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-nez v0, :cond_1

    .line 154
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object p0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->lotTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getPackageNameFromRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 156
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object p0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->robTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getPackageNameFromRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    return-object p0
.end method

.method public initSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 14

    const-string v0, "LauncherSoscController"

    .line 67
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherSoscController;->isInit:Z

    if-eqz v1, :cond_0

    return-void

    .line 71
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getSoScSplitInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RootBounds"

    .line 72
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/graphics/Rect;

    const-string v2, "LeftOrTopBounds"

    .line 73
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/graphics/Rect;

    const-string v2, "RightOrBottomBounds"

    .line 74
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/graphics/Rect;

    const-string v2, "SoScState"

    .line 75
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v2, "Minimized"

    .line 76
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v2, "mMinimizedPostion"

    .line 77
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v2, "MinimizedSize"

    .line 78
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, p1

    .line 79
    invoke-virtual/range {v3 .. v13}, Lcom/miui/launcher/sosc/module/SoscEvent;->buildUpSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    const/4 v1, 0x1

    .line 81
    iput-boolean v1, p0, Lcom/miui/home/launcher/LauncherSoscController;->isInit:Z

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSoscEvent "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "initSoscEvent err"

    .line 84
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public isSoscEventDispatching()Z
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/launcher/sosc/interfaces/SoscingListener;

    .line 140
    invoke-interface {v0}, Lcom/miui/launcher/sosc/interfaces/SoscingListener;->isInSoscing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onGestureEnd(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V
    .locals 10

    move-object v0, p0

    move v4, p5

    .line 289
    sget-boolean v1, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGestureEnd, touchRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rootBounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", leftOrTopBounds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", rightOrBottomBounds: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", predictState: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isPredictMinimized: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", predictMinimizedPosition: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", predictMinimizedSize: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", last state: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v9, v9, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "LauncherSoscController"

    .line 299
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 301
    :goto_0
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v1, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-eq v4, v1, :cond_1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 302
    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/LauncherSoscController;->filterAndExecuteSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V

    :cond_1
    return-void
.end method

.method public onGestureStart(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZII)V
    .locals 13

    move-object v0, p0

    move/from16 v4, p5

    .line 260
    sget-boolean v1, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    const-string v2, "LauncherSoscController"

    if-eqz v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGestureStart, touchRange: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rootBounds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", leftOrTopBounds: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", rightOrBottomBounds: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", predictState: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isPredictMinimized: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", predictMinimizedPosition: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", predictMinimizedSize: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", last state: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v10, v10, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    :goto_0
    const/4 v1, -0x1

    move/from16 v10, p6

    if-ne v4, v10, :cond_1

    if-ne v4, v1, :cond_1

    const-string v0, "state keep full screen"

    .line 274
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 278
    :cond_1
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v2, v2, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v10, 0x2

    if-eq v2, v10, :cond_2

    iget-object v2, v0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v2, v2, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-ne v2, v1, :cond_6

    .line 279
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    if-ne v1, v10, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 280
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 281
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 282
    new-instance v11, Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    move v12, v10

    goto :goto_2

    :cond_4
    move v12, v3

    :goto_2
    if-eqz v1, :cond_5

    move v10, v3

    :cond_5
    invoke-direct {v11, v2, v2, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p0

    move-object v1, v11

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    .line 283
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherSoscController;->filterAndExecuteSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZII)V

    :cond_6
    return-void
.end method

.method public onInitSoscSplitScreen()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherSoscController;->initSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 14

    .line 409
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v0, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v0, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 415
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v3, v3, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v4, v4, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 416
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsPortLeftOrTopFold_1_1()Landroid/graphics/Rect;

    move-result-object v6

    .line 417
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsPortRightOrBottomFold_1_1()Landroid/graphics/Rect;

    move-result-object v7

    .line 418
    new-instance v5, Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object p1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v1, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {v5, v2, v2, p1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 419
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v4, v3, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v8, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v11, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v12, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->lotTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v13, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->robTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual/range {v3 .. v13}, Lcom/miui/launcher/sosc/module/SoscEvent;->buildUpSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 420
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object p1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v1, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 421
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsLandLeftOrTopFold_1_1()Landroid/graphics/Rect;

    move-result-object v6

    .line 422
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadBoundsLandRightOrBottomFold_1_1()Landroid/graphics/Rect;

    move-result-object v7

    .line 423
    new-instance v5, Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object p1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v1, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->rootBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {v5, v2, v2, p1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 424
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v4, v3, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v8, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget v11, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v12, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->lotTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object v13, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->robTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual/range {v3 .. v13}, Lcom/miui/launcher/sosc/module/SoscEvent;->buildUpSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 426
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationChanged launcher bounds "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LauncherSoscController"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscingEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {p1, v1}, Lcom/miui/launcher/sosc/module/SoscEvent;->diff(Lcom/miui/launcher/sosc/module/SoscEvent;)I

    move-result p1

    and-int/2addr p1, v0

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->isSoscEventDispatching()Z

    move-result p1

    if-nez p1, :cond_5

    .line 428
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->stopSoscingEventDispatching()V

    .line 429
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->cancelSoscingAnim()V

    .line 432
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {p1, p0}, Lcom/miui/launcher/sosc/module/SoscEvent;->setTo(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
    .locals 11

    .line 216
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreSoScStateChanged, rootBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lotBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", robBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isMinimized: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", minimizedPosition: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p7

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minimizedSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p8

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LauncherSoscController"

    .line 224
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 228
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v10, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 227
    invoke-direct/range {v2 .. v10}, Lcom/miui/home/launcher/LauncherSoscController;->filterAndExecuteSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V

    return-void
.end method

.method public onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 13

    .line 236
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSoScStateChanged, rootBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lotBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", robBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isMinimized: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", minimizedPosition: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minimizedSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lotTopTaskInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", robTopTaskInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p6

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LauncherSoscController"

    .line 246
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v1, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 250
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v10, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 249
    invoke-direct/range {v2 .. v12}, Lcom/miui/home/launcher/LauncherSoscController;->filterAndExecuteSoscEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onStagePositionChanged(II)V
    .locals 1

    .line 200
    sget-boolean p0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz p0, :cond_0

    .line 201
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStagePositionChanged stage: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", position: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherSoscController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onTaskStageChanged(IIZ)V
    .locals 1

    .line 207
    sget-boolean p0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz p0, :cond_0

    .line 208
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTaskStageChanged taskId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", stage: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", visible: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherSoscController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public register(Lcom/miui/launcher/sosc/interfaces/SoscingListener;)V
    .locals 2

    .line 97
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register to Controller is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherSoscController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    .line 103
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetSoscEvent()V
    .locals 2

    .line 190
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "LauncherSoscController"

    const-string v1, "reset soscEvent"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->isInit:Z

    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->reset()V

    .line 195
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mLastEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {p0}, Lcom/miui/launcher/sosc/module/SoscEvent;->reset()V

    return-void
.end method

.method public stopSoscingEventDispatching()V
    .locals 2

    .line 161
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STOP to dispatching for event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscingEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherSoscController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mSoscingEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/miui/launcher/sosc/module/SoscEvent;->cancel:Z

    :cond_1
    return-void
.end method

.method public unregister(Lcom/miui/launcher/sosc/interfaces/SoscingListener;)V
    .locals 2

    .line 107
    sget-boolean v0, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregister from Controller is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherSoscController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherSoscController;->mObservers:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 111
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
