.class Lcom/market/sdk/ImageManager$IconLoadTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconLoadTask"
.end annotation


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mMask:Ljava/lang/String;

.field private mResponse:Lcom/market/sdk/IImageCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/ImageCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/market/sdk/ImageManager$IconLoadTask;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/market/sdk/ImageManager$IconLoadTask;->mMask:Ljava/lang/String;

    iget-object p1, p0, Lcom/market/sdk/ImageManager$IconLoadTask;->mAppId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p2, Lcom/market/sdk/ImageManager$ImageLoadResponse;

    invoke-direct {p2, p1}, Lcom/market/sdk/ImageManager$ImageLoadResponse;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/market/sdk/ImageManager$IconLoadTask;->mResponse:Lcom/market/sdk/IImageCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/ImageManager$IconLoadTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/ImageManager$IconLoadTask;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/market/sdk/ImageManager$IconLoadTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/ImageManager$IconLoadTask;->mMask:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/market/sdk/ImageManager$IconLoadTask;)Lcom/market/sdk/IImageCallback;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/ImageManager$IconLoadTask;->mResponse:Lcom/market/sdk/IImageCallback;

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 1

    new-instance v0, Lcom/market/sdk/ImageManager$IconLoadTask$1;

    invoke-direct {v0, p0}, Lcom/market/sdk/ImageManager$IconLoadTask$1;-><init>(Lcom/market/sdk/ImageManager$IconLoadTask;)V

    invoke-virtual {v0}, Lcom/market/sdk/ImageManager$IconLoadTask$1;->invokeAsync()V

    return-void
.end method
