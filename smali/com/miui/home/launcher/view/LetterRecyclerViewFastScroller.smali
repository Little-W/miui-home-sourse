.class public Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;
.super Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;
.source "LetterRecyclerViewFastScroller.java"


# static fields
.field public static final DEFAULT_INDEX_ITEM:[Ljava/lang/String;

.field public static final DEFAULT_INDEX_ITEM_WITHOUT_RECENT:[Ljava/lang/String;


# instance fields
.field private mIndexItemHeight:I

.field private mLetterItems:[Ljava/lang/String;

.field private final mPaint:Landroid/graphics/Paint;

.field private mTextColor:I

.field private final mTextColorSelected:I


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v0, "A"

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "D"

    const-string v4, "E"

    const-string v5, "F"

    const-string v6, "G"

    const-string v7, "H"

    const-string v8, "I"

    const-string v9, "J"

    const-string v10, "K"

    const-string v11, "L"

    const-string v12, "M"

    const-string v13, "N"

    const-string v14, "O"

    const-string v15, "P"

    const-string v16, "Q"

    const-string v17, "R"

    const-string v18, "S"

    const-string v19, "T"

    const-string v20, "U"

    const-string v21, "V"

    const-string v22, "W"

    const-string v23, "X"

    const-string v24, "Y"

    const-string v25, "Z"

    const-string v26, "#"

    .line 39
    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->DEFAULT_INDEX_ITEM:[Ljava/lang/String;

    const-string v1, "A"

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "D"

    const-string v5, "E"

    const-string v6, "F"

    const-string v7, "G"

    const-string v8, "H"

    const-string v9, "I"

    const-string v10, "J"

    const-string v11, "K"

    const-string v12, "L"

    const-string v13, "M"

    const-string v14, "N"

    const-string v15, "O"

    const-string v16, "P"

    const-string v17, "Q"

    const-string v18, "R"

    const-string v19, "S"

    const-string v20, "T"

    const-string v21, "U"

    const-string v22, "V"

    const-string v23, "W"

    const-string v24, "X"

    const-string v25, "Y"

    const-string v26, "Z"

    const-string v27, "\u2026"

    .line 42
    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->DEFAULT_INDEX_ITEM_WITHOUT_RECENT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    sget-object p2, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->DEFAULT_INDEX_ITEM:[Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mLetterItems:[Ljava/lang/String;

    .line 63
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 64
    iget-object p2, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object p2, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07005d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    iget-object p2, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 68
    sget-object p2, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    const/16 p3, 0xff

    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getScrollerTextColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mTextColor:I

    const p2, 0x7f060032

    .line 69
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mTextColorSelected:I

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .line 126
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 127
    invoke-direct {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getSelectedIndex()I

    move-result v1

    const/4 v2, 0x0

    .line 128
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mLetterItems:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mIndexItemHeight:I

    mul-int v5, v2, v4

    add-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v4, v4

    .line 130
    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getPaddingEnd()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    add-float/2addr v4, v5

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getPaddingEnd()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    :goto_1
    if-ne v1, v2, :cond_1

    .line 133
    iget v5, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mTextColorSelected:I

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v5, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mLetterItems:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p1, v5, v4, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 136
    :cond_1
    iget v5, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mTextColor:I

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v5, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mLetterItems:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p1, v5, v4, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getSelectedIndex()I
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->isDraggingThumb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getSelectedIndexOnDragging(F)I

    move-result v0

    return v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getSelectedIndexOnScroll(F)I

    move-result v0

    return v0
.end method

.method private getSelectedIndexOnDragging(F)I
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mIndexItemHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mLetterItems:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 156
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    :cond_1
    return p1
.end method

.method private getSelectedIndexOnScroll(F)I
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getThumbHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 163
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, v0

    .line 165
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/BaseRecyclerView;->getSectionFromFraction(F)Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mLetterItems:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getThumbHeight()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mIndexItemHeight:I

    return v0
.end method

.method public onColorModeChange(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getScrollerTextColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mTextColor:I

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setLetterFastscrollBackground(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v0

    if-gez v0, :cond_0

    const/16 p1, 0x8

    .line 119
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setVisibility(I)V

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->onMeasure(II)V

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mLetterItems:[Ljava/lang/String;

    array-length p2, p2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mIndexItemHeight:I

    return-void
.end method

.method public setLetterFastscrollBackground(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getFastscrollerLetterRadius(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setPopupBackground(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    return-void
.end method

.method public setLetterItems([Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mLetterItems:[Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->invalidate()V

    return-void
.end method

.method public setScrollerStyle(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getScrollerTextColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mTextColor:I

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setLetterFastscrollBackground(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    return-void
.end method

.method protected updateFastScrollSectionNameAndThumbOffset(I)V
    .locals 4

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v0

    int-to-float v0, v0

    float-to-int v1, v0

    .line 80
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 81
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getSelectedIndexOnDragging(F)I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mLetterItems:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->getRecyclerView()Lcom/miui/home/launcher/BaseRecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->mLetterItems:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/BaseRecyclerView;->scrollToPositionAtSection(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->setPopupSectionName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->animatePopupVisibility(Z)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/LetterRecyclerViewFastScroller;->updatePopupY(I)V

    return-void
.end method
