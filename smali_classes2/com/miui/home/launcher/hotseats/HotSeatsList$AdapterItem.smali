.class public Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
.super Ljava/lang/Object;
.source "HotSeatsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterItem"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public itemInfo:Lcom/miui/home/launcher/ItemInfo;

.field public position:I

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asDivLine()Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 2

    .line 375
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;-><init>()V

    const/16 v1, 0x40

    .line 376
    iput v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    return-object v0
.end method

.method public static asFolder(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 2

    .line 338
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;-><init>()V

    const/16 v1, 0x8

    .line 339
    iput v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    .line 340
    iput-object p0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object v0
.end method

.method public static asOutline(Landroid/graphics/Bitmap;I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 2

    .line 352
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;-><init>()V

    const/16 v1, 0x20

    .line 353
    iput v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    .line 354
    iput-object p0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->bitmap:Landroid/graphics/Bitmap;

    .line 355
    iput p1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    return-object v0
.end method

.method public static asProgress(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 2

    .line 345
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;-><init>()V

    const/16 v1, 0x10

    .line 346
    iput v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    .line 347
    iput-object p0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object v0
.end method

.method public static asRecommend(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 2

    .line 381
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;-><init>()V

    const/16 v1, 0x80

    .line 382
    iput v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    .line 383
    iput-object p0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object v0
.end method

.method public static asRecommendPair(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 2

    .line 388
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;-><init>()V

    const/16 v1, 0x100

    .line 389
    iput v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    .line 390
    iput-object p0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object v0
.end method

.method public static asSearch()Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 2

    .line 325
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;-><init>()V

    const/4 v1, 0x2

    .line 326
    iput v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    return-object v0
.end method

.method public static asShortcut(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 2

    .line 331
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;-><init>()V

    const/4 v1, 0x4

    .line 332
    iput v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    .line 333
    iput-object p0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object v0
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;)Z
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_1

    .line 366
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->bitmap:Landroid/graphics/Bitmap;

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 368
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p0, :cond_2

    iget-object p1, p1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p1, :cond_2

    .line 369
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->areContentsTheSame(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;)Z
    .locals 2

    .line 360
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    iget v1, p1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
