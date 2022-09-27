.class public abstract Lcom/miui/maml/elements/BitmapProvider;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;,
        Lcom/miui/maml/elements/BitmapProvider$UriProvider;,
        Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;,
        Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;,
        Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;,
        Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;,
        Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;,
        Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;,
        Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BitmapProvider"


# instance fields
.field protected mRoot:Lcom/miui/maml/ScreenElementRoot;

.field protected mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 116
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-void
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 4

    .line 535
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v0

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, p0

    mul-double/2addr v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const/4 v0, 0x1

    :goto_0
    mul-int/lit8 v1, v0, 0x2

    int-to-double v2, v1

    cmpg-double v2, v2, p0

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;
    .locals 2

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ApplicationIcon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "ResourceImage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "VirtualScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "Uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "FileSystem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "BitmapHolder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "BitmapVar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 104
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    const-string v1, "BitmapProvider"

    .line 105
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lcom/miui/maml/ObjectFactory;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;->create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 99
    :pswitch_0
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    .line 97
    :pswitch_1
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    .line 95
    :pswitch_2
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    .line 93
    :pswitch_3
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    .line 91
    :pswitch_4
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    .line 89
    :pswitch_5
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    .line 87
    :pswitch_6
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    .line 112
    :cond_1
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7321c4a8 -> :sswitch_6
        -0x1dc3e025 -> :sswitch_5
        -0x1d83dd15 -> :sswitch_4
        0x14d4c -> :sswitch_3
        0x4b044737 -> :sswitch_2
        0x68c97dcd -> :sswitch_1
        0x7a3645c9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    return-void
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1
.end method

.method protected getBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 513
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 514
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 515
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    mul-int v3, p2, p3

    .line 516
    invoke-static {v2, v3}, Lcom/miui/maml/elements/BitmapProvider;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    .line 517
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 518
    iput p3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 519
    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 520
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    :try_start_2
    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 528
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 529
    invoke-static {p1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    .line 523
    :cond_0
    :try_start_3
    invoke-static {v1, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 528
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 529
    invoke-static {v0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object p1, v0

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    :goto_0
    :try_start_4
    const-string p3, "BitmapProvider"

    const-string v2, "getBitmapFromUri Exception"

    .line 525
    invoke-static {p3, v2, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 528
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 529
    invoke-static {p1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v0

    :catchall_2
    move-exception p2

    move-object v0, p1

    .line 528
    :goto_1
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 529
    invoke-static {v0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 530
    throw p2
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider;->reset()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method
