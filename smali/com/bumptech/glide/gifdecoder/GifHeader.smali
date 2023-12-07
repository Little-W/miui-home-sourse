.class public Lcom/bumptech/glide/gifdecoder/GifHeader;
.super Ljava/lang/Object;


# instance fields
.field bgColor:I

.field bgIndex:I

.field currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

.field frameCount:I

.field final frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/gifdecoder/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field gct:[I

.field gctFlag:Z

.field gctSize:I

.field height:I

.field loopCount:I

.field pixelAspect:I

.field status:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    return p0
.end method

.method public getNumFrames()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    return p0
.end method
