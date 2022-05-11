.class public Lcom/miui/home/launcher/IconMessage;
.super Landroid/widget/TextView;
.source "IconMessage.java"


# instance fields
.field private final MAX_DIGIT:I

.field private final PADDING:I

.field private isDrawBackCircle:Z

.field private mBackCircleRadius:F

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCirclePath:Landroid/graphics/Path;

.field private mDrawOutline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x3e7

    .line 18
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->MAX_DIGIT:I

    const/16 p1, 0xc

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->PADDING:I

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->mBackCircleRadius:F

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    .line 28
    invoke-direct {p0}, Lcom/miui/home/launcher/IconMessage;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x3e7

    .line 18
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->MAX_DIGIT:I

    const/16 p1, 0xc

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->PADDING:I

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->mBackCircleRadius:F

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    .line 33
    invoke-direct {p0}, Lcom/miui/home/launcher/IconMessage;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x3e7

    .line 18
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->MAX_DIGIT:I

    const/16 p1, 0xc

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->PADDING:I

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->mBackCircleRadius:F

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/IconMessage;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x3e7

    .line 18
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->MAX_DIGIT:I

    const/16 p1, 0xc

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->PADDING:I

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/miui/home/launcher/IconMessage;->mBackCircleRadius:F

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/IconMessage;->init()V

    return-void
.end method

.method private createCirclePatch(II)Landroid/graphics/Path;
    .locals 10

    if-le p1, p2, :cond_0

    .line 101
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    int-to-float v9, p2

    const/4 v0, 0x0

    .line 102
    invoke-virtual {v8, v9, v0}, Landroid/graphics/Path;->moveTo(FF)V

    sub-int p2, p1, p2

    int-to-float v1, p2

    .line 103
    invoke-virtual {v8, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v2, 0x0

    int-to-float v3, p1

    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v7, 0x0

    move-object v0, v8

    move v4, v9

    .line 104
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 105
    invoke-virtual {v8, v9, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v1, 0x0

    const/high16 v5, 0x42b40000    # 90.0f

    move v3, v9

    .line 106
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 107
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    return-object v8

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private init()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/IconMessage;->mCirclePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/IconMessage;->mCirclePaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/IconMessage;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/IconMessage;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/launcher/IconMessage;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600fa

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 56
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/miui/home/launcher/IconMessage;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 86
    iget-boolean v0, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    if-nez v0, :cond_2

    .line 87
    iget-boolean v0, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/IconMessage;->mCirclePath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/miui/home/launcher/IconMessage;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 91
    :cond_0
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

    .line 94
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconMessage;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/miui/home/launcher/IconMessage;->getHeight()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    iput p3, p0, Lcom/miui/home/launcher/IconMessage;->mBackCircleRadius:F

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/IconMessage;->createCirclePatch(II)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/IconMessage;->mCirclePath:Landroid/graphics/Path;

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 74
    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->mDrawOutline:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e7

    if-le v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconMessage;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100239

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-eqz p1, :cond_1

    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/IconMessage;->isDrawBackCircle:Z

    return-void
.end method
