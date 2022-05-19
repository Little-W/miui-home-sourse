.class public Lcom/miui/home/launcher/view/AppPairStartView;
.super Landroid/view/View;
.source "AppPairStartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;
    }
.end annotation


# instance fields
.field mAnimParam:Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

.field private mContext:Landroid/content/Context;

.field private mLineRect:Landroid/graphics/Rect;

.field private mNeedClean:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPairIcon:Landroid/graphics/Bitmap;

.field private mPairIconRect:Landroid/graphics/Rect;

.field private mPairShadow:Landroid/graphics/Bitmap;

.field private mPairShadowRect:Landroid/graphics/Rect;

.field private mPrimaryIcon:Landroid/graphics/Bitmap;

.field private mPrimaryIconRect:Landroid/graphics/Rect;

.field private mPrimaryShadow:Landroid/graphics/Bitmap;

.field private mPrimaryShadowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mNeedClean:Z

    return-void
.end method

.method private static blurImageByRenderScript(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    .line 247
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 250
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 254
    :cond_0
    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 256
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 257
    invoke-virtual {v3, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 258
    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 259
    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 260
    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 261
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {v1, p0, p1}, Lcom/miui/home/launcher/view/AppPairStartView;->scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createShadowedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    .line 215
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 221
    :cond_0
    div-int/lit8 v0, p2, 0x4

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v3, v1, v0

    add-int/2addr v2, v0

    .line 226
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    .line 228
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 229
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v5, 0x5a

    .line 230
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 231
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    .line 232
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    sub-int/2addr v3, v1

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v6

    .line 233
    invoke-virtual {v5, p1, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    const/4 p1, 0x0

    if-eqz v0, :cond_2

    const/high16 v1, 0x41c80000    # 25.0f

    .line 237
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/view/AppPairStartView;->blurImageByRenderScript(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 238
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p0, :cond_2

    .line 240
    invoke-static {p0, p2, p2}, Lcom/miui/home/launcher/view/AppPairStartView;->scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    move-object p1, p0

    :cond_2
    return-object p1
.end method

.method private drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mAnimParam:Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    iget-object v0, v0, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawableToBitamp(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p1, :cond_0

    .line 267
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 271
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 272
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 273
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 274
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 275
    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 276
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 277
    invoke-static {v2, p2, p3}, Lcom/miui/home/launcher/view/AppPairStartView;->scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getAppBadgeIcon(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 206
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getMinRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 198
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 199
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static synthetic lambda$initView$0(Lcom/miui/home/launcher/view/AppPairStartView;Landroid/content/Intent;Landroid/os/UserHandle;ILjava/lang/String;Landroid/os/UserHandle;I)V
    .locals 0

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/view/AppPairStartView;->getAppBadgeIcon(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p3, p3}, Lcom/miui/home/launcher/view/AppPairStartView;->drawableToBitamp(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPrimaryIcon:Landroid/graphics/Bitmap;

    .line 83
    invoke-direct {p0, p4, p5}, Lcom/miui/home/launcher/view/AppPairStartView;->getAppBadgeIcon(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p3, p3}, Lcom/miui/home/launcher/view/AppPairStartView;->drawableToBitamp(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPairIcon:Landroid/graphics/Bitmap;

    .line 84
    iget-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPrimaryIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, p2, p6}, Lcom/miui/home/launcher/view/AppPairStartView;->createShadowedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPrimaryShadow:Landroid/graphics/Bitmap;

    .line 85
    iget-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPairIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, p2, p6}, Lcom/miui/home/launcher/view/AppPairStartView;->createShadowedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPairShadow:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 281
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 284
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 285
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method


# virtual methods
.method public animate(F)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mAnimParam:Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    iput p1, v0, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->alpha:F

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/AppPairStartView;->invalidate()V

    return-void
.end method

.method public animate(Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mAnimParam:Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    .line 177
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/AppPairStartView;->invalidate()V

    return-void
.end method

.method public clean()V
    .locals 1

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mNeedClean:Z

    return-void
.end method

.method public initView(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 9

    .line 73
    iput-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mContext:Landroid/content/Context;

    .line 74
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPaint:Landroid/graphics/Paint;

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070074

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 79
    iget-object p1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070075

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 81
    new-instance p1, Lcom/miui/home/launcher/view/-$$Lambda$AppPairStartView$IZNZHuxqfim5W68uv9wOZ1kuRto;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/miui/home/launcher/view/-$$Lambda$AppPairStartView$IZNZHuxqfim5W68uv9wOZ1kuRto;-><init>(Lcom/miui/home/launcher/view/AppPairStartView;Landroid/content/Intent;Landroid/os/UserHandle;ILjava/lang/String;Landroid/os/UserHandle;I)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/AppPairStartView;->updateIconRect()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    iget-boolean v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mNeedClean:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mAnimParam:Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    iget-object v0, v0, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mAnimParam:Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    iget v0, v0, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->alpha:F

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/AppPairStartView;->setAlpha(F)V

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/AppPairStartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mAnimParam:Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    iget-object v1, v1, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->windowCrop:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mAnimParam:Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    iget v1, v1, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->cornerRadius:F

    iget-object v2, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mAnimParam:Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    iget v2, v2, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->cornerRadius:F

    iget-object v3, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mAnimParam:Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    iget-object v0, v0, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->windowCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mLineRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/view/AppPairStartView;->getMinRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 169
    iget-object v4, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPrimaryIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPrimaryIconRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPrimaryIconRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/view/AppPairStartView;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 170
    iget-object v10, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPairIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPairIconRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v0

    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPairIconRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v12, v0

    iget-object v13, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPaint:Landroid/graphics/Paint;

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/miui/home/launcher/view/AppPairStartView;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 171
    iget-object v2, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPrimaryShadow:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPrimaryShadowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPrimaryShadowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/view/AppPairStartView;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 172
    iget-object v8, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPairShadow:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPairShadowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v0

    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPairShadowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v0

    iget-object v11, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/launcher/view/AppPairStartView;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public updateIconRect()V
    .locals 12

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 95
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    iget-object v3, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 98
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 99
    div-int/lit8 v4, v3, 0x2

    .line 100
    div-int/lit8 v5, v2, 0x2

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/AppPairStartView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070076

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 107
    iget-object v7, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mAnimParam:Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 108
    new-instance v7, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v11, 0x0

    invoke-direct {v7, v11, v9, v10, v11}, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;-><init>(FLandroid/graphics/Matrix;Landroid/graphics/Rect;F)V

    iput-object v7, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mAnimParam:Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;

    goto :goto_0

    .line 111
    :cond_0
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v8, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, v7, Lcom/miui/home/launcher/view/AppPairStartView$AppPairAnimationParam;->windowCrop:Landroid/graphics/Rect;

    .line 114
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 116
    new-instance v3, Landroid/graphics/Rect;

    sub-int v7, v4, v6

    add-int/2addr v4, v6

    invoke-direct {v3, v7, v8, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mLineRect:Landroid/graphics/Rect;

    .line 117
    div-int/lit8 v2, v7, 0x2

    .line 119
    div-int/lit8 v3, v4, 0x2

    add-int/2addr v4, v3

    move v3, v5

    goto :goto_1

    .line 122
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    sub-int v7, v5, v6

    add-int/2addr v5, v6

    invoke-direct {v2, v8, v7, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mLineRect:Landroid/graphics/Rect;

    .line 124
    div-int/lit8 v2, v7, 0x2

    .line 126
    div-int/lit8 v3, v5, 0x2

    add-int/2addr v5, v3

    move v3, v5

    move v5, v2

    move v2, v4

    .line 129
    :goto_1
    div-int/lit8 v6, v0, 0x2

    sub-int v7, v2, v6

    sub-int v8, v5, v6

    .line 131
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v7, v0

    add-int v11, v8, v0

    invoke-direct {v9, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPrimaryIconRect:Landroid/graphics/Rect;

    .line 134
    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v2, v7

    sub-int/2addr v5, v7

    .line 136
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v2, v1

    add-int v10, v5, v1

    invoke-direct {v8, v2, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPrimaryShadowRect:Landroid/graphics/Rect;

    sub-int v2, v4, v6

    sub-int v5, v3, v6

    .line 141
    new-instance v6, Landroid/graphics/Rect;

    add-int v8, v2, v0

    add-int/2addr v0, v5

    invoke-direct {v6, v2, v5, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPairIconRect:Landroid/graphics/Rect;

    sub-int/2addr v4, v7

    sub-int/2addr v3, v7

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    add-int v2, v4, v1

    add-int/2addr v1, v3

    invoke-direct {v0, v4, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/launcher/view/AppPairStartView;->mPairShadowRect:Landroid/graphics/Rect;

    return-void
.end method
