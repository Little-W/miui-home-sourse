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

    new-array v0, v0, [Ljava/lang/Class;

    .line 24
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

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 291
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

    .line 172
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->isWidgetResumedEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private drawExtraWidget(Landroid/graphics/Canvas;)V
    .locals 13

    .line 257
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 259
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidth()I

    move-result v0

    .line 260
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getHeight()I

    move-result v1

    .line 261
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getScrollX()I

    move-result v2

    .line 262
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaddingEnd()I

    move-result v3

    .line 263
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    .line 264
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

    .line 265
    :goto_0
    div-int/2addr v1, v5

    move v5, v7

    .line 266
    :goto_1
    iget-object v6, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v8, v6

    if-ge v7, v8, :cond_2

    .line 267
    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 268
    iget-object v8, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 269
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 270
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

    .line 275
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

    .line 280
    :goto_2
    iget v5, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v5, v6

    .line 281
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

    .line 237
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 239
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 240
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaddingStart()I

    move-result v1

    .line 241
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 242
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

    .line 243
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

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 245
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
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

    .line 248
    :cond_1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getScrollX()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 250
    :goto_1
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 252
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_2
    return-void
.end method

.method private getLabelLength()I
    .locals 1

    .line 151
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 152
    :goto_0
    iget p0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    add-int/2addr p0, v0

    return p0
.end method

.method private getWidgetLength()I
    .locals 5

    .line 157
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 158
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 159
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 160
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

    .line 179
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getScrollX()I

    move-result v0

    move v2, v1

    .line 181
    :goto_0
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 182
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 183
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

    .line 184
    invoke-direct {p0, p1, v2}, Lmiuix/androidbasewidget/widget/StateEditText;->onWidgetTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_1
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    return v1
.end method

.method private onWidgetTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 2

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    if-eqz p1, :cond_3

    .line 208
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    goto :goto_0

    .line 195
    :cond_1
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onWidgetClick(I)V

    .line 197
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    return v0

    .line 203
    :cond_2
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 211
    :cond_3
    :goto_0
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    return p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 168
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->dispatchEndDrawableTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 140
    invoke-super {p0}, Lmiuix/androidbasewidget/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    .line 142
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidgetLength()I

    move-result p0

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getLabelLength()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 128
    invoke-super {p0}, Lmiuix/androidbasewidget/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    .line 130
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getLabelLength()I

    move-result p0

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidgetLength()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 232
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->drawExtraWidget(Landroid/graphics/Canvas;)V

    .line 233
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->drawLabel(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 216
    invoke-super {p0, p1, p2}, Lmiuix/androidbasewidget/widget/EditText;->onMeasure(II)V

    .line 217
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_1

    .line 218
    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    if-nez p1, :cond_0

    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_0

    .line 219
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 220
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->createLabelLayout()V

    .line 222
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

    .line 223
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getMeasuredHeight()I

    move-result p2

    if-le p1, p2, :cond_1

    .line 224
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 297
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 298
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->setInputType(I)V

    .line 299
    invoke-virtual {p0, v0}, Lmiuix/androidbasewidget/widget/StateEditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 84
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 85
    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 86
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

    .line 88
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

    .line 90
    :goto_2
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 91
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->createLabelLayout()V

    .line 93
    :cond_3
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->invalidate()V

    return-void
.end method

.method public setWidgetManager(Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onDetached()V

    .line 77
    :cond_0
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 78
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1, p0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onAttached(Lmiuix/androidbasewidget/widget/StateEditText;)V

    :cond_1
    return-void
.end method
