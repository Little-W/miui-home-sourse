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

.field private mCommandListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

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

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getConfigKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sConfigKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 104
    sput v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sRetryBackupCount:I

    .line 373
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

    .line 107
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 103
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mSnapshot:Z

    .line 427
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    .line 108
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/miui/home/launcher/gadget/Clock;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/gadget/Clock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 113
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 103
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mSnapshot:Z

    .line 427
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    .line 114
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/miui/home/launcher/gadget/Clock;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/gadget/Clock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    .line 116
    iput-boolean p2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mSnapshot:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mSnapshot:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Lcom/miui/launcher/views/MamlOnExternCommandListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mCommandListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Lcom/miui/launcher/views/MamlOnExternCommandListener;)Lcom/miui/launcher/views/MamlOnExternCommandListener;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mCommandListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sConfigKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClockType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClockType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/view/ViewStub;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mRestrictClick:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mRestrictClick:Z

    return p1
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getMamlConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getComponentCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->retryBackupGadgetIfNeed(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Lorg/w3c/dom/Element;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->adjustByAttributes(Lorg/w3c/dom/Element;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mMd5:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mMd5:Ljava/lang/String;

    return-object p1
.end method

.method private adjustByAttributes(Lorg/w3c/dom/Element;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "clock_x"

    .line 376
    invoke-direct {p0, p1, v1, v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "clock_y"

    .line 377
    invoke-direct {p0, p1, v2, v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p0

    .line 378
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 379
    sget v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->DENSITY_SCALE:F

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    .line 380
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 381
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getComponentCode()Ljava/lang/String;
    .locals 2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clock_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getConfigKey()Ljava/lang/String;
    .locals 1

    .line 85
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

    .line 387
    :try_start_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 389
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move p3, p0

    :catch_0
    :cond_0
    return p3
.end method

.method private static getMamlConfigPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 235
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

    .line 239
    sget v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sRetryBackupCount:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 240
    :cond_0
    sget p1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sRetryBackupCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sRetryBackupCount:I

    .line 241
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 242
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 243
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateActualGadget()V

    :cond_1
    return-void
.end method

.method private setupViews()V
    .locals 2

    .line 229
    new-instance v0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/ViewStub;

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/ViewStub;

    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/ViewStub;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static updateBackup(Landroid/content/Context;)V
    .locals 18

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 445
    fill-array-data v0, :array_0

    .line 452
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    aget v4, v0, v3

    .line 453
    new-instance v5, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-direct {v5, v4}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;-><init>(I)V

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clock_changed_time_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 456
    new-instance v6, Ljava/io/File;

    move-object/from16 v7, p0

    invoke-virtual {v5, v7}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_5

    .line 461
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static {v8, v4, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 462
    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupNamePrefix()Ljava/lang/String;

    move-result-object v4

    .line 463
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 465
    array-length v10, v6

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_7

    aget-object v12, v6, v11

    .line 466
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 467
    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 468
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    cmp-long v14, v14, v8

    if-gez v14, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    .line 469
    :goto_2
    new-instance v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v2, v15}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(Landroid/net/Uri;)V

    const-string v15, "autoChange"

    .line 470
    invoke-virtual {v2, v15}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v16, v0

    .line 471
    new-instance v0, Ljava/io/File;

    move/from16 v17, v1

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 474
    new-instance v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(Landroid/net/Uri;)V

    .line 475
    invoke-virtual {v1, v15}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    goto :goto_3

    :cond_2
    const/4 v15, 0x1

    .line 477
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " autoChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " themeAutoChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ClockGadgetDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_3

    if-eqz v2, :cond_4

    if-eqz v15, :cond_4

    .line 480
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_4
    if-eqz v14, :cond_6

    .line 483
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_5
    move-object/from16 v16, v0

    move/from16 v17, v1

    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_1

    :cond_7
    :goto_5
    move-object/from16 v16, v0

    move/from16 v17, v1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_8
    return-void

    nop

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

    .line 411
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public notifyColorChanged()V
    .locals 1

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    instance-of v0, p0, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    if-eqz v0, :cond_0

    .line 46
    check-cast p0, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    invoke-interface {p0}, Lcom/miui/home/launcher/gadget/ColorUpdatable;->notifyColorChanged()V

    :cond_0
    return-void
.end method

.method public onAdded()V
    .locals 0

    return-void
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 3

    const-string p1, "CLICK"

    .line 493
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    if-nez v0, :cond_0

    .line 494
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getDeskClockTabActivityIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/launcher/Application;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V

    .line 495
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mMd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gadget_ex_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sConfigKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CLICK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " btn:default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.ClockGadgetDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object v1

    const-string v2, "ex"

    .line 501
    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v0, "e"

    .line 502
    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string p1, "btn"

    const-string v0, "default"

    .line 503
    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 504
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sConfigKey:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/xiaomi/analytics/Analytics;->trackSystem(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 506
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    if-eqz v0, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onClick(Landroid/view/View;)V

    .line 418
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 419
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->retryBackupGadgetIfNeed(Z)V

    .line 422
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClockType:Ljava/lang/String;

    const-string v0, "flip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mRestrictClick:Z

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 423
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->onButtonUp(Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onCreate()V

    .line 123
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 124
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->setupViews()V

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->init()V

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateActualGadget()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 133
    :goto_0
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "file"

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method

.method public onDeleted()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getMamlConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 160
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onDeleted()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 139
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->pause()V

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 143
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Clock;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onEditDisable()V
    .locals 1

    .line 438
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onEditDisable()V

    const/4 v0, 0x0

    .line 439
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    .line 440
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz p0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    :cond_0
    return-void
.end method

.method public onEditNormal()V
    .locals 1

    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mIsInEditingModel:Z

    .line 432
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz p0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 165
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->pause()V

    .line 167
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz p0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "VIEW"

    .line 174
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onResume()V

    .line 175
    iget v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 176
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 178
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Clock;->resume()V

    .line 179
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mMd5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gadget_ex_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mMd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sConfigKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " VIEW:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mMd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.ClockGadgetDelegate"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object v2

    const-string v3, "ex"

    .line 185
    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v1, "e"

    .line 186
    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 187
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->sConfigKey:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/xiaomi/analytics/Analytics;->trackSystem(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 198
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    .line 201
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Clock;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 207
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->pause()V

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    .line 211
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Clock;->onStop()V

    :cond_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 399
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    instance-of v0, p0, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Gadget;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const v0, 0x1020036

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method updateActualGadget()V
    .locals 6

    .line 249
    new-instance v5, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;-><init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)V

    .line 366
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 367
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->prepareBackup(Landroid/content/Context;JLcom/miui/home/launcher/gadget/GadgetInfo;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateColor(I)V
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    instance-of v0, p0, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    if-eqz v0, :cond_0

    .line 53
    check-cast p0, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/gadget/ColorUpdatable;->updateColor(I)V

    :cond_0
    return-void
.end method
