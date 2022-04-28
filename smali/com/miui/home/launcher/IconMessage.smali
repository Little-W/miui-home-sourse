.class public Lcom/miui/home/launcher/IconMessage;
.super Landroid/widget/TextView;
.source "IconMessage.java"


# instance fields
.field private isDrawBackCircle:Z

.field private mBackCircleRadius:F

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mDrawOutline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->mBackCircleRadius:F

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/IconMessage;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->mBackCircleRadius:F

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    .line 28
    invoke-direct {p0}, Lcom/miui/home/launcher/IconMessage;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->mBackCircleRadius:F

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    .line 33
    invoke-direct {p0}, Lcom/miui/home/launcher/IconMessage;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->mBackCircleRadius:F

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/IconMessage;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/IconMessage;->mCirclePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/IconMessage;->mCirclePaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/IconMessage;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/IconMessage;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/launcher/IconMessage;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600fa

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 73
    iget-boolean v0, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    if-nez v0, :cond_1

    .line 74
    iget-boolean v0, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconMessage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/IconMessage;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v1, p0, Lcom/miui/home/launcher/IconMessage;->mBackCircleRadius:F

    iget-object v3, p0, Lcom/miui/home/launcher/IconMessage;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconMessage;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/IconMessage;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->mBackCircleRadius:F

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    return-void
.end method
