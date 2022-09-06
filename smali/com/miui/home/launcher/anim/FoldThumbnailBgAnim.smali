.class public Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;
.super Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;
.source "FoldThumbnailBgAnim.java"


# instance fields
.field private mCurrtype:Lcom/miui/home/launcher/anim/BackgroundType;

.field private mFoldBackgroundNotDragingColor:I

.field private mFoldBackgroundSelectColor:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;-><init>(Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method protected getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I
    .locals 1

    .line 41
    sget-object v0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim$1;->$SwitchMap$com$miui$home$launcher$anim$BackgroundType:[I

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/BackgroundType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 54
    iget p1, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mBackgroundNormalColor:I

    return p1

    .line 50
    :pswitch_0
    iget p1, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mFoldBackgroundNotDragingColor:I

    return p1

    .line 48
    :pswitch_1
    iget p1, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mBackgroundDragInColor:I

    return p1

    .line 46
    :pswitch_2
    iget p1, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mFoldBackgroundSelectColor:I

    return p1

    .line 43
    :pswitch_3
    iget p1, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mBackgroundNormalColor:I

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initColor()V
    .locals 2

    .line 66
    invoke-super {p0}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->initColor()V

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0600f0

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mBackgroundNormalColor:I

    const v1, 0x7f0600f4

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mFoldBackgroundSelectColor:I

    const v1, 0x7f0600f2

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mFoldBackgroundNotDragingColor:I

    goto :goto_0

    :cond_0
    const v1, 0x7f0600ef

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mBackgroundNormalColor:I

    const v1, 0x7f0600f3

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mFoldBackgroundSelectColor:I

    const v1, 0x7f0600f1

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mFoldBackgroundNotDragingColor:I

    :goto_0
    return-void
.end method

.method public updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne v0, p1, :cond_0

    return-void

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mCurrtype:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mBackgroundController:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->getBackgroundTypeColor(Lcom/miui/home/launcher/anim/BackgroundType;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateStartEndColor(II)V

    .line 34
    iget-object p2, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    :goto_0
    return-void
.end method

.method public updateTargetScale(F)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mCurrtype:Lcom/miui/home/launcher/anim/BackgroundType;

    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldThumbnailBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne v0, v1, :cond_1

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/NormalThumbnailBgAnim;->updateTargetScale(F)V

    :cond_1
    return-void
.end method
