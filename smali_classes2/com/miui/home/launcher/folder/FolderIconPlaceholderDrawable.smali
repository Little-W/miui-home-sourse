.class public final Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FolderIconPlaceholderDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable$Companion;


# instance fields
.field private final LAYOUT_DEBUGABLE:Z

.field private final TAG:Ljava/lang/String;

.field private mBackgroundColor:I

.field private mBackgroundColorDark:I

.field private mBackgroundColorLight:I

.field private mBoundRect:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->Companion:Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-string v0, "#4DFFFFFF"

    .line 18
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mBackgroundColor:I

    .line 19
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mBackgroundColorDark:I

    const-string v0, "#F0000000"

    .line 20
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mBackgroundColorLight:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 21
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mRadius:F

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    const-string v0, "FolderIconPlaceholderDrawable"

    .line 25
    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->TAG:Ljava/lang/String;

    const v0, 0x7f0600e8

    .line 30
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mBackgroundColorDark:I

    const v0, 0x7f0600e9

    .line 32
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mBackgroundColorLight:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07017b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mRadius:F

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->initPaint()V

    return-void
.end method

.method private final getRectFSafe()Landroid/graphics/RectF;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mBoundRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    return-object v0
.end method

.method private final setCorners(F)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mRadius:F

    return-void
.end method

.method private final setRectF(Landroid/graphics/RectF;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mBoundRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final calcDrawableParams()V
    .locals 5

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v0, v0

    const v2, 0x3d1b8aa0    # 0.037974f

    mul-float/2addr v2, v0

    const v3, 0x3e5bbe14

    mul-float/2addr v3, v0

    .line 81
    new-instance v4, Landroid/graphics/RectF;

    sub-float/2addr v0, v2

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-direct {v4, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 80
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->setRectF(Landroid/graphics/RectF;)V

    .line 88
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->setCorners(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->getRectFSafe()Landroid/graphics/RectF;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->initPaint()V

    .line 42
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mRadius:F

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 45
    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->LAYOUT_DEBUGABLE:Z

    if-eqz p1, :cond_0

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "draw rect["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final initPaint()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mBackgroundColorLight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mBackgroundColorDark:I

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mBackgroundColor:I

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->calcDrawableParams()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;->invalidateSelf()V

    return-void
.end method
