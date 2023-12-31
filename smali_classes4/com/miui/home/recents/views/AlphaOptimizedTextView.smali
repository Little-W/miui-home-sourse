.class public Lcom/miui/home/recents/views/AlphaOptimizedTextView;
.super Landroid/widget/TextView;
.source "AlphaOptimizedTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/AlphaOptimizedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/AlphaOptimizedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/AlphaOptimizedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private changeMaxLines(I)V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/recents/views/AlphaOptimizedTextView;->getMaxLines()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/AlphaOptimizedTextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 54
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getLineHeight(Landroid/widget/TextView;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/recents/views/AlphaOptimizedTextView;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x2

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 59
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/AlphaOptimizedTextView;->changeMaxLines(I)V

    .line 60
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method
