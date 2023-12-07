.class public final Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FolderIcon4x4NormalBackgroundDrawable.kt"


# instance fields
.field private isAnimStatus:Z

.field private mAnimBackgroundColor:I

.field private mNormalBackgroundColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mStrokeColor:I

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-string v0, "#80ffffff"

    .line 13
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mNormalBackgroundColor:I

    const-string v0, "#ffffffff"

    .line 14
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mAnimBackgroundColor:I

    const-string v0, "#1A000000"

    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeColor:I

    const/high16 v0, 0x42380000    # 46.0f

    .line 16
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mRadius:F

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeWidth:F

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0600e4

    .line 24
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mNormalBackgroundColor:I

    const v0, 0x7f0600e2

    .line 25
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mAnimBackgroundColor:I

    const v0, 0x7f0600e6

    .line 26
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeColor:I

    goto :goto_0

    :cond_0
    const v0, 0x7f0600e5

    .line 28
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mNormalBackgroundColor:I

    const v0, 0x7f0600e3

    .line 29
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mAnimBackgroundColor:I

    const v0, 0x7f0600e7

    .line 30
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeColor:I

    .line 33
    :goto_0
    invoke-static {p1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mRadius:F

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07017a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    :goto_1
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeWidth:F

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->initPaint()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeWidth:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 41
    new-instance v1, Landroid/graphics/RectF;

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    .line 41
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 46
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mRadius:F

    sub-float v3, v2, v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mRadius:F

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final initPaint()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->isAnimStatus:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mAnimBackgroundColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mNormalBackgroundColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;->invalidateSelf()V

    return-void
.end method
