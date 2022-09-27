.class public Lcom/miui/maml/elements/video/SurfaceVideoView;
.super Lcom/miui/maml/elements/video/BaseVideoView;
.source "SurfaceVideoView.java"


# static fields
.field private static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field private static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceVideoView"


# instance fields
.field private mFormat:I

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mMamlSurfaceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/component/MamlSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mSubLayer:I

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mVisibility:I

.field private mWidth:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/component/MamlSurface;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x2

    .line 31
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mFormat:I

    .line 32
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mX:F

    .line 36
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mY:F

    .line 40
    new-instance p1, Lcom/miui/maml/elements/video/SurfaceVideoView$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/video/SurfaceVideoView$1;-><init>(Lcom/miui/maml/elements/video/SurfaceVideoView;)V

    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 49
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Surface_getInstance()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurface:Landroid/view/Surface;

    .line 50
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/video/SurfaceVideoView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSurfaceInternal()V

    return-void
.end method

.method private initSize()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 157
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 158
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 161
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    .line 162
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    if-gtz v0, :cond_0

    .line 163
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    .line 166
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    if-gtz v0, :cond_1

    .line 167
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSize()V

    return-void
.end method

.method private postUpdateRunnable()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateSize()V
    .locals 3

    .line 173
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mScaleMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVideoHeight:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVideoWidth:I

    if-lez v0, :cond_1

    .line 174
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVideoWidth:I

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVideoHeight:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 175
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVideoWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVideoHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    goto :goto_0

    .line 176
    :cond_0
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVideoWidth:I

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVideoHeight:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 177
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVideoHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVideoWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSurfaceInternal()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 191
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_openTransaction()V

    .line 193
    :try_start_0
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_show(Landroid/view/SurfaceControl;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_hide(Landroid/view/SurfaceControl;)V

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    invoke-static {v0, v1}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_setLayer(Landroid/view/SurfaceControl;I)V

    .line 199
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mX:F

    iget v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mY:F

    invoke-static {v0, v1, v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_setPosition(Landroid/view/SurfaceControl;FF)V

    .line 200
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    invoke-static {v0, v1, v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_setBufferSize(Landroid/view/SurfaceControl;II)V

    .line 201
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0, v1}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Surface_copyFrom(Landroid/view/Surface;Landroid/view/SurfaceControl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_closeTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_closeTransaction()V

    .line 204
    throw v0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected addSurfaceHolderCallback()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/component/MamlSurface;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlSurface;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method protected onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 8

    .line 106
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->initSize()V

    if-eqz p1, :cond_2

    .line 108
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/component/MamlSurface;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlSurface;->isIsSuperWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "superwallpaper.SurfaceVideoView"

    goto :goto_0

    :cond_0
    const-string v1, "SurfaceVideoView"

    :goto_0
    move-object v4, v1

    .line 112
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlSurface;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move-object v3, p1

    iget v5, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v6, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    iget v7, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mFormat:I

    .line 112
    invoke-static/range {v2 .. v7}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_getInstance_with_params(Landroid/view/Surface;Landroid/view/SurfaceControl;Ljava/lang/String;III)Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 114
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSurfaceInternal()V

    :cond_2
    return-void
.end method

.method protected onSurfaceDestroyed()V
    .locals 3

    const-string v0, "SurfaceVideoView"

    const-string v1, "onSurfaceDestroyed"

    .line 120
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->releaseMedia(Z)V

    .line 122
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 124
    iput-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 131
    iget-object v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iput-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method protected setFormat(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mFormat:I

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    .line 74
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    .line 75
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSize()V

    .line 76
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 92
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    if-eq v0, p1, :cond_0

    .line 93
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    .line 94
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 1

    .line 56
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 57
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mX:F

    .line 58
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 1

    .line 64
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 65
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mY:F

    .line 66
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    :cond_0
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 83
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 85
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    .line 87
    :goto_0
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    return-void
.end method

.method protected updateVideoSize()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSize()V

    .line 101
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSurfaceInternal()V

    return-void
.end method
