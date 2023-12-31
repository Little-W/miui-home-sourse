.class public final Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;
.super Landroid/widget/FrameLayout;
.source "LauncherBigIconImageViewContainer.kt"


# instance fields
.field private final debugAlignment:Z

.field private final mAlignIcon:Z

.field private mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

.field private mHeightMeasureSpec:I

.field private mSpanX:I

.field private mSpanY:I

.field private mWidthMeasureSpec:I

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->debugAlignment:Z

    const-string p2, "LauncherBigIconImageViewContainer"

    .line 15
    iput-object p2, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->tag:Ljava/lang/String;

    const/4 p2, 0x2

    .line 19
    iput p2, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mSpanX:I

    .line 20
    iput p2, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mSpanY:I

    .line 21
    iput-boolean p1, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mAlignIcon:Z

    return-void
.end method

.method private final resolveTopPadding(Landroid/graphics/Rect;)V
    .locals 3

    .line 58
    iget v0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mSpanX:I

    iget v1, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mSpanY:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getLeftOrRightPadding(III)I

    move-result v0

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v0, p1}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final getHeightDiffBetweenImageAndImageView()I
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    const-string v1, "mBigIconImageView"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;->getMeasuredWidth()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    .line 90
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-gtz v3, :cond_4

    goto :goto_0

    .line 93
    :cond_4
    iget-object v3, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    if-nez v3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v3}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    if-nez v4, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 94
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    cmpl-float v0, v3, v4

    if-lez v0, :cond_9

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    if-nez p0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v4

    sub-float/2addr v0, p0

    const/4 p0, 0x2

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_9
    :goto_0
    return v2
.end method

.method public final getWidthDiffBetweenImageAndImageView()I
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    const-string v1, "mBigIconImageView"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;->getMeasuredWidth()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    .line 70
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-gtz v3, :cond_4

    goto :goto_0

    .line 73
    :cond_4
    iget-object v3, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    if-nez v3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v3}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    if-nez v4, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 74
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    cmpl-float v0, v4, v3

    if-lez v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    if-nez p0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    sub-float/2addr v0, p0

    const/4 p0, 0x2

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_9
    :goto_0
    return v2
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0a01b0

    .line 30
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.icon_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mBigIconImageView:Lcom/miui/home/launcher/bigicon/LauncherBigIconImageView;

    .line 31
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMiuiWidgetPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p2

    .line 36
    iget v0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mSpanX:I

    iget v1, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mSpanY:I

    iget-boolean v2, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mAlignIcon:Z

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v0, v0

    .line 39
    iget-boolean v1, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->debugAlignment:Z

    if-eqz v1, :cond_0

    .line 42
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    sub-int v1, v2, v1

    .line 43
    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    sub-int v3, v0, v3

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 45
    iget-object v4, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widget content span = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mSpanX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mSpanY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") size = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-lez p1, :cond_1

    if-lt v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 51
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mWidthMeasureSpec:I

    .line 52
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mHeightMeasureSpec:I

    const-string p1, "padding"

    .line 53
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->resolveTopPadding(Landroid/graphics/Rect;)V

    .line 54
    iget p1, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mWidthMeasureSpec:I

    iget p2, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mHeightMeasureSpec:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setSpanXY(II)V
    .locals 1

    .line 23
    iget v0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mSpanX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mSpanY:I

    if-eq p2, v0, :cond_1

    .line 24
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mSpanX:I

    .line 25
    iput p2, p0, Lcom/miui/home/launcher/bigicon/LauncherBigIconImageViewContainer;->mSpanY:I

    :cond_1
    return-void
.end method
