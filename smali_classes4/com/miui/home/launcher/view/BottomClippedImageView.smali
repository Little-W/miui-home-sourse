.class public Lcom/miui/home/launcher/view/BottomClippedImageView;
.super Landroid/widget/ImageView;
.source "BottomClippedImageView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 49
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 50
    iget-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/BottomClippedImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 53
    iget-object p2, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, p2, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    .line 55
    iget-object p3, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    sub-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget-object p4, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    add-int/2addr p3, p4

    int-to-float p3, p3

    add-float/2addr p3, p2

    iget-object p0, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
