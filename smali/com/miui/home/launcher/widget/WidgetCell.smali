.class public Lcom/miui/home/launcher/widget/WidgetCell;
.super Landroid/widget/RelativeLayout;
.source "WidgetCell.java"


# static fields
.field private static final BITMAP_MAX_SIZE_SCALE:F


# instance fields
.field public mBadge:Landroid/widget/ImageView;

.field public mClickCallBack:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

.field public mContext:Landroid/content/Context;

.field public mItemMore:Landroid/widget/ImageView;

.field public mItemPreview:Landroid/widget/ImageView;

.field public mItemTitle:Landroid/widget/TextView;

.field public mLauncherWidgetHostView:Lcom/miui/launcher/views/LauncherWidgetHostView;

.field public mLinearLayout:Landroid/widget/LinearLayout;

.field public mSpan:Landroid/widget/TextView;

.field public mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    :goto_0
    sput v0, Lcom/miui/home/launcher/widget/WidgetCell;->BITMAP_MAX_SIZE_SCALE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    return-void
.end method

.method private applyPreviewOnAppWidgetHostView(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 139
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_1

    .line 140
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 141
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/miui/launcher/views/LauncherWidgetHostView;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/launcher/views/LauncherWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLauncherWidgetHostView:Lcom/miui/launcher/views/LauncherWidgetHostView;

    .line 145
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLauncherWidgetHostView:Lcom/miui/launcher/views/LauncherWidgetHostView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/widget/WidgetCell;->setAppWidgetHostViewPreview(Lcom/miui/launcher/views/LauncherWidgetHostView;Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$applyFromCellItem$0(Lcom/miui/home/launcher/WidgetPreviewLoader;Lcom/miui/home/launcher/ItemInfo;IILjava/lang/Void;)Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;
    .locals 0

    .line 100
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/WidgetPreviewLoader;->queryPreview(Lcom/miui/home/launcher/ItemInfo;II)Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$applyFromCellItem$1(Lcom/miui/home/launcher/widget/WidgetCell;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V
    .locals 7

    .line 106
    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    if-nez p4, :cond_0

    .line 108
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, ""

    .line 109
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/widget/WidgetCell;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemMore:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    iget-object v1, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    iget-boolean v0, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsShowDetails:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemMore:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    const v1, 0x7f0801ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/miui/home/launcher/widget/WidgetCell$1;

    invoke-direct {v0, p0, p4}, Lcom/miui/home/launcher/widget/WidgetCell$1;-><init>(Lcom/miui/home/launcher/widget/WidgetCell;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemMore:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    iget-object v0, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget-object v5, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    iget-object v6, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/widget/WidgetCell;->setImageDrawable(IILandroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setImageDrawable(IILandroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p5, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 166
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070474

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eq p2, v1, :cond_2

    .line 168
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 169
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070475

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p2, p1

    .line 170
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 171
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    .line 172
    invoke-virtual {p3, v1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    sub-int/2addr v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    div-float v0, p1, v1

    div-float/2addr p1, p2

    .line 173
    invoke-virtual {p3, v0, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :cond_3
    int-to-float p1, v0

    .line 176
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 177
    invoke-virtual {p3, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 179
    :goto_0
    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 180
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method applyFromCellItem(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader;)V
    .locals 7

    .line 89
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/WidgetCell;->applyPreviewOnAppWidgetHostView(Lcom/miui/home/launcher/ItemInfo;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 91
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

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f10007d

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f070474

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/miui/home/launcher/widget/WidgetCell;->BITMAP_MAX_SIZE_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 98
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

    .line 65
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a016a

    .line 66
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0167

    .line 67
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    const v0, 0x7f0a0169

    .line 68
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    const v0, 0x7f0a015f

    .line 69
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    const v0, 0x7f0a02e6

    .line 70
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetDetailsView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    const v0, 0x7f0a0164

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLinearLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0165

    .line 72
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemMore:Landroid/widget/ImageView;

    return-void
.end method

.method public setAppWidgetHostViewPreview(Lcom/miui/launcher/views/LauncherWidgetHostView;Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V
    .locals 1

    const/4 v0, 0x2

    .line 155
    invoke-virtual {p1, v0}, Lcom/miui/launcher/views/LauncherWidgetHostView;->setImportantForAccessibility(I)V

    .line 156
    iget-object p2, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Lcom/miui/launcher/views/LauncherWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 157
    invoke-virtual {p1, p3}, Lcom/miui/launcher/views/LauncherWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public setWidgetDetailsCallback(Lcom/miui/home/launcher/widget/WidgetDetailsCallback;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mClickCallBack:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    return-void
.end method
