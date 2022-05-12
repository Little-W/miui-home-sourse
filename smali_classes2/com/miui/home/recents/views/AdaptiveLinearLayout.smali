.class public final Lcom/miui/home/recents/views/AdaptiveLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AdaptiveLinearLayout.kt"


# instance fields
.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 8
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getMaxMeasureSpec(II)I
    .locals 1

    if-lez p2, :cond_1

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-le v0, p2, :cond_1

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 47
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 49
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    return p1
.end method

.method private final requestLayoutAndInvalidate()V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->requestLayout()V

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public final getMaxHeight()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->maxHeight:I

    return v0
.end method

.method public final getMaxWidth()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->maxWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 35
    iget v0, p0, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->maxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->getMaxMeasureSpec(II)I

    move-result p1

    .line 36
    iget v0, p0, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->maxHeight:I

    invoke-direct {p0, p2, v0}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->getMaxMeasureSpec(II)I

    move-result p2

    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setMaxHeight(I)V
    .locals 1

    .line 27
    iget v0, p0, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->maxHeight:I

    if-eq v0, p1, :cond_0

    .line 28
    iput p1, p0, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->maxHeight:I

    .line 29
    invoke-direct {p0}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->requestLayoutAndInvalidate()V

    :cond_0
    return-void
.end method

.method public final setMaxWidth(I)V
    .locals 1

    .line 16
    iget v0, p0, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->maxWidth:I

    if-eq v0, p1, :cond_0

    .line 17
    iput p1, p0, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->maxWidth:I

    .line 18
    invoke-direct {p0}, Lcom/miui/home/recents/views/AdaptiveLinearLayout;->requestLayoutAndInvalidate()V

    :cond_0
    return-void
.end method
