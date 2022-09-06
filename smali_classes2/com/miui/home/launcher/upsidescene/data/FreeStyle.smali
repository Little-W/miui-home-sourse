.class public Lcom/miui/home/launcher/upsidescene/data/FreeStyle;
.super Ljava/lang/Object;
.source "FreeStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;
    }
.end annotation


# instance fields
.field mFreeButtonInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeight:I

.field mMtzGadgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field mName:Ljava/lang/String;

.field mRawWidth:I

.field mSceneScale:F

.field mScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upsidescene/data/Screen;",
            ">;"
        }
    .end annotation
.end field

.field mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mScreens:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mFreeButtonInfos:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mMtzGadgets:Ljava/util/List;

    return-void
.end method

.method private getSpecifyScreen(I)Lcom/miui/home/launcher/upsidescene/data/Screen;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mScreens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 70
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mScreens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/data/Screen;

    .line 71
    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addSprite(Lcom/miui/home/launcher/upsidescene/data/Screen;Lcom/miui/home/launcher/upsidescene/data/Sprite;)V
    .locals 0

    .line 109
    iget-object p1, p1, Lcom/miui/home/launcher/upsidescene/data/Screen;->mSprites:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bringSpriteToTop(Lcom/miui/home/launcher/upsidescene/data/Screen;Lcom/miui/home/launcher/upsidescene/data/Sprite;)V
    .locals 1

    .line 104
    iget-object v0, p1, Lcom/miui/home/launcher/upsidescene/data/Screen;->mSprites:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object p1, p1, Lcom/miui/home/launcher/upsidescene/data/Screen;->mSprites:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createSpriteByUser()Lcom/miui/home/launcher/upsidescene/data/Sprite;
    .locals 2

    .line 98
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;-><init>(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    const/4 v1, 0x1

    .line 99
    iput-boolean v1, v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mIsUserCreated:Z

    return-object v0
.end method

.method public getBackgroundScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;
    .locals 1

    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSpecifyScreen(I)Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v0

    return-object v0
.end method

.method public getDockScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;
    .locals 1

    const/4 v0, 0x4

    .line 65
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSpecifyScreen(I)Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v0

    return-object v0
.end method

.method public getDriftScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;
    .locals 1

    const/4 v0, 0x2

    .line 61
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSpecifyScreen(I)Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;
    .locals 1

    const/4 v0, 0x3

    .line 53
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSpecifyScreen(I)Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v0

    return-object v0
.end method

.method public getFreeButton(Lcom/miui/home/library/utils/FileAccessable;)Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mFreeButtonInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    .line 78
    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->getFile()Lcom/miui/home/library/utils/FileAccessable;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFreeButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mFreeButtonInfos:Ljava/util/List;

    return-object v0
.end method

.method public getMtzGadgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mMtzGadgets:Ljava/util/List;

    return-object v0
.end method

.method public getSceneScale()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mSceneScale:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->mWidth:I

    return v0
.end method

.method public removeSprite(Lcom/miui/home/launcher/upsidescene/data/Screen;Lcom/miui/home/launcher/upsidescene/data/Sprite;)V
    .locals 0

    .line 113
    iget-object p1, p1, Lcom/miui/home/launcher/upsidescene/data/Screen;->mSprites:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
