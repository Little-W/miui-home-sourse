.class public Lcom/miui/home/launcher/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# static fields
.field private static mTmpRect:Landroid/graphics/Rect;


# instance fields
.field final BACKGROUND_PADDING:I

.field final DIMMED_HANDLE_ALPHA:F

.field final RESIZE_THRESHOLD:F

.field final SNAP_DURATION:I

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mBottomTouchRegionAdjustment:I

.field private mCellLayout:Lcom/miui/home/launcher/CellLayout;

.field private mDeltaX:I

.field private mDeltaXAddOn:I

.field private mDeltaY:I

.field private mDeltaYAddOn:I

.field mDirectionVector:[I

.field private mDragLayer:Lcom/miui/home/launcher/DragLayer;

.field mLastDirectionVector:[I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field mTmpPt:[F

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mTopTouchRegionAdjustment:I

.field private mTouchTargetWidth:I

.field private mWidgetPaddingBottom:I

.field private mWidgetPaddingLeft:I

.field private mWidgetPaddingRight:I

.field private mWidgetPaddingTop:I

.field private mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DragLayer;)V
    .locals 3

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 57
    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    const/4 v1, 0x2

    .line 59
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    .line 60
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLastDirectionVector:[I

    .line 61
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPt:[F

    const/16 v2, 0x96

    .line 63
    iput v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->SNAP_DURATION:I

    const/16 v2, 0x18

    .line 64
    iput v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    const/4 v2, 0x0

    .line 65
    iput v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    const v2, 0x3f28f5c3    # 0.66f

    .line 66
    iput v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    .line 81
    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/Launcher;

    iput-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 82
    iput-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 83
    iput-object p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    .line 84
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p3

    iget p3, p3, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    .line 85
    iput-object p4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    .line 87
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p3

    .line 88
    iget p4, p3, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-static {p4}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result p4

    iput p4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    .line 89
    iget p3, p3, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {p3}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanY(I)I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    const p3, 0x7f080298

    .line 91
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 92
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 95
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 96
    iget-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const p4, 0x7f08029a

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x2

    const/16 v0, 0x13

    invoke-direct {p3, p4, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 102
    iget-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v0, 0x7f08029b

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x15

    invoke-direct {p3, p4, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 108
    iget-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v0, 0x7f08029c

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x31

    invoke-direct {p3, p4, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 114
    iget-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v0, 0x7f080299

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x51

    invoke-direct {p3, p4, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 117
    iget-object p4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, p4, p3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 p3, 0x0

    .line 119
    invoke-static {p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 121
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    .line 122
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iput p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    .line 123
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iput p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    .line 124
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    .line 126
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    const/4 p2, 0x1

    const/16 p3, 0x8

    if-ne p1, p2, :cond_0

    .line 127
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float/2addr p1, p3

    float-to-double p3, p1

    .line 135
    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p1, p3

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 136
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/2addr p1, v1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 141
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {p1, p3, p2}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    return-void
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 226
    iget-object v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getCellWidth()I

    move-result v1

    iget-object v2, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getCellWidthGap()I

    move-result v2

    add-int/2addr v1, v2

    .line 227
    iget-object v2, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getCellHeight()I

    move-result v2

    iget-object v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getCellHeightGap()I

    move-result v3

    add-int/2addr v2, v3

    .line 229
    iget v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    iget v4, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int/2addr v3, v4

    .line 230
    iget v4, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    iget v5, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int/2addr v4, v5

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 232
    iget v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    int-to-float v1, v4

    mul-float/2addr v1, v5

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 233
    iget v2, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 240
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    .line 241
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v4

    .line 243
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f28f5c3    # 0.66f

    cmpl-float v5, v5, v6

    const/4 v7, 0x0

    if-lez v5, :cond_0

    .line 244
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v7

    .line 246
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 247
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    if-nez p1, :cond_2

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    return-void

    .line 253
    :cond_2
    iget-object v5, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/ItemInfo;

    .line 255
    iget v6, v5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 256
    iget v8, v5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 257
    iget v9, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 258
    iget v10, v5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 265
    iget-boolean v11, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v11, :cond_3

    neg-int v2, v9

    .line 266
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 267
    iget v11, v5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v12, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v11, v12

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v3, v3, -0x1

    .line 269
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 270
    iget v11, v5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v12, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v11, v12

    neg-int v11, v11

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    neg-int v11, v3

    move/from16 v16, v11

    move v11, v2

    move/from16 v2, v16

    goto :goto_2

    .line 273
    :cond_3
    iget-boolean v11, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v11, :cond_4

    add-int v11, v9, v6

    sub-int/2addr v2, v11

    .line 274
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 275
    iget v3, v5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v11, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v3, v11

    neg-int v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v2

    move v11, v7

    goto :goto_2

    :cond_4
    move v2, v7

    move v11, v2

    .line 279
    :goto_2
    iget-boolean v12, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v12, :cond_5

    neg-int v4, v10

    .line 280
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 281
    iget v12, v5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget v13, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v12, v13

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v1, v1, -0x1

    .line 283
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 284
    iget v12, v5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget v13, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v12, v13

    neg-int v12, v12

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v12, v1

    move/from16 v16, v12

    move v12, v1

    move/from16 v1, v16

    goto :goto_3

    .line 286
    :cond_5
    iget-boolean v12, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v12, :cond_6

    add-int v12, v10, v8

    sub-int/2addr v4, v12

    .line 287
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 288
    iget v4, v5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget v12, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v4, v12

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v12, v1

    move v4, v7

    goto :goto_3

    :cond_6
    move v12, v1

    move v1, v7

    move v4, v1

    .line 292
    :goto_3
    iget-object v13, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    aput v7, v13, v7

    const/4 v14, 0x1

    .line 293
    aput v7, v13, v14

    .line 295
    iget-boolean v13, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    const/4 v15, -0x1

    if-nez v13, :cond_7

    iget-boolean v13, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v13, :cond_9

    :cond_7
    add-int/2addr v6, v3

    add-int/2addr v9, v11

    if-eqz v2, :cond_9

    .line 299
    iget-object v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v11, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v11, :cond_8

    move v11, v15

    goto :goto_4

    :cond_8
    move v11, v14

    :goto_4
    aput v11, v3, v7

    .line 303
    :cond_9
    iget-boolean v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v3, :cond_a

    iget-boolean v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v3, :cond_c

    :cond_a
    add-int/2addr v8, v12

    add-int/2addr v10, v4

    if-eqz v1, :cond_c

    .line 307
    iget-object v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v4, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    move v15, v14

    :goto_5
    aput v15, v3, v14

    :cond_c
    if-nez p1, :cond_d

    if-nez v1, :cond_d

    if-nez v2, :cond_d

    return-void

    :cond_d
    if-eqz p1, :cond_e

    .line 316
    iget-object v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-object v4, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLastDirectionVector:[I

    aget v11, v4, v7

    aput v11, v3, v7

    .line 317
    aget v4, v4, v14

    aput v4, v3, v14

    goto :goto_6

    .line 319
    :cond_e
    iget-object v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLastDirectionVector:[I

    iget-object v4, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    aget v11, v4, v7

    aput v11, v3, v7

    .line 320
    aget v4, v4, v14

    aput v4, v3, v14

    :goto_6
    if-ltz v9, :cond_f

    if-ltz v10, :cond_f

    .line 323
    iget-object v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 324
    invoke-virtual {v3, v9, v10, v6, v8}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v3

    if-nez v3, :cond_f

    .line 325
    iput v9, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 326
    iput v10, v5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 327
    iput v6, v5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 328
    iput v8, v5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 329
    iget v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    .line 330
    iget v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    if-nez p1, :cond_f

    .line 332
    invoke-virtual {v0, v6, v8}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->updateWidgetSizeRanges(II)V

    .line 335
    :cond_f
    iget-object v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->requestLayout()V

    return-void
.end method

.method private visualizeResizeForDelta(IIZ)V
    .locals 1

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 202
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    .line 204
    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz p2, :cond_0

    .line 205
    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineX:I

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    .line 206
    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    goto :goto_0

    .line 207
    :cond_0
    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz p2, :cond_1

    .line 208
    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    .line 211
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p2, :cond_2

    .line 212
    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineY:I

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    .line 213
    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    goto :goto_1

    .line 214
    :cond_2
    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p2, :cond_3

    .line 215
    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    .line 218
    :cond_3
    :goto_1
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 6

    .line 145
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 146
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 148
    :goto_1
    iget v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v4, :cond_2

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 149
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_3

    if-eqz v0, :cond_3

    move p1, v1

    goto :goto_3

    :cond_3
    move p1, v2

    :goto_3
    iput-boolean p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 150
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    add-int/2addr p1, v0

    if-ge p2, p1, :cond_4

    if-eqz v3, :cond_4

    move p1, v1

    goto :goto_4

    :cond_4
    move p1, v2

    :goto_4
    iput-boolean p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 151
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    add-int/2addr p1, v0

    if-le p2, p1, :cond_5

    if-eqz v3, :cond_5

    move p1, v1

    goto :goto_5

    :cond_5
    move p1, v2

    :goto_5
    iput-boolean p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 154
    iget-boolean p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    .line 157
    :cond_7
    :goto_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineX:I

    .line 160
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getTop()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineY:I

    if-eqz v1, :cond_c

    .line 163
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    move p2, v0

    goto :goto_7

    :cond_8
    move p2, v2

    :goto_7
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 164
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz p2, :cond_9

    move p2, v0

    goto :goto_8

    :cond_9
    move p2, v2

    :goto_8
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 165
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p2, :cond_a

    move p2, v0

    goto :goto_9

    :cond_a
    move p2, v2

    :goto_9
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 166
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p2, :cond_b

    goto :goto_a

    :cond_b
    move v0, v2

    :goto_a
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_c
    return v1
.end method

.method public commitResize()V
    .locals 7

    const/4 v0, 0x1

    .line 349
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 350
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 352
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v6, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherModel;->resizeItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;IIII)V

    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method

.method public onTouchUp()V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getCellWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getCellWidthGap()I

    move-result v1

    add-int/2addr v0, v1

    .line 360
    iget-object v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getCellHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getCellHeightGap()I

    move-result v2

    add-int/2addr v1, v2

    .line 362
    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaXAddOn:I

    .line 363
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaYAddOn:I

    const/4 v0, 0x0

    .line 364
    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 365
    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 367
    new-instance v0, Lcom/miui/home/launcher/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame$1;-><init>(Lcom/miui/home/launcher/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public snapToWidget(Z)V
    .locals 12

    .line 376
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    .line 377
    iget-object v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    sub-int/2addr v1, v2

    .line 379
    iget-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    iget v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    sub-int/2addr v2, v4

    .line 382
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPt:[F

    iget-object v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 383
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPt:[F

    iget-object v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getTop()I

    move-result v5

    int-to-float v5, v5

    const/4 v7, 0x1

    aput v5, v4, v7

    .line 384
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    iget-object v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v8, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPt:[F

    invoke-static {v4, v5, v8, v7, v6}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 386
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPt:[F

    aget v5, v4, v6

    iget v8, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    int-to-float v9, v8

    sub-float/2addr v5, v9

    iget v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    float-to-int v5, v5

    .line 387
    aget v4, v4, v7

    int-to-float v8, v8

    sub-float/2addr v4, v8

    iget v8, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    int-to-float v8, v8

    add-float/2addr v4, v8

    float-to-int v4, v4

    if-gez v4, :cond_0

    neg-int v8, v4

    .line 394
    iput v8, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_0

    .line 396
    :cond_0
    iput v6, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    :goto_0
    add-int v8, v4, v2

    .line 398
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v9}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 400
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v9}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    neg-int v8, v8

    iput v8, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_1

    .line 402
    :cond_1
    iput v6, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    .line 406
    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    .line 407
    iput v2, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    .line 408
    iput v5, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    .line 409
    iput v4, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    .line 410
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 411
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 412
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 413
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 414
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->requestLayout()V

    goto/16 :goto_3

    :cond_2
    const-string p1, "width"

    .line 416
    new-array v9, v3, [I

    iget v10, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    aput v10, v9, v6

    aput v1, v9, v7

    invoke-static {p1, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const-string v1, "height"

    .line 417
    new-array v9, v3, [I

    iget v10, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    aput v10, v9, v6

    aput v2, v9, v7

    invoke-static {v1, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v2, "x"

    .line 419
    new-array v9, v3, [I

    iget v10, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    aput v10, v9, v6

    aput v5, v9, v7

    invoke-static {v2, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v5, "y"

    .line 420
    new-array v9, v3, [I

    iget v10, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    aput v10, v9, v6

    aput v4, v9, v7

    invoke-static {v5, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x4

    .line 421
    new-array v9, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v9, v6

    aput-object v1, v9, v7

    aput-object v2, v9, v3

    const/4 p1, 0x3

    aput-object v4, v9, p1

    .line 422
    invoke-static {v0, p0, v9}, Lcom/miui/home/launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {v1, v2, v4}, Lcom/miui/home/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 424
    iget-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v9, v7, [F

    aput v8, v9, v6

    invoke-static {v2, v4, v9}, Lcom/miui/home/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 425
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const-string v9, "alpha"

    new-array v10, v7, [F

    aput v8, v10, v6

    invoke-static {v4, v9, v10}, Lcom/miui/home/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 426
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const-string v10, "alpha"

    new-array v11, v7, [F

    aput v8, v11, v6

    invoke-static {v9, v10, v11}, Lcom/miui/home/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 427
    new-instance v9, Lcom/miui/home/launcher/AppWidgetResizeFrame$2;

    invoke-direct {v9, p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame$2;-><init>(Lcom/miui/home/launcher/AppWidgetResizeFrame;)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 432
    invoke-static {}, Lcom/miui/home/launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v9

    .line 433
    iget v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    if-ne v10, v3, :cond_3

    .line 434
    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v0, p1, v6

    aput-object v4, p1, v7

    aput-object v8, p1, v3

    invoke-virtual {v9, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_3
    if-ne v10, v7, :cond_4

    .line 436
    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v0, p1, v6

    aput-object v1, p1, v7

    aput-object v2, p1, v3

    invoke-virtual {v9, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_4
    const/4 v10, 0x5

    .line 438
    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v0, v10, v6

    aput-object v1, v10, v7

    aput-object v2, v10, v3

    aput-object v4, v10, p1

    aput-object v8, v10, v5

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    const-wide/16 v0, 0x96

    .line 441
    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 442
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    :goto_3
    return-void
.end method

.method public updateDeltas(II)V
    .locals 3

    .line 176
    iget-boolean v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_0

    .line 177
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 178
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_0

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 181
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int p1, p1

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 184
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p1, :cond_2

    .line 185
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineY:I

    neg-int p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 186
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_1

    .line 187
    :cond_2
    iget-boolean p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p1, :cond_3

    .line 188
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineY:I

    iget v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 189
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int p1, p1

    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    :cond_3
    :goto_1
    return-void
.end method

.method updateWidgetSizeRanges(II)V
    .locals 8

    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    sget-object v1, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/CellLayout;->getWidgetMeasureSpec(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 340
    iget-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    sget-object p1, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget-object p1, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sget-object p1, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sget-object p1, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    return-void
.end method

.method public visualizeResizeForDelta(II)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->visualizeResizeForDelta(IIZ)V

    return-void
.end method
