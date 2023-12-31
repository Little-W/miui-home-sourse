.class public Lcom/miui/home/launcher/view/RatioImageView;
.super Landroid/widget/ImageView;
.source "RatioImageView.java"


# instance fields
.field private mRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    sget-object v0, Lcom/miui/home/R$styleable;->RatioImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x3ef5c28f    # 0.48f

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/view/RatioImageView;->mRatio:F

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getLayoutRatio()F
    .locals 0

    .line 37
    iget p0, p0, Lcom/miui/home/launcher/view/RatioImageView;->mRatio:F

    return p0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 24
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/RatioImageView;->getLayoutRatio()F

    move-result v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 27
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 29
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/RatioImageView;->getLayoutRatio()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 31
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 33
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method
