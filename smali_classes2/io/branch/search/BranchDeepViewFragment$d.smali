.class public Lio/branch/search/BranchDeepViewFragment$d;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchDeepViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Path;

.field public final c:F

.field public final d:Landroid/graphics/Bitmap;

.field public final e:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;F)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/branch/search/BranchDeepViewFragment$d;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lio/branch/search/BranchDeepViewFragment$d;->b:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lio/branch/search/BranchDeepViewFragment$d;->e:Landroid/graphics/RectF;

    iput-object p1, p0, Lio/branch/search/BranchDeepViewFragment$d;->d:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput p2, p0, Lio/branch/search/BranchDeepViewFragment$d;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Bitmap;FLio/branch/search/BranchDeepViewFragment$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/branch/search/BranchDeepViewFragment$d;-><init>(Landroid/graphics/Bitmap;F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lio/branch/search/BranchDeepViewFragment$d;->c:F

    invoke-virtual {p0}, Lio/branch/search/BranchDeepViewFragment$d;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lio/branch/search/BranchDeepViewFragment$d;->c:F

    invoke-virtual {p0}, Lio/branch/search/BranchDeepViewFragment$d;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lio/branch/search/BranchDeepViewFragment$d;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lio/branch/search/BranchDeepViewFragment$d;->b:Landroid/graphics/Path;

    iget-object v2, p0, Lio/branch/search/BranchDeepViewFragment$d;->e:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lio/branch/search/BranchDeepViewFragment$d;->b:Landroid/graphics/Path;

    iget-object p0, p0, Lio/branch/search/BranchDeepViewFragment$d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchDeepViewFragment$d;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchDeepViewFragment$d;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lio/branch/search/BranchDeepViewFragment$d;->e:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchDeepViewFragment$d;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchDeepViewFragment$d;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
