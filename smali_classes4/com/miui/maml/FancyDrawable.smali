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
.field private static final LOG_TAG:Ljava/lang/String; = "FancyDrawable"

.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final RENDER_TIMEOUT:I = 0x64

.field private static final START_IMAGE_NAME:Ljava/lang/String; = "startImage.png"

.field private static final USE_QUIET_IMAGE_TAG:Ljava/lang/String; = "useQuietImage"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPauseLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private final mRenderTimeout:Ljava/lang/Runnable;

.field private mRendererCore:Lcom/miui/maml/RendererCore;

.field private mStartDrawable:Landroid/graphics/drawable/Drawable;

.field private mTimeOut:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/RendererCore;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/miui/maml/FancyDrawable$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/FancyDrawable$1;-><init>(Lcom/miui/maml/FancyDrawable;)V

    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 40
    invoke-direct {p0, p1}, Lcom/miui/maml/FancyDrawable;->init(Lcom/miui/maml/RendererCore;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/maml/FancyDrawable;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/miui/maml/FancyDrawable;->mTimeOut:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/maml/FancyDrawable;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doPause()V

    return-void
.end method

.method private doPause()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    if-eqz v1, :cond_0

    .line 167
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "doPause: "

    .line 168
    invoke-direct {p0, v1}, Lcom/miui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 169
    iput-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    .line 170
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {v1, p0}, Lcom/miui/maml/RendererCore;->pauseRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private doResume()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    if-nez v1, :cond_0

    .line 177
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "doResume: "

    .line 178
    invoke-direct {p0, v1}, Lcom/miui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 179
    iput-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    .line 180
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {v1, p0}, Lcom/miui/maml/RendererCore;->resumeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 181
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private init(Lcom/miui/maml/RendererCore;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 70
    new-instance v0, Lcom/miui/maml/FancyDrawable$FancyDrawableState;

    invoke-direct {v0, p1}, Lcom/miui/maml/FancyDrawable$FancyDrawableState;-><init>(Lcom/miui/maml/RendererCore;)V

    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 71
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 72
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {p1, p0}, Lcom/miui/maml/RendererCore;->addRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 73
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

    .line 74
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {p1}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p1

    .line 75
    iget-object v0, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "quietImage.png"

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 78
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    :cond_0
    iget-object v0, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "startImage.png"

    invoke-virtual {v0, p1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    .line 84
    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void

    .line 68
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private logd(Ljava/lang/CharSequence;)V
    .locals 1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FancyDrawable"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    const-string v0, "cleanUp: "

    .line 90
    invoke-direct {p0, v0}, Lcom/miui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lcom/miui/maml/RendererCore;->removeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    return-void
.end method

.method public doRender()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 6

    .line 103
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-boolean v0, p0, Lcom/miui/maml/FancyDrawable;->mTimeOut:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doResume()V

    .line 106
    iput-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mTimeOut:Z

    .line 109
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 111
    iget v2, p0, Lcom/miui/maml/FancyDrawable;->mWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/miui/maml/FancyDrawable;->mHeight:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    const-string v2, "useQuietImage"

    .line 112
    iget-object v3, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {v3}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {p0, p1}, Lcom/miui/maml/RendererCore;->render(Landroid/graphics/Canvas;)V

    .line 119
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

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

    .line 197
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->cleanUp()V

    .line 198
    invoke-super {p0}, Lcom/miui/maml/MamlDrawable;->finalize()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicWidth:I

    return p0
.end method

.method public getQuietDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-virtual {p0}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    return-object p0
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doPause()V

    .line 156
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doResume()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 131
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 45
    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    .line 46
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicWidth:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicHeight:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 47
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

    iget p0, p0, Lcom/miui/maml/FancyDrawable;->mIntrinsicHeight:I

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object p2, p0, Lcom/miui/maml/FancyDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 54
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    iput-object p1, v0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    iput-object p2, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Lcom/miui/maml/MamlDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const-string v0, "FancyDrawable"

    const-string v1, "setColorFilter"

    .line 138
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 148
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    if-eqz p0, :cond_3

    .line 149
    invoke-virtual {p0, p1}, Lcom/miui/maml/RendererCore;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    return-void
.end method
