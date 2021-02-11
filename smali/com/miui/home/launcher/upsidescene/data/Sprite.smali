.class public Lcom/miui/home/launcher/upsidescene/data/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"


# instance fields
.field mAppearance:Lcom/miui/home/launcher/upsidescene/data/Appearance;

.field mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

.field mFunction:Lcom/miui/home/launcher/upsidescene/data/Function;

.field mHeight:I

.field mIndex:I

.field mIsUserCreated:Z

.field mLeft:I

.field mRawHeight:I

.field mRawLeft:I

.field mRawTop:I

.field mRawWidth:I

.field mRotation:F

.field mScaleX:F

.field mScaleY:F

.field mTop:I

.field mWidth:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    return-void
.end method


# virtual methods
.method public getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mAppearance:Lcom/miui/home/launcher/upsidescene/data/Appearance;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Appearance$NoneAppearance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Appearance$NoneAppearance;-><init>(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mAppearance:Lcom/miui/home/launcher/upsidescene/data/Appearance;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mAppearance:Lcom/miui/home/launcher/upsidescene/data/Appearance;

    return-object v0
.end method

.method public getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mFunction:Lcom/miui/home/launcher/upsidescene/data/Function;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mFunction:Lcom/miui/home/launcher/upsidescene/data/Function;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mFunction:Lcom/miui/home/launcher/upsidescene/data/Function;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mHeight:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mLeft:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 34
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 38
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mScaleY:F

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mTop:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mWidth:I

    return v0
.end method

.method public isUserCreated()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mIsUserCreated:Z

    return v0
.end method

.method public setAppearance(Lcom/miui/home/launcher/upsidescene/data/Appearance;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mAppearance:Lcom/miui/home/launcher/upsidescene/data/Appearance;

    return-void
.end method

.method public setFunction(Lcom/miui/home/launcher/upsidescene/data/Function;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mFunction:Lcom/miui/home/launcher/upsidescene/data/Function;

    return-void
.end method

.method public setLocation(II)V
    .locals 1

    .line 54
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mLeft:I

    .line 55
    iput p2, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mTop:I

    int-to-float p1, p1

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSceneScale()F

    move-result v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawLeft:I

    int-to-float p1, p2

    .line 57
    iget-object p2, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getSceneScale()F

    move-result p2

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/data/Sprite;->mRawTop:I

    return-void
.end method
