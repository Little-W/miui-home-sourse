.class public Lmiuix/animation/styles/TintDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TintDrawable.java"


# static fields
.field private static final sListener:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBounds:Landroid/graphics/RectF;

.field private mOriDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lmiuix/animation/styles/TintDrawable$1;

    invoke-direct {v0}, Lmiuix/animation/styles/TintDrawable$1;-><init>()V

    sput-object v0, Lmiuix/animation/styles/TintDrawable;->sListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lmiuix/animation/styles/TintDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/animation/styles/TintDrawable;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->clear()V

    return-void
.end method

.method private clear()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->recycleBitmap()V

    return-void
.end method

.method private convertBmpToMask()V
    .locals 11

    .line 175
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 176
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v1, v0, v9

    .line 177
    new-array v10, v1, [I

    .line 178
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    .line 179
    :goto_0
    array-length v2, v10

    if-ge v1, v2, :cond_1

    .line 180
    aget v2, v10, v1

    .line 181
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/high16 v2, -0x1000000

    .line 182
    aput v2, v10, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method private createBitmap(II)V
    .locals 2

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 126
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->recycleBitmap()V

    .line 130
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "miuix_anim"

    const-string p2, "TintDrawable.createBitmap failed, out of memory"

    .line 134
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public static get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;
    .locals 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 80
    instance-of v0, p0, Lmiuix/animation/styles/TintDrawable;

    if-eqz v0, :cond_0

    .line 81
    check-cast p0, Lmiuix/animation/styles/TintDrawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initBitmap(I)V
    .locals 3

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    :try_start_0
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 159
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 160
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 161
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 163
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 165
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_2

    .line 167
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->convertBmpToMask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "miuix_anim"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TintDrawable.initBitmap failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    .line 154
    :cond_3
    :goto_1
    iget-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private recycleBitmap()V
    .locals 1

    .line 143
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method static setAndGet(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;
    .locals 3

    .line 88
    invoke-static {p0}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 90
    new-instance v0, Lmiuix/animation/styles/TintDrawable;

    invoke-direct {v0}, Lmiuix/animation/styles/TintDrawable;-><init>()V

    .line 91
    iput-object p0, v0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/animation/styles/TintDrawable;->setOriDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    sget-object v1, Lmiuix/animation/styles/TintDrawable;->sListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 95
    new-instance v1, Lmiuix/animation/styles/TintDrawable$2;

    invoke-direct {v1, p0, v0}, Lmiuix/animation/styles/TintDrawable$2;-><init>(Landroid/view/View;Lmiuix/animation/styles/TintDrawable;)V

    invoke-static {p0, v1}, Lmiuix/animation/Folme;->post(Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_0
    return-object v0
.end method

.method private setOriDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 190
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 191
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 192
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 193
    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 194
    iget-object v4, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 195
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;->getIntValue(Landroid/view/View;)I

    move-result v0

    .line 199
    :try_start_0
    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 200
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 201
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 204
    :cond_0
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 211
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiuix/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lmiuix/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 205
    :cond_2
    :goto_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 206
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method initTintBuffer(I)V
    .locals 2

    .line 110
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 114
    iget-object v1, p0, Lmiuix/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0, v0, v1}, Lmiuix/animation/styles/TintDrawable;->createBitmap(II)V

    .line 120
    invoke-direct {p0, p1}, Lmiuix/animation/styles/TintDrawable;->initBitmap(I)V

    return-void

    .line 116
    :cond_2
    :goto_0
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->recycleBitmap()V

    return-void
.end method

.method restoreOriginalDrawable()V
    .locals 0

    .line 218
    invoke-direct {p0}, Lmiuix/animation/styles/TintDrawable;->clear()V

    .line 219
    invoke-virtual {p0}, Lmiuix/animation/styles/TintDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
