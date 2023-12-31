.class public Lmiuix/androidbasewidget/widget/CheckedTextView;
.super Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;
.source "CheckedTextView.java"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkMarginToText:I

.field private mDrawCheckMark:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 34
    sput-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103c8

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    new-array p1, p1, [Landroid/view/View;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 59
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 60
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/androidbasewidget/R$dimen;->miuix_appcompat_checked_text_view_addition_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkMarginToText:I

    return-void
.end method

.method private drawCheckMark(Landroid/graphics/Canvas;)V
    .locals 9

    .line 140
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 142
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 143
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getScrollX()I

    move-result v3

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getScrollX()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 146
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingTop()I

    move-result v3

    .line 147
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingTop()I

    move-result v4

    .line 148
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingBottom()I

    move-result v5

    .line 149
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 150
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v7, :cond_1

    .line 151
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingBottom()I

    move-result p0

    sub-int v6, v4, p0

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getGravity()I

    move-result v7

    and-int/lit8 v7, v7, 0x70

    const/16 v8, 0x10

    if-eq v7, v8, :cond_3

    const/16 v4, 0x50

    if-eq v7, v4, :cond_2

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getHeight()I

    move-result p0

    sub-int v3, p0, v6

    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getHeight()I

    move-result p0

    invoke-static {p0, v6, v4, v5}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkPositionY(IIII)I

    move-result v3

    :goto_1
    add-int/2addr v1, v2

    add-int/2addr v6, v3

    .line 162
    invoke-virtual {v0, v2, v3, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method public static getCheckMarkPositionY(IIII)I
    .locals 0

    sub-int/2addr p0, p2

    sub-int/2addr p0, p3

    sub-int/2addr p0, p1

    .line 168
    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p2

    return p0
.end method

.method private getCheckWidth()I
    .locals 0

    .line 127
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 182
    invoke-super {p0}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->drawableStateChanged()V

    .line 183
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 186
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 187
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 65
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    .line 198
    invoke-super {p0}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->jumpDrawablesToCurrentState()V

    .line 199
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/androidbasewidget/R$dimen;->miuix_appcompat_checked_text_view_addition_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkMarginToText:I

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 173
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 174
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 175
    sget-object p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/CheckedTextView;->drawCheckMark(Landroid/graphics/Canvas;)V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 93
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckWidth()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 95
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 97
    iput-boolean v4, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 99
    invoke-super {p0, p1, p2}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->onMeasure(II)V

    .line 102
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lmiuix/androidbasewidget/widget/CheckedTextView;->setMeasuredDimension(II)V

    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingEnd()I

    move-result v3

    sub-int v3, v0, v3

    mul-int/lit8 v5, v1, 0x2

    if-ge v3, v5, :cond_1

    .line 108
    iput-boolean v2, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    move v1, v2

    goto :goto_0

    .line 110
    :cond_1
    iput-boolean v4, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mDrawCheckMark:Z

    :cond_2
    :goto_0
    sub-int/2addr v0, v1

    .line 114
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 115
    invoke-super {p0, p1, p2}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->onMeasure(II)V

    if-nez v1, :cond_3

    return-void

    .line 121
    :cond_3
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v1

    .line 123
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/widget/CheckedTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 72
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 76
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 77
    sget-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 78
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->setMinHeight(I)V

    .line 79
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 81
    :cond_2
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 193
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
