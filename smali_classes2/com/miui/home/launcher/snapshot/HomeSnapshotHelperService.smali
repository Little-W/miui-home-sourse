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

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;-><init>(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;)V

    iput-object v0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->mBinder:Landroid/os/Binder;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;Ljava/lang/String;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->getGadgetLayout(Ljava/lang/String;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->saveBitmapToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getGadgetLayout(Ljava/lang/String;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "_"

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 160
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/lit8 p1, p1, -0x30

    .line 163
    invoke-virtual {p0}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_1

    const/high16 p0, 0x43700000    # 240.0f

    const/high16 v1, 0x43a60000    # 332.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_2

    const/high16 p0, 0x43340000    # 180.0f

    const/high16 v1, 0x437c0000    # 252.0f

    goto :goto_0

    :cond_2
    const/high16 p0, 0x42f00000    # 120.0f

    const/high16 v1, 0x43260000    # 166.0f

    :goto_0
    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gadet size computed: width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "snapshot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private static saveBitmapToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4

    const-string v0, ".jpg"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "snapshot"

    if-nez v1, :cond_0

    const-string v1, ".png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: not valid file name (*.jpg or *.png): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 187
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    .line 193
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_3

    if-eqz v0, :cond_1

    .line 195
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
    invoke-virtual {p0, p1, v0, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz p0, :cond_4

    .line 200
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    :cond_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v3, v1

    :goto_3
    if-eqz p0, :cond_5

    .line 200
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    .line 204
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 207
    :cond_6
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HomeSnaphotHelperService.saveBitmapToLocal() has exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->mBinder:Landroid/os/Binder;

    return-object p0
.end method
