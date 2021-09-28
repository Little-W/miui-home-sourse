.class public Lcom/miui/home/launcher/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;
    }
.end annotation


# static fields
.field public static final BORDER_SPACING_SIZE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/util/MainThreadInitializedObject<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final CELL_SIZE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/util/MainThreadInitializedObject<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

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

.field private mMaxHSpan:I

.field private mMaxVSpan:I

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private final mTempRange1:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

.field private final mTempRange2:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

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
    .locals 2

    .line 29
    new-instance v0, Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$AppWidgetResizeFrame$pngf6Eho4alnPD5gpM0msQK2VKY;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$AppWidgetResizeFrame$pngf6Eho4alnPD5gpM0msQK2VKY;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;-><init>(Lcom/miui/home/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->CELL_SIZE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    .line 37
    new-instance v0, Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$AppWidgetResizeFrame$VfLo2rk__Rp8ccAEMspwrwpvMTs;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$AppWidgetResizeFrame$VfLo2rk__Rp8ccAEMspwrwpvMTs;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;-><init>(Lcom/miui/home/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->BORDER_SPACING_SIZE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DragLayer;)V
    .locals 4

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 86
    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    const/4 v1, 0x2

    .line 88
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    .line 89
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLastDirectionVector:[I

    .line 90
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPt:[F

    .line 92
    new-instance v2, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;-><init>(Lcom/miui/home/launcher/AppWidgetResizeFrame$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTempRange1:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    .line 93
    new-instance v2, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;-><init>(Lcom/miui/home/launcher/AppWidgetResizeFrame$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTempRange2:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    const/16 v2, 0x96

    .line 95
    iput v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->SNAP_DURATION:I

    const/16 v2, 0x18

    .line 96
    iput v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    const/4 v2, 0x0

    .line 97
    iput v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    const v2, 0x3f28f5c3    # 0.66f

    .line 98
    iput v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    .line 113
    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/Launcher;

    iput-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 114
    iput-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 115
    iput-object p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    .line 116
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p3

    iget p3, p3, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    .line 117
    iput-object p4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    .line 120
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object p3

    .line 121
    iget p4, p3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput p4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    .line 122
    iget p4, p3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput p4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    .line 123
    iget p4, p3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->maxSpanX:I

    iput p4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMaxHSpan:I

    .line 124
    iget p3, p3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->maxSpanY:I

    iput p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMaxVSpan:I

    const p3, 0x7f08050b

    .line 126
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 127
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 130
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 131
    iget-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const p4, 0x7f08050d

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x2

    const/16 v0, 0x13

    invoke-direct {p3, p4, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 137
    iget-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v0, 0x7f08050e

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x15

    invoke-direct {p3, p4, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 143
    iget-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v0, 0x7f08050f

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x31

    invoke-direct {p3, p4, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 149
    iget-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v0, 0x7f08050c

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x51

    invoke-direct {p3, p4, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 152
    iget-object p4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, p4, p3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 154
    invoke-static {p1, p2, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 156
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    .line 157
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iput p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    .line 158
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iput p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    .line 159
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    .line 161
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    const/4 p2, 0x1

    const/16 p3, 0x8

    if-ne p1, p2, :cond_0

    .line 162
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
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

    .line 170
    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p1, p3

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 171
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/2addr p1, v1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 176
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object p3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {p1, p3, p2}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    return-void
.end method

.method public static getMinMaxSizes(Ljava/util/List;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 379
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 381
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 384
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    .line 385
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    float-to-int v3, v3

    .line 386
    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    float-to-int v0, v0

    .line 385
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    .line 387
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 388
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SizeF;

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SizeF;

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->union(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private static getWidgetSize(Landroid/content/Context;Landroid/graphics/Point;III)Landroid/util/SizeF;
    .locals 3

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    add-int/lit8 v0, p2, -0x1

    mul-int/2addr v0, p4

    int-to-float v0, v0

    add-int/lit8 v1, p3, -0x1

    mul-int/2addr v1, p4

    int-to-float p4, v1

    .line 349
    new-instance v1, Landroid/util/SizeF;

    iget v2, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr p2, v2

    int-to-float p2, p2

    add-float/2addr p2, v0

    div-float/2addr p2, p0

    iget p1, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p1, p4

    div-float/2addr p1, p0

    invoke-direct {v1, p2, p1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v1
.end method

.method public static getWidgetSizes(Landroid/content/Context;II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/ArrayList<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation

    .line 355
    sget-object v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->CELL_SIZE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Point;

    .line 356
    sget-object v1, Lcom/miui/home/launcher/AppWidgetResizeFrame;->BORDER_SPACING_SIZE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x0

    .line 358
    aget-object v3, v0, v2

    aget v2, v1, v2

    invoke-static {p0, v3, p1, p2, v2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getWidgetSize(Landroid/content/Context;Landroid/graphics/Point;III)Landroid/util/SizeF;

    move-result-object v2

    const/4 v3, 0x1

    .line 359
    aget-object v0, v0, v3

    aget v1, v1, v3

    invoke-static {p0, v0, p1, p2, v1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getWidgetSize(Landroid/content/Context;Landroid/graphics/Point;III)Landroid/util/SizeF;

    move-result-object p0

    .line 361
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method static synthetic lambda$static$0(Landroid/content/Context;)[Landroid/graphics/Point;
    .locals 3

    .line 31
    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/DeviceConfig;

    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [Landroid/graphics/Point;

    iget-object v1, p0, Lcom/miui/home/launcher/DeviceConfig;->landscapeProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DeviceProfile;->getWidgetCellSize()Landroid/graphics/Point;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitProfile:Lcom/miui/home/launcher/DeviceProfile;

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeviceProfile;->getWidgetCellSize()Landroid/graphics/Point;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method static synthetic lambda$static$1(Landroid/content/Context;)[I
    .locals 0

    const/4 p0, 0x2

    .line 43
    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 261
    iget-object v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getCellWidth()I

    move-result v1

    iget-object v2, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getCellWidthGap()I

    move-result v2

    add-int/2addr v1, v2

    .line 262
    iget-object v2, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getCellHeight()I

    move-result v2

    iget-object v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getCellHeightGap()I

    move-result v3

    add-int/2addr v2, v3

    .line 264
    iget v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    iget v4, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int/2addr v3, v4

    .line 265
    iget v4, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    iget v5, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int/2addr v4, v5

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 267
    iget v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    int-to-float v1, v4

    mul-float/2addr v1, v5

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 268
    iget v2, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 273
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v10

    .line 274
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v17

    .line 276
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3f28f5c3    # 0.66f

    cmpl-float v2, v2, v4

    const/16 v19, 0x0

    if-lez v2, :cond_0

    .line 277
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v7, v2

    goto :goto_0

    :cond_0
    move/from16 v7, v19

    .line 279
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 280
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v14, v1

    goto :goto_1

    :cond_1
    move/from16 v14, v19

    :goto_1
    if-nez p1, :cond_2

    if-nez v7, :cond_2

    if-nez v14, :cond_2

    return-void

    .line 286
    :cond_2
    iget-object v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 288
    iget v2, v1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 289
    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 290
    iget v4, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 291
    iget v12, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 293
    iget-object v5, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    aput v19, v5, v19

    const/16 v20, 0x1

    .line 294
    aput v19, v5, v20

    .line 298
    iget-object v5, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTempRange1:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    add-int/2addr v2, v4

    invoke-virtual {v5, v4, v2}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 299
    iget-object v4, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTempRange1:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    iget-boolean v5, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    iget-boolean v6, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget v8, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    iget v9, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMaxHSpan:I

    iget-object v11, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTempRange2:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    invoke-virtual/range {v4 .. v11}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->applyDeltaAndBound(ZZIIIILcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;)I

    move-result v2

    .line 301
    iget-object v4, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTempRange2:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    iget v4, v4, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    .line 302
    iget-object v5, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTempRange2:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v5}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->size()I

    move-result v5

    const/4 v6, -0x1

    if-eqz v2, :cond_4

    .line 304
    iget-object v7, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v8, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move/from16 v8, v20

    :goto_2
    aput v8, v7, v19

    .line 307
    :cond_4
    iget-object v7, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTempRange1:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    add-int/2addr v3, v12

    invoke-virtual {v7, v12, v3}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 308
    iget-object v11, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTempRange1:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    iget-boolean v12, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    iget-boolean v13, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget v15, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    iget v3, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mMaxVSpan:I

    iget-object v7, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTempRange2:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    move/from16 v16, v3

    move-object/from16 v18, v7

    invoke-virtual/range {v11 .. v18}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->applyDeltaAndBound(ZZIIIILcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;)I

    move-result v3

    .line 310
    iget-object v7, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTempRange2:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    iget v7, v7, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->start:I

    .line 311
    iget-object v8, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTempRange2:Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v8}, Lcom/miui/home/launcher/AppWidgetResizeFrame$IntRange;->size()I

    move-result v8

    if-eqz v3, :cond_6

    .line 313
    iget-object v9, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v10, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v6, v20

    :goto_3
    aput v6, v9, v20

    :cond_6
    if-nez p1, :cond_7

    if-nez v3, :cond_7

    if-nez v2, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_8

    .line 321
    iget-object v6, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-object v9, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLastDirectionVector:[I

    aget v10, v9, v19

    aput v10, v6, v19

    .line 322
    aget v9, v9, v20

    aput v9, v6, v20

    goto :goto_4

    .line 324
    :cond_8
    iget-object v6, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLastDirectionVector:[I

    iget-object v9, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDirectionVector:[I

    aget v10, v9, v19

    aput v10, v6, v19

    .line 325
    aget v9, v9, v20

    aput v9, v6, v20

    :goto_4
    if-ltz v4, :cond_9

    if-ltz v7, :cond_9

    .line 328
    iget-object v6, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 329
    invoke-virtual {v6, v4, v7, v5, v8}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v6

    if-nez v6, :cond_9

    .line 330
    iput v4, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 331
    iput v7, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 332
    iput v5, v1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 333
    iput v8, v1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 334
    iget v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    .line 335
    iget v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    if-nez p1, :cond_9

    .line 337
    invoke-virtual {v0, v5, v8}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->updateWidgetSizeRanges(II)V

    .line 340
    :cond_9
    iget-object v1, v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->requestLayout()V

    return-void
.end method

.method private visualizeResizeForDelta(IIZ)V
    .locals 1

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 237
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    .line 239
    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz p2, :cond_0

    .line 240
    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineX:I

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    .line 241
    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    goto :goto_0

    .line 242
    :cond_0
    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz p2, :cond_1

    .line 243
    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    .line 246
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p2, :cond_2

    .line 247
    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineY:I

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    .line 248
    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    goto :goto_1

    .line 249
    :cond_2
    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p2, :cond_3

    .line 250
    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    .line 253
    :cond_3
    :goto_1
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 6

    .line 180
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 181
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 183
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

    .line 184
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

    .line 185
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

    .line 186
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

    .line 189
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

    .line 192
    :cond_7
    :goto_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 193
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineX:I

    .line 195
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getTop()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineY:I

    if-eqz v1, :cond_c

    .line 198
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

    .line 199
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz p2, :cond_9

    move p2, v0

    goto :goto_8

    :cond_9
    move p2, v2

    :goto_8
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 200
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p2, :cond_a

    move p2, v0

    goto :goto_9

    :cond_a
    move p2, v2

    :goto_9
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 201
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

    .line 405
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 406
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 407
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 408
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

    .line 411
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method

.method public onTouchUp()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getCellWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getCellWidthGap()I

    move-result v1

    add-int/2addr v0, v1

    .line 416
    iget-object v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getCellHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getCellHeightGap()I

    move-result v2

    add-int/2addr v1, v2

    .line 418
    iget v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaXAddOn:I

    .line 419
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaYAddOn:I

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 421
    iput v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 423
    new-instance v0, Lcom/miui/home/launcher/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame$1;-><init>(Lcom/miui/home/launcher/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public snapToWidget(Z)V
    .locals 12

    .line 432
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    .line 433
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

    .line 435
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

    .line 438
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPt:[F

    iget-object v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 439
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPt:[F

    iget-object v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getTop()I

    move-result v5

    int-to-float v5, v5

    const/4 v7, 0x1

    aput v5, v4, v7

    .line 440
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    iget-object v5, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v8, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPt:[F

    invoke-static {v4, v5, v8, v7, v6}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 442
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpPt:[F

    aget v5, v4, v6

    iget v8, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    int-to-float v9, v8

    sub-float/2addr v5, v9

    iget v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    float-to-int v5, v5

    .line 443
    aget v4, v4, v7

    int-to-float v8, v8

    sub-float/2addr v4, v8

    iget v8, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    int-to-float v8, v8

    add-float/2addr v4, v8

    float-to-int v4, v4

    if-gez v4, :cond_0

    neg-int v8, v4

    .line 450
    iput v8, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_0

    .line 452
    :cond_0
    iput v6, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    :goto_0
    add-int v8, v4, v2

    .line 454
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v9}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 456
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v9}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    neg-int v8, v8

    iput v8, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_1

    .line 458
    :cond_1
    iput v6, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    .line 462
    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    .line 463
    iput v2, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    .line 464
    iput v5, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    .line 465
    iput v4, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    .line 466
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 467
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 468
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 469
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 470
    invoke-virtual {p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->requestLayout()V

    goto/16 :goto_3

    :cond_2
    const-string p1, "width"

    .line 472
    new-array v9, v3, [I

    iget v10, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    aput v10, v9, v6

    aput v1, v9, v7

    invoke-static {p1, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const-string v1, "height"

    .line 473
    new-array v9, v3, [I

    iget v10, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    aput v10, v9, v6

    aput v2, v9, v7

    invoke-static {v1, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v2, "x"

    .line 475
    new-array v9, v3, [I

    iget v10, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    aput v10, v9, v6

    aput v5, v9, v7

    invoke-static {v2, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v5, "y"

    .line 476
    new-array v9, v3, [I

    iget v10, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    aput v10, v9, v6

    aput v4, v9, v7

    invoke-static {v5, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x4

    .line 477
    new-array v9, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v9, v6

    aput-object v1, v9, v7

    aput-object v2, v9, v3

    const/4 p1, 0x3

    aput-object v4, v9, p1

    .line 478
    invoke-static {v0, p0, v9}, Lcom/miui/home/launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {v1, v2, v4}, Lcom/miui/home/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 480
    iget-object v2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v9, v7, [F

    aput v8, v9, v6

    invoke-static {v2, v4, v9}, Lcom/miui/home/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 481
    iget-object v4, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const-string v9, "alpha"

    new-array v10, v7, [F

    aput v8, v10, v6

    invoke-static {v4, v9, v10}, Lcom/miui/home/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 482
    iget-object v9, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const-string v10, "alpha"

    new-array v11, v7, [F

    aput v8, v11, v6

    invoke-static {v9, v10, v11}, Lcom/miui/home/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 483
    new-instance v9, Lcom/miui/home/launcher/AppWidgetResizeFrame$2;

    invoke-direct {v9, p0}, Lcom/miui/home/launcher/AppWidgetResizeFrame$2;-><init>(Lcom/miui/home/launcher/AppWidgetResizeFrame;)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 488
    invoke-static {}, Lcom/miui/home/launcher/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v9

    .line 489
    iget v10, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mResizeMode:I

    if-ne v10, v3, :cond_3

    .line 490
    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v0, p1, v6

    aput-object v4, p1, v7

    aput-object v8, p1, v3

    invoke-virtual {v9, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_3
    if-ne v10, v7, :cond_4

    .line 492
    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v0, p1, v6

    aput-object v1, p1, v7

    aput-object v2, p1, v3

    invoke-virtual {v9, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_4
    const/4 v10, 0x5

    .line 494
    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v0, v10, v6

    aput-object v1, v10, v7

    aput-object v2, v10, v3

    aput-object v4, v10, p1

    aput-object v8, v10, v5

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    const-wide/16 v0, 0x96

    .line 497
    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 498
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    :goto_3
    return-void
.end method

.method public updateDeltas(II)V
    .locals 3

    .line 211
    iget-boolean v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_0

    .line 212
    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 213
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_0

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_1

    .line 215
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

    .line 216
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int p1, p1

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 219
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz p1, :cond_2

    .line 220
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineY:I

    neg-int p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 221
    iget p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_1

    .line 222
    :cond_2
    iget-boolean p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz p1, :cond_3

    .line 223
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

    .line 224
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

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    sget-object v1, Lcom/miui/home/launcher/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/CellLayout;->getWidgetMeasureSpec(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 396
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

    .line 229
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->visualizeResizeForDelta(IIZ)V

    return-void
.end method
