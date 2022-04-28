.class Lcom/miui/maml/elements/video/NormalVideoView;
.super Lcom/miui/maml/elements/video/BaseVideoView;
.source "NormalVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addSurfaceHolderCallback()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/NormalVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 38
    iget v0, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mScaleMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 39
    iget v0, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/miui/maml/elements/video/NormalVideoView;->getDefaultSize(II)I

    move-result v0

    .line 40
    iget v1, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Lcom/miui/maml/elements/video/NormalVideoView;->getDefaultSize(II)I

    move-result v1

    .line 41
    iget v2, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    if-lez v2, :cond_7

    iget v2, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    if-lez v2, :cond_7

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 45
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 46
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    .line 54
    iget v0, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    mul-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 55
    iget p1, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    mul-int/2addr p1, p2

    iget v0, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    div-int v0, p1, v0

    move p1, v0

    goto :goto_1

    .line 56
    :cond_0
    iget v0, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    mul-int/2addr v1, p1

    if-le v0, v1, :cond_8

    .line 57
    iget p2, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    mul-int/2addr p2, p1

    iget v0, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    div-int v1, p2, v0

    move p2, v1

    goto :goto_1

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    .line 62
    iget v0, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v0

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_5

    .line 70
    iget v1, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_4

    if-le v1, p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    goto :goto_1

    .line 77
    :cond_5
    iget v2, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    .line 78
    iget v4, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    if-ne v1, v3, :cond_6

    if-le v4, p2, :cond_6

    .line 82
    iget v1, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    move p2, v4

    :goto_0
    if-ne v0, v3, :cond_4

    if-le v1, p1, :cond_4

    .line 87
    iget p2, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoHeight:I

    mul-int/2addr p2, p1

    iget v0, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mVideoWidth:I

    div-int v1, p2, v0

    move p2, v1

    goto :goto_1

    :cond_7
    move p1, v0

    move p2, v1

    .line 93
    :cond_8
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/video/NormalVideoView;->setMeasuredDimension(II)V

    goto :goto_2

    .line 95
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method protected onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 18
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method protected onSurfaceDestroyed()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/miui/maml/elements/video/NormalVideoView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method protected setFormat(I)V
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/NormalVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method protected updateVideoSize()V
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/NormalVideoView;->requestLayout()V

    return-void
.end method
