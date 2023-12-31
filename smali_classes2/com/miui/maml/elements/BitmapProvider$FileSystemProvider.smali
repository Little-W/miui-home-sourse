.class Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;
.super Lcom/miui/maml/elements/BitmapProvider$UriProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileSystemProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FileSystem"


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 2

    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 368
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p1, v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 369
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p0

    .line 372
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    if-nez p1, :cond_1

    .line 375
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p1, v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 376
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p0

    .line 379
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object p0

    return-object p0
.end method
