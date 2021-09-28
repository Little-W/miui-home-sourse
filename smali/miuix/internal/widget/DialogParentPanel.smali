.class public Lmiuix/internal/widget/DialogParentPanel;
.super Landroid/widget/LinearLayout;
.source "DialogParentPanel.java"


# instance fields
.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMaxHeightMajor:Landroid/util/TypedValue;

.field private mMaxHeightMinor:Landroid/util/TypedValue;

.field private mMaxWidthMajor:Landroid/util/TypedValue;

.field private mMaxWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 38
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 39
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 40
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 42
    :cond_0
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 43
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 44
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 46
    :cond_1
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 47
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 48
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 50
    :cond_2
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 51
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 52
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 54
    :cond_3
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 55
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 56
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMinor:I

    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 58
    :cond_4
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 59
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 60
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMajor:I

    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 62
    :cond_5
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 63
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 64
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMajor:I

    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 66
    :cond_6
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 67
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 68
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMinor:I

    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 70
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getHeightMeasureSpec(I)I
    .locals 7

    .line 86
    iget-object v3, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/internal/widget/DialogParentPanel;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method private getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .locals 4

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    .line 96
    invoke-virtual {p0}, Lmiuix/internal/widget/DialogParentPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 97
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p4

    .line 99
    :goto_1
    invoke-direct {p0, v0, p3, p2}, Lmiuix/internal/widget/DialogParentPanel;->resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    .line 102
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object p5, p6

    .line 105
    :goto_2
    invoke-direct {p0, v0, p5, p2}, Lmiuix/internal/widget/DialogParentPanel;->resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result p2

    if-lez p2, :cond_4

    .line 107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 108
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_4
    :goto_3
    return p1
.end method

.method private getWidthMeasureSpec(I)I
    .locals 7

    .line 81
    iget-object v3, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lmiuix/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/internal/widget/DialogParentPanel;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method private resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I
    .locals 2

    if-eqz p2, :cond_2

    .line 118
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 119
    invoke-virtual {p2, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    goto :goto_1

    .line 120
    :cond_0
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_1

    .line 121
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_1
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    int-to-float p1, p1

    .line 122
    invoke-virtual {p2, p1, p1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    float-to-int p1, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lmiuix/internal/widget/DialogParentPanel;->getWidthMeasureSpec(I)I

    move-result p1

    .line 76
    invoke-direct {p0, p2}, Lmiuix/internal/widget/DialogParentPanel;->getHeightMeasureSpec(I)I

    move-result p2

    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
