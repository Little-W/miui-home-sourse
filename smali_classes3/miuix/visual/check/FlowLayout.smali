.class public Lmiuix/visual/check/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private mLineGravity:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lmiuix/visual/check/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lmiuix/visual/check/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 58
    iput-boolean p3, p0, Lmiuix/visual/check/FlowLayout;->singleLine:Z

    .line 59
    invoke-direct {p0, p1, p2}, Lmiuix/visual/check/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 66
    iput-boolean p3, p0, Lmiuix/visual/check/FlowLayout;->singleLine:Z

    .line 67
    invoke-direct {p0, p1, p2}, Lmiuix/visual/check/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static getMeasuredDimension(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_0

    return p2

    :cond_0
    return p0

    .line 198
    :cond_1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lmiuix/visualcheck/R$styleable;->FlowLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    sget p2, Lmiuix/visualcheck/R$styleable;->FlowLayout_lineSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/visual/check/FlowLayout;->lineSpacing:I

    .line 74
    sget p2, Lmiuix/visualcheck/R$styleable;->FlowLayout_itemSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/visual/check/FlowLayout;->itemSpacing:I

    .line 75
    sget p2, Lmiuix/visualcheck/R$styleable;->FlowLayout_lineGravity:I

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/visual/check/FlowLayout;->mLineGravity:I

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getItemSpacing()I
    .locals 0

    .line 88
    iget p0, p0, Lmiuix/visual/check/FlowLayout;->itemSpacing:I

    return p0
.end method

.method protected getLineSpacing()I
    .locals 0

    .line 80
    iget p0, p0, Lmiuix/visual/check/FlowLayout;->lineSpacing:I

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 206
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 212
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getPaddingLeft()I

    move-result v4

    :goto_1
    if-eqz v1, :cond_3

    .line 213
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getPaddingRight()I

    move-result v5

    .line 215
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getPaddingTop()I

    move-result v6

    sub-int v7, p4, p2

    sub-int/2addr v7, v5

    move v8, v6

    move v9, v8

    move v12, v7

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, v4

    .line 226
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getChildCount()I

    move-result v13

    if-ge v5, v13, :cond_f

    .line 227
    invoke-virtual {v0, v5}, Lmiuix/visual/check/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 229
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_4

    move/from16 p5, v4

    move v2, v11

    move v11, v3

    goto/16 :goto_b

    .line 233
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 236
    instance-of v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_5

    .line 237
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 238
    invoke-static {v14}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v15

    .line 239
    invoke-static {v14}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v14

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    add-int v16, v6, v15

    .line 242
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v2, v16, v17

    .line 244
    iget-boolean v3, v0, Lmiuix/visual/check/FlowLayout;->singleLine:Z

    if-nez v3, :cond_6

    if-le v2, v7, :cond_6

    .line 248
    iget v2, v0, Lmiuix/visual/check/FlowLayout;->lineSpacing:I

    add-int v9, v8, v2

    move v6, v4

    move v10, v5

    :cond_6
    add-int v2, v6, v15

    .line 253
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 254
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 p5, v4

    add-int v4, v9, v16

    if-eqz v1, :cond_7

    sub-int v2, v7, v3

    sub-int v3, v7, v6

    sub-int/2addr v3, v15

    .line 257
    invoke-virtual {v13, v2, v9, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 260
    :cond_7
    invoke-virtual {v13, v2, v9, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 264
    :goto_5
    iget v2, v0, Lmiuix/visual/check/FlowLayout;->mLineGravity:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    if-ne v10, v5, :cond_a

    if-eqz v10, :cond_a

    :goto_6
    if-ge v11, v10, :cond_a

    .line 267
    iget v2, v0, Lmiuix/visual/check/FlowLayout;->mLineGravity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    div-int/lit8 v2, v12, 0x2

    goto :goto_7

    :cond_8
    move v2, v12

    .line 268
    :goto_7
    invoke-virtual {v0, v11}, Lmiuix/visual/check/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_9

    neg-int v2, v2

    :cond_9
    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    add-int/2addr v15, v14

    .line 275
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v15, v2

    iget v2, v0, Lmiuix/visual/check/FlowLayout;->itemSpacing:I

    add-int/2addr v15, v2

    add-int/2addr v6, v15

    sub-int v2, v7, v6

    .line 278
    iget v3, v0, Lmiuix/visual/check/FlowLayout;->mLineGravity:I

    const/4 v11, 0x1

    if-eq v3, v11, :cond_d

    .line 279
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v11

    if-ne v5, v3, :cond_d

    move v3, v10

    :goto_8
    if-gt v3, v5, :cond_d

    .line 281
    iget v12, v0, Lmiuix/visual/check/FlowLayout;->mLineGravity:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_b

    div-int/lit8 v12, v2, 0x2

    goto :goto_9

    :cond_b
    move v12, v2

    .line 282
    :goto_9
    invoke-virtual {v0, v3}, Lmiuix/visual/check/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v1, :cond_c

    neg-int v12, v12

    :cond_c
    invoke-virtual {v14, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    if-ge v8, v4, :cond_e

    goto :goto_a

    :cond_e
    move v4, v8

    :goto_a
    move v12, v2

    move v8, v4

    move v2, v10

    :goto_b
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, p5

    move v3, v11

    move v11, v2

    goto/16 :goto_3

    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 109
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 110
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 112
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 113
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x7fffffff

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v1

    .line 120
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getPaddingLeft()I

    move-result v6

    .line 121
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getPaddingTop()I

    move-result v7

    .line 127
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    move v10, v6

    move v9, v7

    move v11, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 128
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getChildCount()I

    move-result v12

    if-ge v6, v12, :cond_8

    .line 129
    invoke-virtual {v0, v6}, Lmiuix/visual/check/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 131
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v18, v5

    const/16 v16, 0x0

    goto :goto_4

    :cond_2
    move/from16 v13, p1

    move/from16 v14, p2

    .line 134
    invoke-virtual {v0, v12, v13, v14}, Lmiuix/visual/check/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 136
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 139
    instance-of v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    .line 140
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 141
    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v16, 0x0

    add-int/lit8 v8, v8, 0x0

    .line 142
    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/lit8 v15, v15, 0x0

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    move/from16 v8, v16

    move v15, v8

    :goto_3
    add-int v17, v10, v8

    .line 145
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v19, v10

    add-int v10, v17, v18

    if-le v10, v5, :cond_4

    .line 150
    iget-boolean v10, v0, Lmiuix/visual/check/FlowLayout;->singleLine:Z

    if-nez v10, :cond_4

    .line 151
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getPaddingLeft()I

    move-result v10

    .line 154
    iget v11, v0, Lmiuix/visual/check/FlowLayout;->lineSpacing:I

    add-int/2addr v11, v9

    move/from16 v19, v10

    :cond_4
    add-int v10, v19, v8

    .line 157
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v10, v10, v17

    .line 158
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v18, v5

    add-int v5, v11, v17

    if-le v10, v7, :cond_5

    move v7, v10

    :cond_5
    add-int/2addr v8, v15

    .line 165
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v8, v10

    iget v10, v0, Lmiuix/visual/check/FlowLayout;->itemSpacing:I

    add-int/2addr v8, v10

    add-int v19, v19, v8

    .line 170
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_6

    add-int/2addr v7, v15

    :cond_6
    if-ge v9, v5, :cond_7

    move v9, v5

    :cond_7
    move/from16 v10, v19

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v18

    goto/16 :goto_2

    .line 181
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v7, v5

    .line 184
    invoke-virtual/range {p0 .. p0}, Lmiuix/visual/check/FlowLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v9, v5

    .line 186
    invoke-static {v1, v2, v7}, Lmiuix/visual/check/FlowLayout;->getMeasuredDimension(III)I

    move-result v1

    .line 189
    invoke-static {v3, v4, v9}, Lmiuix/visual/check/FlowLayout;->getMeasuredDimension(III)I

    move-result v2

    .line 190
    invoke-virtual {v0, v1, v2}, Lmiuix/visual/check/FlowLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected setItemSpacing(I)V
    .locals 0

    .line 92
    iput p1, p0, Lmiuix/visual/check/FlowLayout;->itemSpacing:I

    return-void
.end method

.method protected setLineSpacing(I)V
    .locals 0

    .line 84
    iput p1, p0, Lmiuix/visual/check/FlowLayout;->lineSpacing:I

    return-void
.end method
