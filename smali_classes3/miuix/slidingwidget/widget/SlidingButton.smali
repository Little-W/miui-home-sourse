.class public Lmiuix/slidingwidget/widget/SlidingButton;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "SlidingButton.java"


# instance fields
.field private mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 32
    sget v0, Lmiuix/slidingwidget/R$attr;->slidingButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/slidingwidget/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-direct {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 39
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initDrawable()V

    .line 40
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initAnim()V

    .line 42
    sget-object v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton:[I

    sget v1, Lmiuix/slidingwidget/R$style;->Widget_SlidingButton_DayNight:I

    .line 43
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 45
    iget-object p3, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p3, p1, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 47
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    new-instance p1, Lmiuix/slidingwidget/widget/-$$Lambda$SlidingButton$6eeVd18MLg6d2Hlp6naG9F25Sck;

    invoke-direct {p1, p0}, Lmiuix/slidingwidget/widget/-$$Lambda$SlidingButton$6eeVd18MLg6d2Hlp6naG9F25Sck;-><init>(Lmiuix/slidingwidget/widget/SlidingButton;)V

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 115
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 116
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderDrawState()V

    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 101
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getAlpha()F

    move-result p0

    return p0

    .line 104
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getAlpha()F

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    .line 174
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->jumpDrawablesToCurrentState()V

    .line 175
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->jumpDrawablesToCurrentState()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$SlidingButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 50
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onHoverEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-nez v0, :cond_0

    .line 156
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 159
    :cond_0
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 123
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setMeasuredDimension(II)V

    .line 124
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setParentClipChildren()V

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 138
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 141
    :cond_0
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_1

    .line 142
    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public performClick()Z
    .locals 0

    .line 129
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->performClick()Z

    .line 130
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    .line 131
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setAlpha(F)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setAlpha(F)V

    .line 93
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setAlpha(F)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButton;->invalidate()V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 77
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 78
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButton;->isChecked()Z

    move-result p1

    .line 79
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLayerType(ILandroid/graphics/Paint;)V

    .line 67
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setLayerType(I)V

    :cond_0
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setPressed(Z)V

    .line 150
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButton;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 169
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

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
