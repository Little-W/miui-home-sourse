.class public Lcom/miui/home/launcher/widget/WidgetCell;
.super Landroid/widget/RelativeLayout;
.source "WidgetCell.java"


# static fields
.field private static final BITMAP_MAX_SIZE_SCALE:F


# instance fields
.field public mBadge:Landroid/widget/ImageView;

.field public mItemPreview:Landroid/widget/ImageView;

.field public mItemTitle:Landroid/widget/TextView;

.field public mSpan:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    :goto_0
    sput v0, Lcom/miui/home/launcher/widget/WidgetCell;->BITMAP_MAX_SIZE_SCALE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic lambda$applyFromCellItem$0(Lcom/miui/home/launcher/WidgetPreviewLoader;Lcom/miui/home/launcher/ItemInfo;IILjava/lang/Void;)Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;
    .locals 0

    .line 71
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/WidgetPreviewLoader;->queryPreview(Lcom/miui/home/launcher/ItemInfo;II)Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$applyFromCellItem$1(Lcom/miui/home/launcher/widget/WidgetCell;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V
    .locals 8

    .line 77
    iget-object v0, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-ne v0, p2, :cond_1

    if-nez p4, :cond_0

    .line 79
    iget-object p2, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object p2, p2, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p2, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object p2, p2, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object v0, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    iget-object v1, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object v0, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    iget-object v1, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v4, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object v6, p1, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    iget-object v7, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/widget/WidgetCell;->setImageDrawable(IILandroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setImageDrawable(IILandroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p5, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070391

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eq p2, v1, :cond_2

    .line 100
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 101
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070392

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p2, p1

    .line 102
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 103
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    .line 104
    invoke-virtual {p3, v1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    sub-int/2addr v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    div-float v0, p1, v1

    div-float/2addr p1, p2

    .line 105
    invoke-virtual {p3, v0, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :cond_3
    int-to-float p1, v0

    .line 108
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 109
    invoke-virtual {p3, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 111
    :goto_0
    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 112
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method applyFromCellItem(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader;)V
    .locals 7

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    const-string v1, "%d x %d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f100078

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f070391

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/miui/home/launcher/widget/WidgetCell;->BITMAP_MAX_SIZE_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 69
    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;

    invoke-direct {v1, p4, p1, v0, v0}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;-><init>(Lcom/miui/home/launcher/WidgetPreviewLoader;Lcom/miui/home/launcher/ItemInfo;II)V

    new-instance p4, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$5DsBI2EZdffurXxSuRe1BMpWSPE;

    invoke-direct {p4, p0, p2, p1, p3}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$5DsBI2EZdffurXxSuRe1BMpWSPE;-><init>(Lcom/miui/home/launcher/widget/WidgetCell;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;)V

    const/4 p1, 0x0

    invoke-static {v1, p4, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0133

    .line 45
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0131

    .line 46
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    const v0, 0x7f0a0132

    .line 47
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    const v0, 0x7f0a012f

    .line 48
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    return-void
.end method
