.class Lcom/market/sdk/ImageManager$ImageLoadTask;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageLoadTask"
.end annotation


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mResponse:Lcom/market/sdk/IImageCallback;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/market/sdk/ImageCallback;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/market/sdk/ImageManager$ImageLoadTask;->mUrl:Ljava/lang/String;

    .line 100
    new-instance p1, Lcom/market/sdk/ImageManager$ImageLoadResponse;

    iget-object p4, p0, Lcom/market/sdk/ImageManager$ImageLoadTask;->mUrl:Ljava/lang/String;

    invoke-direct {p1, p4}, Lcom/market/sdk/ImageManager$ImageLoadResponse;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/market/sdk/ImageManager$ImageLoadTask;->mResponse:Lcom/market/sdk/IImageCallback;

    .line 101
    iput p2, p0, Lcom/market/sdk/ImageManager$ImageLoadTask;->mMaxWidth:I

    .line 102
    iput p3, p0, Lcom/market/sdk/ImageManager$ImageLoadTask;->mMaxHeight:I

    return-void
.end method

.method static synthetic access$300(Lcom/market/sdk/ImageManager$ImageLoadTask;)Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/market/sdk/ImageManager$ImageLoadTask;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/market/sdk/ImageManager$ImageLoadTask;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/market/sdk/ImageManager$ImageLoadTask;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/market/sdk/ImageManager$ImageLoadTask;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/market/sdk/ImageManager$ImageLoadTask;->mMaxHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/market/sdk/ImageManager$ImageLoadTask;)Lcom/market/sdk/IImageCallback;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/market/sdk/ImageManager$ImageLoadTask;->mResponse:Lcom/market/sdk/IImageCallback;

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 106
    new-instance v0, Lcom/market/sdk/ImageManager$ImageLoadTask$1;

    invoke-direct {v0, p0}, Lcom/market/sdk/ImageManager$ImageLoadTask$1;-><init>(Lcom/market/sdk/ImageManager$ImageLoadTask;)V

    .line 113
    invoke-virtual {v0}, Lcom/market/sdk/ImageManager$ImageLoadTask$1;->invokeAsync()V

    return-void
.end method
