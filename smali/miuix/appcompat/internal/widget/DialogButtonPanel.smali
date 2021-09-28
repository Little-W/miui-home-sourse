.class public Lmiuix/appcompat/internal/widget/DialogButtonPanel;
.super Landroid/widget/LinearLayout;
.source "DialogButtonPanel.java"


# instance fields
.field private final HORIZONTAL_MARGIN:I

.field private final VERTICAL_MARGIN:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_btn_margin_horizontal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->HORIZONTAL_MARGIN:I

    .line 28
    invoke-virtual {p0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_btn_margin_vertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->VERTICAL_MARGIN:I

    return-void
.end method

.method private clearParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 64
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private handleLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->getChildCount()I

    move-result v0

    .line 33
    invoke-virtual {p0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    .line 34
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-lez v0, :cond_1

    .line 36
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->VERTICAL_MARGIN:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 39
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-lez v0, :cond_1

    .line 41
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->HORIZONTAL_MARGIN:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 74
    move-object v0, p3

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->handleLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clearVisibleChildMargins()V
    .locals 4

    .line 47
    invoke-virtual {p0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 50
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->clearParams(Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->clearParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method
