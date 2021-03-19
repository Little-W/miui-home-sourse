.class public Lcom/miui/maml/FancyDrawable;
.super Lcom/miui/maml/MamlDrawable;
.source "FancyDrawable.java"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/FancyDrawable$FancyDrawableState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FancyDrawable"

.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final RENDER_TIMEOUT:I = 0x64

.field private static final START_IMAGE_NAME:Ljava/lang/String; = "startImage.png"

.field private static final USE_QUIET_IMAGE_TAG:Ljava/lang/String; = "useQuietImage"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPauseLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private mRenderTimeout:Ljava/lang/Runnable;

.field private mRendererCore:Lcom/miui/maml/RendererCore;

.field private mStartDrawable:Landroid/graphics/drawable/Drawable;

.field private mTimeOut:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/RendererCore;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/miui/maml/FancyDrawable$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/FancyDrawable$1;-><init>(Lcom/miui/maml/FancyDrawable;)V

    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 43
    invoke-direct {p0, p1}, Lcom/miui/maml/FancyDrawable;->init(Lcom/miui/maml/RendererCore;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/maml/FancyDrawable;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/miui/maml/FancyDrawable;->mTimeOut:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/maml/FancyDrawable;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doPause()V

    return-void
.end method

.method private doPause()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    if-eqz v1, :cond_0

    .line 169
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "doPause: "

    .line 170
    invoke-direct {p0, v1}, Lcom/miui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 171
    iput-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    .line 172
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {v1, p0}, Lcom/miui/maml/RendererCore;->pauseRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 173
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doResume()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    if-nez v1, :cond_0

    .line 179
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "doResume: "

    .line 180
    invoke-direct {p0, v1}, Lcom/miui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 181
    iput-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    .line 182
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {v1, p0}, Lcom/miui/maml/RendererCore;->resumeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init(Lcom/miui/maml/RendererCore;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 73
    new-instance v0, Lcom/miui/maml/FancyDrawable$FancyDrawableState;

    invoke-direct {v0, p1}, Lcom/miui/maml/FancyDrawable$FancyDrawableState;-><init>(Lcom/miui/maml/RendererCore;)V

    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 74
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 75
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {p1, p0}, Lcom/miui/maml/RendererCore;->addRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 76
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {p1}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {v0}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/FancyDrawable;->setIntrinsicSize(II)V

    .line 77
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {p1}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p1

    .line 78
    iget-object v0, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "quietImage.png"

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 81
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    :cond_0
    iget-object v0, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "startImage.png"

    invoke-virtual {v0, p1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 87
    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private logd(Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "FancyDrawable"

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    const-string v0, "cleanUp: "

    .line 93
    invoke-direct {p0, v0}, Lcom/miui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lcom/miui/maml/RendererCore;->removeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    return-void
.end method

.method public doRender()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-boolean v0, p0, Lcom/miui/maml/FancyDrawable;->mTimeOut:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doResume()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/miui/maml/FancyDrawable;->mTimeOut:Z

    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 113
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    iget v1, p0, Lcom/miui/maml/FancyDrawable;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/miui/maml/FancyDrawable;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    const-string v1, "useQuietImage"

    .line 115
    iget-object v2, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {v2}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {v1, p1}, Lcom/miui/maml/RendererCore;->render(Landroid/graphics/Canvas;)V

    .line 121
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->cleanUp()V

    .line 200
    invoke-super {p0}, Lcom/miui/maml/MamlDrawable;->finalize()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getQuietDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {v0}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    return-object v0
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doPause()V

    .line 158
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doResume()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 48
    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    .line 49
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicWidth:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicHeight:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Badge location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not in badged drawable bounds "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicWidth:I

    iget v2, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicHeight:I

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object p2, p0, Lcom/miui/maml/FancyDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 57
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    iput-object p1, v0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    iput-object p2, p1, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 139
    invoke-super {p0, p1}, Lcom/miui/maml/MamlDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const-string v0, "FancyDrawable"

    const-string v1, "setColorFilter"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererCore;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    return-void
.end method
