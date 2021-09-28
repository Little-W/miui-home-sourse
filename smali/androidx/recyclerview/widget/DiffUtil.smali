.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$CenteredArray;,
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$Diagonal;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final DIAGONAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private static backward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v4

    sub-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 275
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v6, v2

    move v7, v6

    :goto_1
    if-gt v7, v2, :cond_a

    if-eq v7, v6, :cond_2

    if-eq v7, v2, :cond_1

    add-int/lit8 v8, v7, 0x1

    .line 287
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v9

    if-ge v8, v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v7, -0x1

    .line 292
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    move v15, v9

    move v9, v8

    move v8, v15

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v8, v7, 0x1

    .line 289
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    move v9, v8

    .line 295
    :goto_3
    iget v10, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v11, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    sub-int/2addr v11, v8

    sub-int/2addr v11, v7

    sub-int/2addr v10, v11

    if-eqz v2, :cond_4

    if-eq v8, v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v10, 0x1

    goto :goto_5

    :cond_4
    :goto_4
    move v11, v10

    .line 298
    :goto_5
    iget v12, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    if-le v8, v12, :cond_5

    iget v12, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    if-le v10, v12, :cond_5

    add-int/lit8 v12, v8, -0x1

    add-int/lit8 v13, v10, -0x1

    move-object/from16 v14, p1

    .line 300
    invoke-virtual {v14, v12, v13}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_5
    move-object/from16 v14, p1

    .line 305
    :cond_6
    invoke-virtual {v1, v7, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    if-eqz v3, :cond_8

    sub-int v12, v5, v7

    if-lt v12, v6, :cond_7

    if-gt v12, v2, :cond_7

    move-object/from16 v13, p2

    .line 313
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v12

    if-lt v12, v8, :cond_9

    .line 315
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 317
    iput v8, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 318
    iput v10, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 319
    iput v9, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 320
    iput v11, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 321
    iput-boolean v4, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    return-object v0

    :cond_7
    move-object/from16 v13, p2

    goto :goto_6

    :cond_8
    move-object/from16 v13, p2

    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p0

    return-object p0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 9

    .line 124
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    .line 125
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v1

    .line 127
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Range;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v0, v5, v1}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 135
    div-int/lit8 v0, v0, 0x2

    .line 139
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    .line 140
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 145
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 146
    invoke-static {v5, p0, v1, v3}, Landroidx/recyclerview/widget/DiffUtil;->midPoint(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 149
    invoke-virtual {v6}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v7

    if-lez v7, :cond_0

    .line 150
    invoke-virtual {v6}, Landroidx/recyclerview/widget/DiffUtil$Snake;->toDiagonal()Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v7}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    goto :goto_1

    .line 154
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 153
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 155
    :goto_1
    iget v8, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 156
    iget v8, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 157
    iget v8, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 158
    iget v8, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v8, v7, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 159
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 165
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iput v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 166
    iget v7, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v7, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 167
    iget v6, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 168
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_3
    sget-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 178
    invoke-virtual {v1}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->backingData()[I

    move-result-object v5

    invoke-virtual {v3}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->backingData()[I

    move-result-object v6

    move-object v2, v0

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v0
.end method

.method private static forward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    .line 218
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v6

    sub-int/2addr v3, v6

    neg-int v6, v2

    move v7, v6

    :goto_1
    if-gt v7, v2, :cond_a

    if-eq v7, v6, :cond_2

    if-eq v7, v2, :cond_1

    add-int/lit8 v8, v7, 0x1

    .line 226
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v9

    if-le v8, v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v7, -0x1

    .line 231
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    add-int/lit8 v9, v8, 0x1

    move v15, v9

    move v9, v8

    move v8, v15

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v8, v7, 0x1

    .line 228
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    move v9, v8

    .line 234
    :goto_3
    iget v10, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v11, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v11, v8, v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v7

    if-eqz v2, :cond_4

    if-eq v8, v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v10, -0x1

    goto :goto_5

    :cond_4
    :goto_4
    move v11, v10

    .line 237
    :goto_5
    iget v12, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    if-ge v8, v12, :cond_5

    iget v12, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    if-ge v10, v12, :cond_5

    move-object/from16 v12, p1

    .line 239
    invoke-virtual {v12, v8, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v12, p1

    .line 244
    :cond_6
    invoke-virtual {v1, v7, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    if-eqz v5, :cond_8

    sub-int v13, v3, v7

    add-int/lit8 v14, v6, 0x1

    if-lt v13, v14, :cond_7

    add-int/lit8 v14, v2, -0x1

    if-gt v13, v14, :cond_7

    move-object/from16 v14, p3

    .line 252
    invoke-virtual {v14, v13}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v13

    if-gt v13, v8, :cond_9

    .line 254
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 255
    iput v9, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 256
    iput v11, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 257
    iput v8, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 258
    iput v10, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 259
    iput-boolean v4, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    return-object v0

    :cond_7
    move-object/from16 v14, p3

    goto :goto_6

    :cond_8
    move-object/from16 v14, p3

    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method private static midPoint(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 4

    .line 191
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v0

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 195
    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    invoke-virtual {p2, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    .line 196
    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    invoke-virtual {p3, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 198
    invoke-static {p0, p1, p2, p3, v2}, Landroidx/recyclerview/widget/DiffUtil;->forward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    .line 202
    :cond_1
    invoke-static {p0, p1, p2, p3, v2}, Landroidx/recyclerview/widget/DiffUtil;->backward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    return-object v1
.end method
