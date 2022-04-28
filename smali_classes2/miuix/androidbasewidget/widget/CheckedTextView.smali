.class public Lmiuix/androidbasewidget/widget/CheckedTextView;
.super Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;
.source "CheckedTextView.java"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103c8

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 50
    new-array p1, p1, [Landroid/view/View;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private drawCheckMark(Landroid/graphics/Canvas;)V
    .locals 9

    .line 111
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 114
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    .line 117
    :goto_0
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingTop()I

    move-result v3

    .line 118
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingTop()I

    move-result v4

    .line 119
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingBottom()I

    move-result v5

    .line 120
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 121
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v7, :cond_1

    .line 122
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getPaddingBottom()I

    move-result v5

    sub-int v6, v4, v5

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getGravity()I

    move-result v7

    and-int/lit8 v7, v7, 0x70

    const/16 v8, 0x10

    if-eq v7, v8, :cond_3

    const/16 v4, 0x50

    if-eq v7, v4, :cond_2

    goto :goto_1

    .line 126
    :cond_2
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v6

    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getHeight()I

    move-result v3

    invoke-static {v3, v6, v4, v5}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkPositionY(IIII)I

    move-result v3

    :goto_1
    add-int/2addr v1, v2

    add-int/2addr v6, v3

    .line 133
    invoke-virtual {v0, v2, v3, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method public static getCheckMarkPositionY(IIII)I
    .locals 0

    sub-int/2addr p0, p2

    sub-int/2addr p0, p3

    sub-int/2addr p0, p1

    .line 139
    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p2

    return p0
.end method

.method private getCheckWidth()I
    .locals 1

    .line 100
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 153
    invoke-super {p0}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->drawableStateChanged()V

    .line 154
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 157
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 158
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 55
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 169
    invoke-super {p0}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->jumpDrawablesToCurrentState()V

    .line 170
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 144
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 145
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/CheckedTextView;->drawCheckMark(Landroid/graphics/Canvas;)V

    .line 107
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 76
    invoke-super {p0, p1, p2}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->onMeasure(II)V

    .line 78
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getCheckWidth()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    return-void

    .line 88
    :cond_1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    const/high16 p2, -0x80000000

    if-ne v0, p2, :cond_2

    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    .line 96
    :goto_0
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/widget/CheckedTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 62
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 66
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

    .line 67
    sget-object v0, Lmiuix/androidbasewidget/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 68
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->setMinHeight(I)V

    .line 69
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 71
    :cond_2
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 164
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/AppCompatCheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
