.class public Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;
.super Lmiuix/visual/check/VisualCheckGroup;
.source "MonospacedChildViewVisualCheckGroup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lmiuix/visual/check/VisualCheckGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .line 20
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->getChildCount()I

    move-result v0

    .line 21
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 22
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 23
    div-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    if-ge v3, v0, :cond_0

    .line 25
    invoke-virtual {p0, v3}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 26
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v5, v4, p2}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 30
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->setMeasuredDimension(II)V

    return-void
.end method
