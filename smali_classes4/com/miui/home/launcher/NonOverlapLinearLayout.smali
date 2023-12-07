.class public Lcom/miui/home/launcher/NonOverlapLinearLayout;
.super Landroid/widget/LinearLayout;
.source "NonOverlapLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScreenSizeChanged()V
    .locals 5

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    invoke-virtual {p0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070187

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070623

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 31
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070625

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070624

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 32
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setPadding(IIII)V

    return-void
.end method
