.class Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceImageProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ResourceImage"


# instance fields
.field private mAsyncLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

.field private mCachedBitmapName:Ljava/lang/String;

.field mLoadingBitmapName:Ljava/lang/String;

.field mSrcNameLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 223
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    .line 226
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;-><init>(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)V

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mAsyncLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 274
    invoke-super {p0}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 275
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 276
    :try_start_0
    iput-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 277
    iput-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 279
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 1

    .line 246
    iget-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 247
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    iget-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_3

    .line 249
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {p2, p1}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p2

    .line 250
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p4, p3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 251
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    goto :goto_4

    .line 253
    :cond_3
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mAsyncLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    invoke-virtual {p2, p1, p4}, Lcom/miui/maml/ResourceManager;->getBitmapInfoAsync(Ljava/lang/String;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p2

    .line 257
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    monitor-enter p4

    if-eqz p2, :cond_5

    .line 258
    :try_start_0
    iget-boolean v0, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    if-nez v0, :cond_4

    goto :goto_1

    .line 263
    :cond_4
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    goto :goto_3

    .line 259
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    if-nez p2, :cond_6

    move-object p2, p3

    goto :goto_2

    :cond_6
    iget-object p2, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v0, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 260
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 265
    :goto_3
    monitor-exit p4

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 269
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1
.end method
