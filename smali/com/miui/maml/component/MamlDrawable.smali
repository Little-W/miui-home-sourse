.class public Lcom/miui/maml/component/MamlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MamlDrawable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MamlDrawable"

.field private static final RENDER_TIMEOUT:I = 0x64


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mInvalidateSelf:Ljava/lang/Runnable;

.field private mPaused:Z

.field private mRenderTimeout:Ljava/lang/Runnable;

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mUpdater:Lcom/miui/maml/RenderUpdater;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/component/MamlDrawable;-><init>(Lcom/miui/maml/ScreenElementRoot;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Z)V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlDrawable;->mPaused:Z

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcom/miui/maml/component/MamlDrawable$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlDrawable$1;-><init>(Lcom/miui/maml/component/MamlDrawable;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 30
    new-instance v0, Lcom/miui/maml/component/MamlDrawable$2;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlDrawable$2;-><init>(Lcom/miui/maml/component/MamlDrawable;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/miui/maml/component/MamlDrawable;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 54
    iget-object p1, p0, Lcom/miui/maml/component/MamlDrawable;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/component/MamlDrawable;->setIntrinsicSize(II)V

    .line 55
    new-instance p1, Lcom/miui/maml/component/MamlDrawable$3;

    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/miui/maml/component/MamlDrawable$3;-><init>(Lcom/miui/maml/component/MamlDrawable;Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    iput-object p1, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    .line 63
    iget-object p1, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    invoke-virtual {p1}, Lcom/miui/maml/RenderUpdater;->init()V

    .line 64
    iget-object p1, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    invoke-virtual {p1}, Lcom/miui/maml/RenderUpdater;->runUpdater()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/component/MamlDrawable;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/maml/component/MamlDrawable;->doPause()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/maml/component/MamlDrawable;)Landroid/os/Handler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    return-object p0
.end method

.method private doPause()V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlDrawable;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "doPause: "

    .line 132
    invoke-direct {p0, v0}, Lcom/miui/maml/component/MamlDrawable;->logd(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlDrawable;->mPaused:Z

    .line 134
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    invoke-virtual {v0}, Lcom/miui/maml/RenderUpdater;->onPause()V

    return-void
.end method

.method private doResume()V
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlDrawable;->mPaused:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "doResume: "

    .line 141
    invoke-direct {p0, v0}, Lcom/miui/maml/component/MamlDrawable;->logd(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlDrawable;->mPaused:Z

    .line 143
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    invoke-virtual {v0}, Lcom/miui/maml/RenderUpdater;->onResume()V

    return-void
.end method

.method private logd(Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "MamlDrawable"

    .line 152
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

    .line 78
    invoke-direct {p0, v0}, Lcom/miui/maml/component/MamlDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    invoke-virtual {v0}, Lcom/miui/maml/RenderUpdater;->cleanUp()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/component/MamlDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    invoke-direct {p0}, Lcom/miui/maml/component/MamlDrawable;->doResume()V

    .line 101
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 102
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/maml/component/MamlDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    iget v1, p0, Lcom/miui/maml/component/MamlDrawable;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/maml/component/MamlDrawable;->mIntrinsicWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/miui/maml/component/MamlDrawable;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/maml/component/MamlDrawable;->mIntrinsicHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 104
    iget-object v1, p0, Lcom/miui/maml/component/MamlDrawable;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lcom/miui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v0, "MamlDrawable"

    .line 111
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "MamlDrawable"

    .line 108
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/miui/maml/component/MamlDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/miui/maml/component/MamlDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setAutoCleanup(Z)Lcom/miui/maml/component/MamlDrawable;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    invoke-virtual {v0, p1}, Lcom/miui/maml/RenderUpdater;->setAutoCleanup(Z)V

    return-object p0
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int/2addr p3, p1

    .line 84
    iput p3, p0, Lcom/miui/maml/component/MamlDrawable;->mWidth:I

    sub-int/2addr p4, p2

    .line 85
    iput p4, p0, Lcom/miui/maml/component/MamlDrawable;->mHeight:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setIntrinsicSize(II)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/miui/maml/component/MamlDrawable;->mIntrinsicWidth:I

    .line 74
    iput p2, p0, Lcom/miui/maml/component/MamlDrawable;->mIntrinsicHeight:I

    return-void
.end method
