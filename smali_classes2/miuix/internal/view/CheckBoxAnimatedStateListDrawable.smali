.class public Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;
.super Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;
.source "CheckBoxAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;
    }
.end annotation


# instance fields
.field private mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

.field private mContentAlpha:F

.field private mIsEnabled:Z

.field private mPreChecked:Z

.field private mPrePressed:Z

.field private mScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 31
    iput v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 35
    iput-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V
    .locals 11

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 29
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 31
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 35
    iput-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    .line 84
    new-instance p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->isSingleSelectionWidget()Z

    move-result v2

    iget v3, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget v4, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget v5, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget v6, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget v7, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget v8, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget v9, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget v10, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lmiuix/internal/view/CheckWidgetDrawableAnims;-><init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    iput-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 13

    .line 41
    invoke-super {p0, p1}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 42
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->getCheckWidgetDrawableStyle()I

    move-result v0

    sget-object v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_disableBackgroundColor:I

    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    .line 45
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_checkOnAlphaBackgroundColor:I

    .line 46
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    .line 47
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_checkOnBackgroundColor:I

    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    .line 49
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_strokeColor:I

    .line 50
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    .line 51
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_backgroundNormalAlpha:I

    .line 52
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    .line 53
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_backgroundDisableAlpha:I

    .line 54
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    .line 55
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_strokeNormalAlpha:I

    .line 56
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    .line 57
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_strokeDisableAlpha:I

    .line 58
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    .line 59
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    sget v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable_checkwidget_touchAnimEnable:I

    .line 60
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    new-instance p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->isSingleSelectionWidget()Z

    move-result v4

    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v5, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v6, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v7, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v8, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v9, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v10, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v11, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget v12, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lmiuix/internal/view/CheckWidgetDrawableAnims;-><init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    iput-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 173
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 175
    invoke-super {p0, p1}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v0, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->draw(Landroid/graphics/Canvas;)V

    .line 182
    :cond_1
    invoke-super {p0, p1}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 185
    :cond_2
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 188
    iget-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    const/high16 v0, 0x437f0000    # 255.0f

    .line 192
    iget v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p0, v0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setAlpha(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x7f

    .line 194
    invoke-virtual {p0, v0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setAlpha(I)V

    .line 196
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 198
    iget v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/2addr v3, v2

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    div-int/2addr v4, v2

    int-to-float v0, v4

    invoke-virtual {p1, v1, v1, v3, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 199
    invoke-super {p0, p1}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getCheckWidgetDrawableStyle()I
    .locals 1

    .line 74
    sget v0, Lmiuix/appcompat/R$style;->CheckWidgetDrawable_CheckBox:I

    return v0
.end method

.method public getContentAlpha()F
    .locals 1

    .line 216
    iget v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 204
    iget v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    return v0
.end method

.method protected isSingleSelectionWidget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected newCheckWidgetConstantState()Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
    .locals 1

    .line 159
    new-instance v0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;

    invoke-direct {v0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;-><init>()V

    return-object v0
.end method

.method protected onStateChange([I)Z
    .locals 8

    .line 101
    invoke-super {p0, p1}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->onStateChange([I)Z

    move-result v0

    .line 103
    iget-object v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-nez v1, :cond_0

    return v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 108
    invoke-super {p0, p1}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->onStateChange([I)Z

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x0

    .line 112
    iput-boolean v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    .line 113
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v1, v2, :cond_5

    aget v5, p1, v1

    const v6, 0x10100a7

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    move v3, v7

    goto :goto_1

    :cond_2
    const v6, 0x10100a0

    if-ne v5, v6, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    const v6, 0x101009e

    if-ne v5, v6, :cond_4

    .line 119
    iput-boolean v7, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 123
    invoke-virtual {p0, v4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->startPressedAnim(Z)V

    .line 125
    :cond_6
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    if-nez p1, :cond_7

    if-nez v3, :cond_7

    .line 126
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    invoke-virtual {p0, v4, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->verifyChecked(ZZ)V

    :cond_7
    if-nez v3, :cond_9

    .line 129
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    if-eq v4, p1, :cond_9

    .line 130
    :cond_8
    invoke-virtual {p0, v4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->startUnPressedAnim(Z)V

    .line 133
    :cond_9
    iput-boolean v3, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 134
    iput-boolean v4, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    return v0
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->setBounds(IIII)V

    .line 222
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 233
    invoke-super {p0, p1}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 234
    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected setCheckWidgetDrawableBounds(IIII)V
    .locals 1

    .line 226
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method protected setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 0

    .line 212
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 208
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    return-void
.end method

.method protected startPressedAnim(Z)V
    .locals 2

    .line 146
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v1, v1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    invoke-virtual {v0, p1, v1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->startPressedAnim(ZZ)V

    :cond_0
    return-void
.end method

.method protected startUnPressedAnim(Z)V
    .locals 2

    .line 153
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget-boolean v1, v1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    invoke-virtual {v0, p1, v1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->startUnPressedAnim(ZZ)V

    :cond_0
    return-void
.end method

.method protected verifyChecked(ZZ)V
    .locals 1

    .line 139
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1, p2}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->verifyChecked(ZZ)V

    .line 141
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
