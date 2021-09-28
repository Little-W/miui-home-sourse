.class public Lmiuix/androidbasewidget/widget/StateEditText;
.super Lmiuix/androidbasewidget/widget/EditText;
.source "StateEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;
    }
.end annotation


# static fields
.field private static final WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mExtraDrawables:[Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;

.field private mLabelLayout:Landroid/text/StaticLayout;

.field private mLabelLength:I

.field private mLabelMaxWidth:I

.field private mPressed:Z

.field private mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

.field private mWidgetPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lmiuix/androidbasewidget/widget/StateEditText;->WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method private createLabelLayout()V
    .locals 9

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 285
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    :goto_0
    return-void
.end method

.method private dispatchEndDrawableTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->isWidgetResumedEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private drawExtraWidget(Landroid/graphics/Canvas;)V
    .locals 13

    .line 251
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidth()I

    move-result v0

    .line 254
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getHeight()I

    move-result v1

    .line 255
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getScrollX()I

    move-result v2

    .line 256
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaddingEnd()I

    move-result v3

    .line 257
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    .line 258
    aget-object v6, v4, v5

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v6, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v4, v6

    .line 259
    :goto_0
    div-int/2addr v1, v5

    move v5, v7

    .line 260
    :goto_1
    iget-object v6, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v8, v6

    if-ge v7, v8, :cond_2

    .line 261
    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 262
    iget-object v8, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 263
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 264
    iget-object v9, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v7

    add-int v10, v2, v3

    add-int/2addr v10, v4

    add-int v11, v10, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v12, v1, v8

    add-int/2addr v10, v6

    add-int/2addr v10, v5

    add-int/2addr v8, v1

    invoke-virtual {v9, v11, v12, v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 269
    :cond_1
    iget-object v9, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v7

    add-int v10, v2, v0

    sub-int/2addr v10, v3

    sub-int/2addr v10, v4

    sub-int v11, v10, v6

    sub-int/2addr v11, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v12, v1, v8

    sub-int/2addr v10, v5

    add-int/2addr v8, v1

    invoke-virtual {v9, v11, v12, v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 274
    :goto_2
    iget v5, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v5, v6

    .line 275
    iget-object v6, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;)V
    .locals 6

    .line 233
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 235
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 236
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaddingStart()I

    move-result v1

    .line 237
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 238
    aget-object v4, v2, v3

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v3, v2

    :goto_0
    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 240
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getScrollX()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    :goto_1
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 246
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_2
    return-void
.end method

.method private getLabelLength()I
    .locals 2

    .line 147
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 148
    :goto_0
    iget v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getWidgetLength()I
    .locals 5

    .line 153
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 154
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 155
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 156
    iget v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method private isWidgetResumedEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 178
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getScrollX()I

    move-result v0

    move v2, v1

    .line 180
    :goto_0
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 181
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    .line 183
    invoke-direct {p0, p1, v2}, Lmiuix/androidbasewidget/widget/StateEditText;->onWidgetTouchEvent(Landroid/view/MotionEvent;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private onWidgetTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onWidgetClick(I)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    goto :goto_0

    .line 204
    :cond_0
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 205
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 164
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->dispatchEndDrawableTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 167
    :cond_0
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 136
    invoke-super {p0}, Lmiuix/androidbasewidget/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    .line 138
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidgetLength()I

    move-result v1

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getLabelLength()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 124
    invoke-super {p0}, Lmiuix/androidbasewidget/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    .line 126
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getLabelLength()I

    move-result v1

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidgetLength()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 227
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 228
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->drawExtraWidget(Landroid/graphics/Canvas;)V

    .line 229
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->drawLabel(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 212
    invoke-super {p0, p1, p2}, Lmiuix/androidbasewidget/widget/EditText;->onMeasure(II)V

    .line 213
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_1

    .line 214
    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    if-nez p1, :cond_0

    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_0

    .line 215
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 216
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->createLabelLayout()V

    .line 218
    :cond_0
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 219
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getMeasuredHeight()I

    move-result p2

    if-le p1, p2, :cond_1

    .line 220
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 80
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 81
    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 82
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    goto :goto_2

    .line 84
    :cond_1
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int v0, p1

    :goto_1
    iput v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 86
    :goto_2
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 87
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->createLabelLayout()V

    .line 89
    :cond_3
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->invalidate()V

    return-void
.end method

.method public setWidgetManager(Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onDetached()V

    .line 73
    :cond_0
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 74
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1, p0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onAttached(Lmiuix/androidbasewidget/widget/StateEditText;)V

    :cond_1
    return-void
.end method
