.class public Lcom/miui/home/launcher/ClippedImageView;
.super Landroid/widget/ImageView;
.source "ClippedImageView.java"


# instance fields
.field private final mZone:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ClippedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget-object v0, Lcom/miui/home/R$styleable;->ClippedImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 38
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/ClippedImageView;->mZone:I

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 45
    iget v0, p0, Lcom/miui/home/launcher/ClippedImageView;->mZone:I

    if-eqz v0, :cond_0

    if-lez v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-gez v1, :cond_2

    :cond_0
    if-gez v0, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ClippedImageView;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v0, v2

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
