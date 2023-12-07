.class Lcom/miui/maml/elements/BitmapProvider$UriProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Uri"


# instance fields
.field private mCachedBitmapUri:Ljava/lang/String;

.field private mCurLoadingBitmapUri:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 385
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 391
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/Object;
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 450
    invoke-super {p0}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 451
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 452
    :try_start_0
    iput-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    .line 453
    iput-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    .line 454
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 455
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 2

    .line 428
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 429
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 430
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p0

    .line 433
    :cond_0
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 434
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 437
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 438
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    .line 439
    new-instance v1, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;-><init>(Lcom/miui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;II)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 442
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 444
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 445
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p0
.end method
