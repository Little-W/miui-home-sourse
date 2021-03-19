.class public Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionedBitmap"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static equals(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    iget p1, p1, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    return-void
.end method

.method public set(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p1, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 47
    iget p1, p1, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    iput p1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    :goto_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 55
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    iget v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public updateVersion()I
    .locals 2

    .line 62
    iget v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    return v0
.end method
