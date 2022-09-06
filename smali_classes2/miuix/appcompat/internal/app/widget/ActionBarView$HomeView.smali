.class Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 2115
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2119
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 2151
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2153
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getStartOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 2142
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2143
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz p1, :cond_0

    .line 2145
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 2160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2161
    sget v0, Lmiuix/appcompat/R$id;->up:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 2162
    sget v0, Lmiuix/appcompat/R$id;->home:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 2163
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2164
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 2165
    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-interface {v1, v2}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 2166
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    new-array v2, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    sub-int/2addr p5, p3

    .line 2219
    div-int/lit8 p5, p5, 0x2

    .line 2220
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    .line 2222
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    .line 2223
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2224
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 2225
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 2226
    div-int/lit8 v2, v0, 0x2

    sub-int v5, p5, v2

    .line 2227
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    add-int v7, v5, v0

    move-object v2, p0

    move v6, v1

    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 2228
    iget v0, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, p3

    if-eqz p1, :cond_0

    sub-int/2addr p4, v0

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2236
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2237
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    .line 2238
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p4, p2

    .line 2239
    div-int/lit8 p4, p4, 0x2

    .line 2240
    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result p2

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p4, v2

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int v4, v0, p2

    .line 2241
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 p2, p3, 0x2

    sub-int/2addr p5, p2

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2242
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    add-int v6, v4, v1

    add-int v7, v5, p3

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 2176
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2177
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2178
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 2179
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 2180
    :goto_0
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 2181
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v5, v1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2182
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2183
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 2184
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 2185
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    .line 2184
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2188
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 2189
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2190
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_1

    .line 2194
    :cond_2
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, p2

    goto :goto_2

    .line 2205
    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2214
    :goto_2
    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2127
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setUp(Z)V
    .locals 1

    .line 2123
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setUpIndicator(I)V
    .locals 2

    .line 2136
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 2137
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2131
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 2132
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    return-void
.end method
