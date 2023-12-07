.class public final Lcom/squareup/picasso/LruCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/squareup/picasso/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/LruCache$BitmapAndSize;
    }
.end annotation


# instance fields
.field final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/squareup/picasso/LruCache$BitmapAndSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/squareup/picasso/LruCache$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/picasso/LruCache$1;-><init>(Lcom/squareup/picasso/LruCache;I)V

    iput-object v0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/squareup/picasso/Utils;->calculateMemoryCacheSize(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/squareup/picasso/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/picasso/LruCache$BitmapAndSize;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/squareup/picasso/LruCache$BitmapAndSize;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public maxSize()I
    .locals 0

    iget-object p0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->maxSize()I

    move-result p0

    return p0
.end method

.method public set(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {p0}, Lcom/squareup/picasso/LruCache;->maxSize()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    new-instance v1, Lcom/squareup/picasso/LruCache$BitmapAndSize;

    invoke-direct {v1, p2, v0}, Lcom/squareup/picasso/LruCache$BitmapAndSize;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key == null || bitmap == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/squareup/picasso/LruCache;->cache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    move-result p0

    return p0
.end method
