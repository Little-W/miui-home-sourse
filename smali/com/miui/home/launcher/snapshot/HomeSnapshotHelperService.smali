.class public Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;
.super Landroid/app/Service;
.source "HomeSnapshotHelperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;
    }
.end annotation


# instance fields
.field private mBinder:Landroid/os/Binder;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;-><init>(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;)V

    iput-object v0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->mBinder:Landroid/os/Binder;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;)I
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->getCurrenFreeHomeInfo()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;Ljava/lang/String;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->getGadgetLayout(Ljava/lang/String;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->saveBitmapToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getCurrenFreeHomeInfo()I
    .locals 3

    .line 87
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->load()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getDriftScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    .line 90
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getDriftScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getHome()I

    move-result v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xfffff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0

    :cond_0
    const-string v0, "snapshot"

    const-string v1, "    Cannot create FreeHome screen because of invalid format."

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method private getGadgetLayout(Ljava/lang/String;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "_"

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 179
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/lit8 p1, p1, -0x30

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v1, 0x43700000    # 240.0f

    const/high16 v2, 0x43a60000    # 332.0f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x437c0000    # 252.0f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x42f00000    # 120.0f

    const/high16 v2, 0x43260000    # 166.0f

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    const-string v1, "snapshot"

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gadet size computed: width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method private static saveBitmapToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    const-string v0, ".jpg"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "snapshot"

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: not valid file name (*.jpg or *.png): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, ".jpg"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    .line 212
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_3

    if-eqz v0, :cond_1

    .line 214
    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    if-eqz v0, :cond_2

    const/16 v0, 0x50

    goto :goto_1

    :cond_2
    const/16 v0, 0xa

    :goto_1
    invoke-virtual {p0, p1, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz p0, :cond_4

    .line 219
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    :cond_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v2, v1

    :goto_3
    if-eqz p0, :cond_5

    .line 219
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 223
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 226
    :cond_6
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 228
    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "snapshot"

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeSnaphotHelperService.saveBitmapToLocal() has exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->mBinder:Landroid/os/Binder;

    return-object p1
.end method
