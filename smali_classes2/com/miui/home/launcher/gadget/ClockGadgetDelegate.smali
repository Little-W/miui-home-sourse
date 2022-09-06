.class public Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;
.super Lcom/miui/home/launcher/gadget/ConfigableGadget;
.source "ClockGadgetDelegate.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/ColorUpdatable;
.implements Lcom/miui/launcher/views/MamlButtonActionListener;


# static fields
.field private static final DENSITY_SCALE:F

.field private static sConfigKey:Ljava/lang/String;

.field private static sRetryBackupCount:I


# instance fields
.field mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

.field final mClock:Lcom/miui/home/launcher/gadget/Clock;

.field private mClockType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mErrorDisplay:Landroid/view/ViewStub;

.field private mIsInEditingModel:Z

.field private mMd5:Ljava/lang/String;

.field private mRestrictClick:Z

.field private mSnapshot:Z

.field mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getConfigKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sConfigKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 98
    sput v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sRetryBackupCount:I

    .line 326
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43700000    # 240.0f

    div-float/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->DENSITY_SCALE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 97
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mSnapshot:Z

    .line 380
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    .line 102
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Lcom/miui/home/launcher/gadget/Clock;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/gadget/Clock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 107
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 97
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mSnapshot:Z

    .line 380
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    .line 108
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/miui/home/launcher/gadget/Clock;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/gadget/Clock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    .line 110
    iput-boolean p2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mSnapshot:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mSnapshot:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClockType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClockType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/view/ViewStub;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mRestrictClick:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mRestrictClick:Z

    return p1
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getMamlConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getComponentCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->retryBackupGadgetIfNeed(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Lorg/w3c/dom/Element;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->adjustByAttributes(Lorg/w3c/dom/Element;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$902(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mMd5:Ljava/lang/String;

    return-object p1
.end method

.method private adjustByAttributes(Lorg/w3c/dom/Element;Landroid/view/View;)V
    .locals 3

    const-string v0, "clock_x"

    const/4 v1, 0x0

    .line 329
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "clock_y"

    .line 330
    invoke-direct {p0, p1, v2, v1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    .line 331
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 332
    sget v2, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->DENSITY_SCALE:F

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    .line 333
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 334
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getComponentCode()Ljava/lang/String;
    .locals 2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clock_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConfigKey()Ljava/lang/String;
    .locals 1

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isStaging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "miuihome_gadgetstaging"

    return-object v0

    :cond_0
    const-string v0, "miuihome_gadget"

    return-object v0
.end method

.method private getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 0

    .line 340
    :try_start_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move p3, p1

    :catch_0
    :cond_0
    return p3
.end method

.method private static getMamlConfigPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".config"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private retryBackupGadgetIfNeed(Z)V
    .locals 3

    .line 219
    sget v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sRetryBackupCount:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 220
    :cond_0
    sget p1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sRetryBackupCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sRetryBackupCount:I

    .line 221
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 223
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateActualGadget()V

    :cond_1
    return-void
.end method

.method private setupViews()V
    .locals 2

    .line 209
    new-instance v0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/ViewStub;

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/ViewStub;

    const v1, 0x7f0d0083

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/ViewStub;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static updateBackup(Landroid/content/Context;)V
    .locals 19

    const/4 v0, 0x4

    .line 398
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 405
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_9

    aget v4, v0, v3

    .line 406
    new-instance v5, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-direct {v5, v4}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;-><init>(I)V

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clock_changed_time_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 409
    new-instance v6, Ljava/io/File;

    move-object/from16 v7, p0

    invoke-virtual {v5, v7}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    move-object/from16 v17, v0

    move/from16 v16, v1

    goto/16 :goto_5

    .line 414
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static {v8, v4, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 415
    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupNamePrefix()Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 418
    array-length v10, v6

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_7

    aget-object v12, v6, v11

    .line 419
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 420
    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 421
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    cmp-long v14, v14, v8

    if-gez v14, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    .line 422
    :goto_2
    new-instance v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v2, v15}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(Landroid/net/Uri;)V

    const-string v15, "autoChange"

    .line 423
    invoke-virtual {v2, v15}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 424
    new-instance v15, Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    new-instance v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(Landroid/net/Uri;)V

    const-string v15, "autoChange"

    .line 428
    invoke-virtual {v0, v15}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    goto :goto_3

    :cond_2
    const/4 v15, 0x1

    :goto_3
    const-string v0, "Launcher.ClockGadgetDelegate"

    move/from16 v16, v1

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const-string v4, "name:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " timeout:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " autoChange:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " themeAutoChange:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_3

    if-eqz v2, :cond_4

    if-eqz v15, :cond_4

    .line 433
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_4
    if-eqz v14, :cond_6

    .line 436
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_5
    move-object/from16 v17, v0

    move/from16 v16, v1

    move-object/from16 v18, v4

    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v16

    move-object/from16 v0, v17

    move-object/from16 v4, v18

    goto/16 :goto_1

    :cond_7
    move-object/from16 v17, v0

    move/from16 v16, v1

    goto :goto_5

    :cond_8
    move-object/from16 v17, v0

    move/from16 v16, v1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v16

    move-object/from16 v0, v17

    goto/16 :goto_0

    :cond_9
    return-void

    :array_0
    .array-data 4
        0x4
        0x7
        0x6
        0x8
    .end array-data
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public notifyColorChanged()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    instance-of v1, v0, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/ColorUpdatable;->notifyColorChanged()V

    :cond_0
    return-void
.end method

.method public onAdded()V
    .locals 0

    return-void
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 2

    .line 446
    iget-boolean p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    if-nez p1, :cond_0

    .line 447
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getDeskClockTabActivityIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p0}, Lcom/miui/home/launcher/Application;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    if-eqz v0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onClick(Landroid/view/View;)V

    .line 371
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 372
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->retryBackupGadgetIfNeed(Z)V

    :cond_1
    const-string p1, "flip"

    .line 375
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClockType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mRestrictClick:Z

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 376
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->onButtonUp(Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 115
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onCreate()V

    .line 117
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 118
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->setupViews()V

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->init()V

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateActualGadget()V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 127
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "file"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method

.method public onDeleted()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getMamlConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 154
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onDeleted()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 133
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->pause()V

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onEditDisable()V
    .locals 1

    .line 391
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onEditDisable()V

    const/4 v0, 0x0

    .line 392
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    .line 393
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    :cond_0
    return-void
.end method

.method public onEditNormal()V
    .locals 1

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    .line 385
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 159
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->pause()V

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onResume()V

    .line 169
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->resume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 178
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 187
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->pause()V

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->onStop()V

    :cond_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    instance-of v1, v0, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const v0, 0x1020036

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 58
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public saveConfig(Ljava/lang/String;)Z
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v0, p1, v1}, Lcom/miui/home/launcher/common/Utilities;->extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method updateActualGadget()V
    .locals 6

    .line 229
    new-instance v5, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;-><init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)V

    .line 319
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 320
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->prepareBackup(Landroid/content/Context;JLcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateColor(I)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    instance-of v1, v0, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    if-eqz v1, :cond_0

    .line 48
    check-cast v0, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/gadget/ColorUpdatable;->updateColor(I)V

    :cond_0
    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "RESPONSE_PICKED_RESOURCE"

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->saveConfig(Ljava/lang/String;)Z

    .line 199
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateActualGadget()V

    return-void
.end method
