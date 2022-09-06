.class public Lcom/miui/home/launcher/view/BottomClippedImageView;
.super Landroid/widget/ImageView;
.source "BottomClippedImageView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 37
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 51
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 52
    iget-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/BottomClippedImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    iput-object p1, p0, Lcom/miui/home/launcher/view/BottomClippedImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
