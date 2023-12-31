.class public Lcom/miui/home/launcher/widget/WidgetCell;
.super Landroid/widget/RelativeLayout;
.source "WidgetCell.java"


# static fields
.field private static final BITMAP_MAX_SIZE_SCALE:F

.field private static final mTitleMaxLineInJap:Ljava/lang/Integer;


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

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    :goto_0
    sput v0, Lcom/miui/home/launcher/widget/WidgetCell;->BITMAP_MAX_SIZE_SCALE:F

    const/4 v0, 0x5

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/widget/WidgetCell;->mTitleMaxLineInJap:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    return-void
.end method

.method private applyPreviewOnAppWidgetHostView(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 146
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_1

    .line 147
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 148
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v0, Lcom/miui/launcher/views/LauncherWidgetHostView;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/launcher/views/LauncherWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLauncherWidgetHostView:Lcom/miui/launcher/views/LauncherWidgetHostView;

    .line 152
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLauncherWidgetHostView:Lcom/miui/launcher/views/LauncherWidgetHostView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/widget/WidgetCell;->setAppWidgetHostViewPreview(Lcom/miui/launcher/views/LauncherWidgetHostView;Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V

    :cond_1
    return-void
.end method

.method private getFillHeightOnJapDevice()I
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0706e7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$applyFromCellItem$0(Lcom/miui/home/launcher/WidgetPreviewLoader;Lcom/miui/home/launcher/ItemInfo;IILjava/lang/Void;)Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;
    .locals 0

    .line 107
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/WidgetPreviewLoader;->queryPreview(Lcom/miui/home/launcher/ItemInfo;II)Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private setImageDrawable(IILandroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p5, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0706e5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eq p2, v0, :cond_2

    .line 175
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 176
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706e6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p2, p1

    .line 177
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    .line 178
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 179
    invoke-virtual {p3, v0, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    sub-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    div-float p1, p0, v0

    div-float/2addr p0, p2

    .line 180
    invoke-virtual {p3, p1, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :cond_3
    int-to-float p0, p0

    .line 183
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 184
    invoke-virtual {p3, p0, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 186
    :goto_0
    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 187
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setItemLayout()V
    .locals 3

    .line 191
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-nez v0, :cond_0

    .line 192
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 196
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->getFillHeightOnJapDevice()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->setTitleLayout()V

    .line 199
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->setSpanLayout()V

    return-void
.end method

.method private setSpanLayout()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 215
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->getFillHeightOnJapDevice()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v1, 0x10

    .line 216
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 217
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setTitleLayout()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 204
    sget-object v1, Lcom/miui/home/launcher/widget/WidgetCell;->mTitleMaxLineInJap:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 207
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->getFillHeightOnJapDevice()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 208
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method applyFromCellItem(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader;)V
    .locals 6

    .line 96
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/WidgetCell;->applyPreviewOnAppWidgetHostView(Lcom/miui/home/launcher/ItemInfo;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%d x %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    const v3, 0x7f110080

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0706e5

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/miui/home/launcher/widget/WidgetCell;->BITMAP_MAX_SIZE_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 105
    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;

    invoke-direct {v1, p4, p1, v0, v0}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;-><init>(Lcom/miui/home/launcher/WidgetPreviewLoader;Lcom/miui/home/launcher/ItemInfo;II)V

    new-instance p4, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$5DsBI2EZdffurXxSuRe1BMpWSPE;

    invoke-direct {p4, p0, p2, p1, p3}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$5DsBI2EZdffurXxSuRe1BMpWSPE;-><init>(Lcom/miui/home/launcher/widget/WidgetCell;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;)V

    const/4 p0, 0x0

    invoke-static {v1, p4, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$applyFromCellItem$1$WidgetCell(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V
    .locals 7

    .line 113
    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    if-nez p4, :cond_0

    .line 115
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/widget/WidgetCell;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemMore:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    iget-object v1, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    iget-boolean v0, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsShowDetails:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemMore:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    const v1, 0x7f0802f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/miui/home/launcher/widget/WidgetCell$1;

    invoke-direct {v0, p0, p4}, Lcom/miui/home/launcher/widget/WidgetCell$1;-><init>(Lcom/miui/home/launcher/widget/WidgetCell;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemMore:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    iget-object v0, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
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

.method protected onFinishInflate()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01db

    .line 72
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    const v0, 0x7f0a01d8

    .line 73
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    const v0, 0x7f0a01da

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    const v0, 0x7f0a01d0

    .line 75
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    const v0, 0x7f0a03e8

    .line 76
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetDetailsView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    const v0, 0x7f0a01d5

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLinearLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01d6

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemMore:Landroid/widget/ImageView;

    .line 79
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->setItemLayout()V

    return-void
.end method

.method public setAppWidgetHostViewPreview(Lcom/miui/launcher/views/LauncherWidgetHostView;Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V
    .locals 0

    const/4 p0, 0x2

    .line 162
    invoke-virtual {p1, p0}, Lcom/miui/launcher/views/LauncherWidgetHostView;->setImportantForAccessibility(I)V

    .line 163
    iget-object p0, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p0}, Lcom/miui/launcher/views/LauncherWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 164
    invoke-virtual {p1, p3}, Lcom/miui/launcher/views/LauncherWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public setWidgetDetailsCallback(Lcom/miui/home/launcher/widget/WidgetDetailsCallback;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mClickCallBack:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    return-void
.end method
