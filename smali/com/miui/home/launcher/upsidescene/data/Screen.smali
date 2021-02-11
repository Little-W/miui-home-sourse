.class public Lcom/miui/home/launcher/upsidescene/data/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# instance fields
.field mHeight:I

.field mHome:I

.field mRawWidth:I

.field mSprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upsidescene/data/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field mType:I

.field mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mSprites:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mHeight:I

    return v0
.end method

.method public getHome()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mHome:I

    return v0
.end method

.method public getSprites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upsidescene/data/Sprite;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mSprites:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mType:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/Screen;->mWidth:I

    return v0
.end method
