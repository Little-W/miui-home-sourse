.class final Ljava8/util/DualPivotQuicksort;
.super Ljava/lang/Object;
.source "DualPivotQuicksort.java"


# static fields
.field private static final COUNTING_SORT_THRESHOLD_FOR_BYTE:I = 0x1d

.field private static final COUNTING_SORT_THRESHOLD_FOR_SHORT_OR_CHAR:I = 0xc80

.field private static final INSERTION_SORT_THRESHOLD:I = 0x2f

.field private static final MAX_RUN_COUNT:I = 0x43

.field private static final NUM_BYTE_VALUES:I = 0x100

.field private static final NUM_CHAR_VALUES:I = 0x10000

.field private static final NUM_SHORT_VALUES:I = 0x10000

.field private static final QUICKSORT_THRESHOLD:I = 0x11e


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doSort([CII[CII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    sub-int v4, v2, v1

    const/4 v5, 0x1

    const/16 v6, 0x11e

    if-ge v4, v6, :cond_0

    .line 1575
    invoke-static {v0, v1, v2, v5}, Ljava8/util/DualPivotQuicksort;->sort([CIIZ)V

    return-void

    :cond_0
    const/16 v4, 0x44

    .line 1583
    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v1, v4, v6

    move v7, v1

    move v8, v6

    :goto_0
    if-ge v7, v2, :cond_8

    :goto_1
    if-ge v7, v2, :cond_1

    .line 1589
    aget-char v9, v0, v7

    add-int/lit8 v10, v7, 0x1

    aget-char v11, v0, v10

    if-ne v9, v11, :cond_1

    move v7, v10

    goto :goto_1

    :cond_1
    if-ne v7, v2, :cond_2

    goto :goto_5

    .line 1592
    :cond_2
    aget-char v9, v0, v7

    add-int/lit8 v10, v7, 0x1

    aget-char v11, v0, v10

    if-ge v9, v11, :cond_3

    :goto_2
    add-int/2addr v7, v5

    if-gt v7, v2, :cond_5

    add-int/lit8 v9, v7, -0x1

    .line 1593
    aget-char v9, v0, v9

    aget-char v10, v0, v7

    if-gt v9, v10, :cond_5

    goto :goto_2

    .line 1594
    :cond_3
    aget-char v9, v0, v7

    aget-char v10, v0, v10

    if-le v9, v10, :cond_5

    :goto_3
    add-int/2addr v7, v5

    if-gt v7, v2, :cond_4

    add-int/lit8 v9, v7, -0x1

    .line 1595
    aget-char v9, v0, v9

    aget-char v10, v0, v7

    if-lt v9, v10, :cond_4

    goto :goto_3

    .line 1597
    :cond_4
    aget v9, v4, v8

    sub-int/2addr v9, v5

    move v10, v7

    :goto_4
    add-int/2addr v9, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_5

    .line 1598
    aget-char v11, v0, v9

    aget-char v12, v0, v10

    aput-char v12, v0, v9

    aput-char v11, v0, v10

    goto :goto_4

    .line 1604
    :cond_5
    aget v9, v4, v8

    if-le v9, v1, :cond_6

    aget v9, v4, v8

    aget-char v9, v0, v9

    aget v10, v4, v8

    sub-int/2addr v10, v5

    aget-char v10, v0, v10

    if-lt v9, v10, :cond_6

    add-int/lit8 v8, v8, -0x1

    :cond_6
    add-int/2addr v8, v5

    const/16 v9, 0x43

    if-ne v8, v9, :cond_7

    .line 1613
    invoke-static {v0, v1, v2, v5}, Ljava8/util/DualPivotQuicksort;->sort([CIIZ)V

    return-void

    .line 1587
    :cond_7
    aput v7, v4, v8

    goto :goto_0

    :cond_8
    :goto_5
    if-nez v8, :cond_9

    return-void

    :cond_9
    if-ne v8, v5, :cond_a

    .line 1625
    aget v7, v4, v8

    if-le v7, v2, :cond_a

    return-void

    :cond_a
    add-int/2addr v2, v5

    .line 1632
    aget v7, v4, v8

    if-ge v7, v2, :cond_b

    add-int/lit8 v8, v8, 0x1

    .line 1637
    aput v2, v4, v8

    :cond_b
    move v7, v5

    move v9, v6

    :goto_6
    shl-int/2addr v7, v5

    if-ge v7, v8, :cond_c

    xor-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    goto :goto_6

    :cond_c
    sub-int v7, v2, v1

    if-eqz v3, :cond_e

    move/from16 v10, p5

    if-lt v10, v7, :cond_e

    add-int v10, p4, v7

    .line 1648
    array-length v11, v3

    if-le v10, v11, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v10, p4

    goto :goto_8

    .line 1649
    :cond_e
    :goto_7
    new-array v3, v7, [C

    move v10, v6

    :goto_8
    if-nez v9, :cond_f

    .line 1653
    invoke-static {v0, v1, v3, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v10, v1

    move v10, v6

    move-object/from16 v17, v3

    move-object v3, v0

    move-object/from16 v0, v17

    goto :goto_9

    :cond_f
    sub-int/2addr v10, v1

    move v1, v6

    :goto_9
    if-le v8, v5, :cond_16

    const/4 v7, 0x2

    move v9, v6

    :goto_a
    if-gt v7, v8, :cond_13

    .line 1667
    aget v11, v4, v7

    add-int/lit8 v12, v7, -0x1

    aget v12, v4, v12

    add-int/lit8 v13, v7, -0x2

    .line 1668
    aget v13, v4, v13

    move v14, v12

    move v15, v13

    :goto_b
    if-ge v13, v11, :cond_12

    if-ge v14, v11, :cond_11

    if-ge v15, v12, :cond_10

    add-int v16, v15, v1

    .line 1669
    aget-char v5, v0, v16

    add-int v16, v14, v1

    aget-char v6, v0, v16

    if-gt v5, v6, :cond_10

    goto :goto_c

    :cond_10
    add-int v5, v13, v10

    add-int/lit8 v6, v14, 0x1

    add-int/2addr v14, v1

    .line 1672
    aget-char v14, v0, v14

    aput-char v14, v3, v5

    move v14, v6

    goto :goto_d

    :cond_11
    :goto_c
    add-int v5, v13, v10

    add-int/lit8 v6, v15, 0x1

    add-int/2addr v15, v1

    .line 1670
    aget-char v15, v0, v15

    aput-char v15, v3, v5

    move v15, v6

    :goto_d
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_b

    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 1675
    aput v11, v4, v9

    add-int/lit8 v7, v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_a

    :cond_13
    and-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_15

    add-int/lit8 v8, v8, -0x1

    .line 1678
    aget v5, v4, v8

    move v6, v2

    :goto_e
    add-int/lit8 v6, v6, -0x1

    if-lt v6, v5, :cond_14

    add-int v7, v6, v10

    add-int v8, v6, v1

    .line 1679
    aget-char v8, v0, v8

    aput-char v8, v3, v7

    goto :goto_e

    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 1681
    aput v2, v4, v9

    move v8, v9

    goto :goto_f

    :cond_15
    move v8, v9

    :goto_f
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v17, v3

    move-object v3, v0

    move-object/from16 v0, v17

    move/from16 v18, v10

    move v10, v1

    move/from16 v1, v18

    goto :goto_9

    :cond_16
    return-void
.end method

.method private static doSort([DII[DII)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    sub-int v4, v2, v1

    const/4 v5, 0x1

    const/16 v6, 0x11e

    if-ge v4, v6, :cond_0

    .line 2730
    invoke-static {v0, v1, v2, v5}, Ljava8/util/DualPivotQuicksort;->sort([DIIZ)V

    return-void

    :cond_0
    const/16 v4, 0x44

    .line 2738
    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v1, v4, v6

    move v7, v1

    move v8, v6

    :goto_0
    if-ge v7, v2, :cond_8

    :goto_1
    if-ge v7, v2, :cond_1

    .line 2744
    aget-wide v9, v0, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v12, v0, v11

    cmpl-double v9, v9, v12

    if-nez v9, :cond_1

    move v7, v11

    goto :goto_1

    :cond_1
    if-ne v7, v2, :cond_2

    goto :goto_5

    .line 2747
    :cond_2
    aget-wide v9, v0, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v12, v0, v11

    cmpg-double v9, v9, v12

    if-gez v9, :cond_3

    :goto_2
    add-int/2addr v7, v5

    if-gt v7, v2, :cond_5

    add-int/lit8 v9, v7, -0x1

    .line 2748
    aget-wide v9, v0, v9

    aget-wide v11, v0, v7

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_5

    goto :goto_2

    .line 2749
    :cond_3
    aget-wide v9, v0, v7

    aget-wide v11, v0, v11

    cmpl-double v9, v9, v11

    if-lez v9, :cond_5

    :goto_3
    add-int/2addr v7, v5

    if-gt v7, v2, :cond_4

    add-int/lit8 v9, v7, -0x1

    .line 2750
    aget-wide v9, v0, v9

    aget-wide v11, v0, v7

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_4

    goto :goto_3

    .line 2752
    :cond_4
    aget v9, v4, v8

    sub-int/2addr v9, v5

    move v10, v7

    :goto_4
    add-int/2addr v9, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_5

    .line 2753
    aget-wide v11, v0, v9

    aget-wide v13, v0, v10

    aput-wide v13, v0, v9

    aput-wide v11, v0, v10

    goto :goto_4

    .line 2759
    :cond_5
    aget v9, v4, v8

    if-le v9, v1, :cond_6

    aget v9, v4, v8

    aget-wide v9, v0, v9

    aget v11, v4, v8

    sub-int/2addr v11, v5

    aget-wide v11, v0, v11

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_6

    add-int/lit8 v8, v8, -0x1

    :cond_6
    add-int/2addr v8, v5

    const/16 v9, 0x43

    if-ne v8, v9, :cond_7

    .line 2768
    invoke-static {v0, v1, v2, v5}, Ljava8/util/DualPivotQuicksort;->sort([DIIZ)V

    return-void

    .line 2742
    :cond_7
    aput v7, v4, v8

    goto :goto_0

    :cond_8
    :goto_5
    if-nez v8, :cond_9

    return-void

    :cond_9
    if-ne v8, v5, :cond_a

    .line 2780
    aget v7, v4, v8

    if-le v7, v2, :cond_a

    return-void

    :cond_a
    add-int/2addr v2, v5

    .line 2787
    aget v7, v4, v8

    if-ge v7, v2, :cond_b

    add-int/lit8 v8, v8, 0x1

    .line 2792
    aput v2, v4, v8

    :cond_b
    move v7, v5

    move v9, v6

    :goto_6
    shl-int/2addr v7, v5

    if-ge v7, v8, :cond_c

    xor-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    goto :goto_6

    :cond_c
    sub-int v7, v2, v1

    if-eqz v3, :cond_e

    move/from16 v10, p5

    if-lt v10, v7, :cond_e

    add-int v10, p4, v7

    .line 2803
    array-length v11, v3

    if-le v10, v11, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v10, p4

    goto :goto_8

    .line 2804
    :cond_e
    :goto_7
    new-array v3, v7, [D

    move v10, v6

    :goto_8
    if-nez v9, :cond_f

    .line 2808
    invoke-static {v0, v1, v3, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v10, v1

    move v10, v6

    move-object/from16 v20, v3

    move-object v3, v0

    move-object/from16 v0, v20

    goto :goto_9

    :cond_f
    sub-int/2addr v10, v1

    move v1, v6

    :goto_9
    if-le v8, v5, :cond_16

    const/4 v7, 0x2

    move v9, v6

    :goto_a
    if-gt v7, v8, :cond_13

    .line 2822
    aget v11, v4, v7

    add-int/lit8 v12, v7, -0x1

    aget v12, v4, v12

    add-int/lit8 v13, v7, -0x2

    .line 2823
    aget v13, v4, v13

    move v14, v12

    move v15, v13

    :goto_b
    if-ge v13, v11, :cond_12

    if-ge v14, v11, :cond_11

    if-ge v15, v12, :cond_10

    add-int v16, v15, v1

    .line 2824
    aget-wide v16, v0, v16

    add-int v18, v14, v1

    aget-wide v18, v0, v18

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_10

    goto :goto_c

    :cond_10
    add-int v16, v13, v10

    add-int/lit8 v17, v14, 0x1

    add-int/2addr v14, v1

    .line 2827
    aget-wide v18, v0, v14

    aput-wide v18, v3, v16

    move/from16 v14, v17

    goto :goto_d

    :cond_11
    :goto_c
    add-int v16, v13, v10

    add-int/lit8 v17, v15, 0x1

    add-int/2addr v15, v1

    .line 2825
    aget-wide v18, v0, v15

    aput-wide v18, v3, v16

    move/from16 v15, v17

    :goto_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 2830
    aput v11, v4, v9

    add-int/lit8 v7, v7, 0x2

    goto :goto_a

    :cond_13
    and-int/lit8 v7, v8, 0x1

    if-eqz v7, :cond_15

    add-int/lit8 v8, v8, -0x1

    .line 2833
    aget v7, v4, v8

    move v8, v2

    :goto_e
    add-int/lit8 v8, v8, -0x1

    if-lt v8, v7, :cond_14

    add-int v11, v8, v10

    add-int v12, v8, v1

    .line 2834
    aget-wide v12, v0, v12

    aput-wide v12, v3, v11

    goto :goto_e

    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 2836
    aput v2, v4, v9

    move v8, v9

    goto :goto_f

    :cond_15
    move v8, v9

    :goto_f
    move-object/from16 v20, v3

    move-object v3, v0

    move-object/from16 v0, v20

    move/from16 v21, v10

    move v10, v1

    move/from16 v1, v21

    goto :goto_9

    :cond_16
    return-void
.end method

.method private static doSort([FII[FII)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    sub-int v4, v2, v1

    const/4 v5, 0x1

    const/16 v6, 0x11e

    if-ge v4, v6, :cond_0

    .line 2173
    invoke-static {v0, v1, v2, v5}, Ljava8/util/DualPivotQuicksort;->sort([FIIZ)V

    return-void

    :cond_0
    const/16 v4, 0x44

    .line 2181
    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v1, v4, v6

    move v7, v1

    move v8, v6

    :goto_0
    if-ge v7, v2, :cond_8

    :goto_1
    if-ge v7, v2, :cond_1

    .line 2187
    aget v9, v0, v7

    add-int/lit8 v10, v7, 0x1

    aget v11, v0, v10

    cmpl-float v9, v9, v11

    if-nez v9, :cond_1

    move v7, v10

    goto :goto_1

    :cond_1
    if-ne v7, v2, :cond_2

    goto :goto_5

    .line 2190
    :cond_2
    aget v9, v0, v7

    add-int/lit8 v10, v7, 0x1

    aget v11, v0, v10

    cmpg-float v9, v9, v11

    if-gez v9, :cond_3

    :goto_2
    add-int/2addr v7, v5

    if-gt v7, v2, :cond_5

    add-int/lit8 v9, v7, -0x1

    .line 2191
    aget v9, v0, v9

    aget v10, v0, v7

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_5

    goto :goto_2

    .line 2192
    :cond_3
    aget v9, v0, v7

    aget v10, v0, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_5

    :goto_3
    add-int/2addr v7, v5

    if-gt v7, v2, :cond_4

    add-int/lit8 v9, v7, -0x1

    .line 2193
    aget v9, v0, v9

    aget v10, v0, v7

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    goto :goto_3

    .line 2195
    :cond_4
    aget v9, v4, v8

    sub-int/2addr v9, v5

    move v10, v7

    :goto_4
    add-int/2addr v9, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_5

    .line 2196
    aget v11, v0, v9

    aget v12, v0, v10

    aput v12, v0, v9

    aput v11, v0, v10

    goto :goto_4

    .line 2202
    :cond_5
    aget v9, v4, v8

    if-le v9, v1, :cond_6

    aget v9, v4, v8

    aget v9, v0, v9

    aget v10, v4, v8

    sub-int/2addr v10, v5

    aget v10, v0, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_6

    add-int/lit8 v8, v8, -0x1

    :cond_6
    add-int/2addr v8, v5

    const/16 v9, 0x43

    if-ne v8, v9, :cond_7

    .line 2211
    invoke-static {v0, v1, v2, v5}, Ljava8/util/DualPivotQuicksort;->sort([FIIZ)V

    return-void

    .line 2185
    :cond_7
    aput v7, v4, v8

    goto :goto_0

    :cond_8
    :goto_5
    if-nez v8, :cond_9

    return-void

    :cond_9
    if-ne v8, v5, :cond_a

    .line 2223
    aget v7, v4, v8

    if-le v7, v2, :cond_a

    return-void

    :cond_a
    add-int/2addr v2, v5

    .line 2230
    aget v7, v4, v8

    if-ge v7, v2, :cond_b

    add-int/lit8 v8, v8, 0x1

    .line 2235
    aput v2, v4, v8

    :cond_b
    move v7, v5

    move v9, v6

    :goto_6
    shl-int/2addr v7, v5

    if-ge v7, v8, :cond_c

    xor-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    goto :goto_6

    :cond_c
    sub-int v7, v2, v1

    if-eqz v3, :cond_e

    move/from16 v10, p5

    if-lt v10, v7, :cond_e

    add-int v10, p4, v7

    .line 2246
    array-length v11, v3

    if-le v10, v11, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v10, p4

    goto :goto_8

    .line 2247
    :cond_e
    :goto_7
    new-array v3, v7, [F

    move v10, v6

    :goto_8
    if-nez v9, :cond_f

    .line 2251
    invoke-static {v0, v1, v3, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v10, v1

    move v10, v6

    move-object/from16 v18, v3

    move-object v3, v0

    move-object/from16 v0, v18

    goto :goto_9

    :cond_f
    sub-int/2addr v10, v1

    move v1, v6

    :goto_9
    if-le v8, v5, :cond_16

    const/4 v7, 0x2

    move v9, v6

    :goto_a
    if-gt v7, v8, :cond_13

    .line 2265
    aget v11, v4, v7

    add-int/lit8 v12, v7, -0x1

    aget v12, v4, v12

    add-int/lit8 v13, v7, -0x2

    .line 2266
    aget v13, v4, v13

    move v14, v12

    move v15, v13

    :goto_b
    if-ge v13, v11, :cond_12

    if-ge v14, v11, :cond_11

    if-ge v15, v12, :cond_10

    add-int v16, v15, v1

    .line 2267
    aget v16, v0, v16

    add-int v17, v14, v1

    aget v17, v0, v17

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_10

    goto :goto_c

    :cond_10
    add-int v16, v13, v10

    add-int/lit8 v17, v14, 0x1

    add-int/2addr v14, v1

    .line 2270
    aget v14, v0, v14

    aput v14, v3, v16

    move/from16 v14, v17

    goto :goto_d

    :cond_11
    :goto_c
    add-int v16, v13, v10

    add-int/lit8 v17, v15, 0x1

    add-int/2addr v15, v1

    .line 2268
    aget v15, v0, v15

    aput v15, v3, v16

    move/from16 v15, v17

    :goto_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 2273
    aput v11, v4, v9

    add-int/lit8 v7, v7, 0x2

    goto :goto_a

    :cond_13
    and-int/lit8 v7, v8, 0x1

    if-eqz v7, :cond_15

    add-int/lit8 v8, v8, -0x1

    .line 2276
    aget v7, v4, v8

    move v8, v2

    :goto_e
    add-int/lit8 v8, v8, -0x1

    if-lt v8, v7, :cond_14

    add-int v11, v8, v10

    add-int v12, v8, v1

    .line 2277
    aget v12, v0, v12

    aput v12, v3, v11

    goto :goto_e

    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 2279
    aput v2, v4, v9

    move v8, v9

    goto :goto_f

    :cond_15
    move v8, v9

    :goto_f
    move-object/from16 v18, v3

    move-object v3, v0

    move-object/from16 v0, v18

    move/from16 v19, v10

    move v10, v1

    move/from16 v1, v19

    goto :goto_9

    :cond_16
    return-void
.end method

.method private static doSort([SII[SII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    sub-int v4, v2, v1

    const/4 v5, 0x1

    const/16 v6, 0x11e

    if-ge v4, v6, :cond_0

    .line 1073
    invoke-static {v0, v1, v2, v5}, Ljava8/util/DualPivotQuicksort;->sort([SIIZ)V

    return-void

    :cond_0
    const/16 v4, 0x44

    .line 1081
    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v1, v4, v6

    move v7, v1

    move v8, v6

    :goto_0
    if-ge v7, v2, :cond_8

    :goto_1
    if-ge v7, v2, :cond_1

    .line 1087
    aget-short v9, v0, v7

    add-int/lit8 v10, v7, 0x1

    aget-short v11, v0, v10

    if-ne v9, v11, :cond_1

    move v7, v10

    goto :goto_1

    :cond_1
    if-ne v7, v2, :cond_2

    goto :goto_5

    .line 1090
    :cond_2
    aget-short v9, v0, v7

    add-int/lit8 v10, v7, 0x1

    aget-short v11, v0, v10

    if-ge v9, v11, :cond_3

    :goto_2
    add-int/2addr v7, v5

    if-gt v7, v2, :cond_5

    add-int/lit8 v9, v7, -0x1

    .line 1091
    aget-short v9, v0, v9

    aget-short v10, v0, v7

    if-gt v9, v10, :cond_5

    goto :goto_2

    .line 1092
    :cond_3
    aget-short v9, v0, v7

    aget-short v10, v0, v10

    if-le v9, v10, :cond_5

    :goto_3
    add-int/2addr v7, v5

    if-gt v7, v2, :cond_4

    add-int/lit8 v9, v7, -0x1

    .line 1093
    aget-short v9, v0, v9

    aget-short v10, v0, v7

    if-lt v9, v10, :cond_4

    goto :goto_3

    .line 1095
    :cond_4
    aget v9, v4, v8

    sub-int/2addr v9, v5

    move v10, v7

    :goto_4
    add-int/2addr v9, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_5

    .line 1096
    aget-short v11, v0, v9

    aget-short v12, v0, v10

    aput-short v12, v0, v9

    aput-short v11, v0, v10

    goto :goto_4

    .line 1102
    :cond_5
    aget v9, v4, v8

    if-le v9, v1, :cond_6

    aget v9, v4, v8

    aget-short v9, v0, v9

    aget v10, v4, v8

    sub-int/2addr v10, v5

    aget-short v10, v0, v10

    if-lt v9, v10, :cond_6

    add-int/lit8 v8, v8, -0x1

    :cond_6
    add-int/2addr v8, v5

    const/16 v9, 0x43

    if-ne v8, v9, :cond_7

    .line 1111
    invoke-static {v0, v1, v2, v5}, Ljava8/util/DualPivotQuicksort;->sort([SIIZ)V

    return-void

    .line 1085
    :cond_7
    aput v7, v4, v8

    goto :goto_0

    :cond_8
    :goto_5
    if-nez v8, :cond_9

    return-void

    :cond_9
    if-ne v8, v5, :cond_a

    .line 1123
    aget v7, v4, v8

    if-le v7, v2, :cond_a

    return-void

    :cond_a
    add-int/2addr v2, v5

    .line 1130
    aget v7, v4, v8

    if-ge v7, v2, :cond_b

    add-int/lit8 v8, v8, 0x1

    .line 1135
    aput v2, v4, v8

    :cond_b
    move v7, v5

    move v9, v6

    :goto_6
    shl-int/2addr v7, v5

    if-ge v7, v8, :cond_c

    xor-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    goto :goto_6

    :cond_c
    sub-int v7, v2, v1

    if-eqz v3, :cond_e

    move/from16 v10, p5

    if-lt v10, v7, :cond_e

    add-int v10, p4, v7

    .line 1146
    array-length v11, v3

    if-le v10, v11, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v10, p4

    goto :goto_8

    .line 1147
    :cond_e
    :goto_7
    new-array v3, v7, [S

    move v10, v6

    :goto_8
    if-nez v9, :cond_f

    .line 1151
    invoke-static {v0, v1, v3, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v10, v1

    move v10, v6

    move-object/from16 v17, v3

    move-object v3, v0

    move-object/from16 v0, v17

    goto :goto_9

    :cond_f
    sub-int/2addr v10, v1

    move v1, v6

    :goto_9
    if-le v8, v5, :cond_16

    const/4 v7, 0x2

    move v9, v6

    :goto_a
    if-gt v7, v8, :cond_13

    .line 1165
    aget v11, v4, v7

    add-int/lit8 v12, v7, -0x1

    aget v12, v4, v12

    add-int/lit8 v13, v7, -0x2

    .line 1166
    aget v13, v4, v13

    move v14, v12

    move v15, v13

    :goto_b
    if-ge v13, v11, :cond_12

    if-ge v14, v11, :cond_11

    if-ge v15, v12, :cond_10

    add-int v16, v15, v1

    .line 1167
    aget-short v5, v0, v16

    add-int v16, v14, v1

    aget-short v6, v0, v16

    if-gt v5, v6, :cond_10

    goto :goto_c

    :cond_10
    add-int v5, v13, v10

    add-int/lit8 v6, v14, 0x1

    add-int/2addr v14, v1

    .line 1170
    aget-short v14, v0, v14

    aput-short v14, v3, v5

    move v14, v6

    goto :goto_d

    :cond_11
    :goto_c
    add-int v5, v13, v10

    add-int/lit8 v6, v15, 0x1

    add-int/2addr v15, v1

    .line 1168
    aget-short v15, v0, v15

    aput-short v15, v3, v5

    move v15, v6

    :goto_d
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_b

    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 1173
    aput v11, v4, v9

    add-int/lit8 v7, v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_a

    :cond_13
    and-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_15

    add-int/lit8 v8, v8, -0x1

    .line 1176
    aget v5, v4, v8

    move v6, v2

    :goto_e
    add-int/lit8 v6, v6, -0x1

    if-lt v6, v5, :cond_14

    add-int v7, v6, v10

    add-int v8, v6, v1

    .line 1177
    aget-short v8, v0, v8

    aput-short v8, v3, v7

    goto :goto_e

    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 1179
    aput v2, v4, v9

    move v8, v9

    goto :goto_f

    :cond_15
    move v8, v9

    :goto_f
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v17, v3

    move-object v3, v0

    move-object/from16 v0, v17

    move/from16 v18, v10

    move v10, v1

    move/from16 v1, v18

    goto :goto_9

    :cond_16
    return-void
.end method

.method static sort([BII)V
    .locals 5

    sub-int v0, p2, p1

    const/16 v1, 0x1d

    if-le v0, v1, :cond_3

    const/16 v0, 0x100

    .line 2039
    new-array v1, v0, [I

    add-int/lit8 v2, p1, -0x1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p2, :cond_0

    .line 2042
    aget-byte v3, p0, v2

    add-int/lit16 v3, v3, 0x80

    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    :goto_1
    if-le p2, p1, :cond_6

    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 2045
    aget v2, v1, v0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v0, -0x80

    int-to-byte v2, v2

    .line 2047
    aget v3, v1, v0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 2050
    aput-byte v2, p0, p2

    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_2

    goto :goto_1

    :cond_3
    move v0, p1

    :goto_3
    if-ge v0, p2, :cond_6

    add-int/lit8 v1, v0, 0x1

    .line 2055
    aget-byte v2, p0, v1

    .line 2056
    :goto_4
    aget-byte v3, p0, v0

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, v0, 0x1

    .line 2057
    aget-byte v4, p0, v0

    aput-byte v4, p0, v3

    add-int/lit8 v3, v0, -0x1

    if-ne v0, p1, :cond_4

    move v0, v3

    goto :goto_5

    :cond_4
    move v0, v3

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 2062
    aput-byte v2, p0, v0

    move v0, v1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private static sort([CIIZ)V
    .locals 11

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2f

    if-ge v0, v1, :cond_a

    if-eqz p3, :cond_2

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_9

    add-int/lit8 v0, p3, 0x1

    .line 1708
    aget-char v1, p0, v0

    .line 1709
    :goto_1
    aget-char v2, p0, p3

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, p3, 0x1

    .line 1710
    aget-char v3, p0, p3

    aput-char v3, p0, v2

    add-int/lit8 v2, p3, -0x1

    if-ne p3, p1, :cond_0

    move p3, v2

    goto :goto_2

    :cond_0
    move p3, v2

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 1715
    aput-char v1, p0, p3

    move p3, v0

    goto :goto_0

    :cond_2
    if-lt p1, p2, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1725
    aget-char p3, p0, p1

    add-int/lit8 v0, p1, -0x1

    aget-char v0, p0, v0

    if-ge p3, v0, :cond_2

    :goto_3
    add-int/lit8 p3, p1, 0x1

    if-gt p3, p2, :cond_7

    .line 1736
    aget-char v0, p0, p1

    aget-char v1, p0, p3

    if-ge v0, v1, :cond_4

    .line 1739
    aget-char v1, p0, p3

    move v10, v1

    move v1, v0

    move v0, v10

    :cond_4
    :goto_4
    add-int/lit8 p1, p1, -0x1

    .line 1741
    aget-char v2, p0, p1

    if-ge v0, v2, :cond_5

    add-int/lit8 v2, p1, 0x2

    .line 1742
    aget-char v3, p0, p1

    aput-char v3, p0, v2

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, p1, 0x1

    .line 1744
    aput-char v0, p0, v2

    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 1746
    aget-char v0, p0, p1

    if-ge v1, v0, :cond_6

    add-int/lit8 v0, p1, 0x1

    .line 1747
    aget-char v2, p0, p1

    aput-char v2, p0, v0

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 1749
    aput-char v1, p0, p1

    add-int/lit8 p1, p3, 0x1

    goto :goto_3

    .line 1751
    :cond_7
    aget-char p1, p0, p2

    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 1753
    aget-char p3, p0, p2

    if-ge p1, p3, :cond_8

    add-int/lit8 p3, p2, 0x1

    .line 1754
    aget-char v0, p0, p2

    aput-char v0, p0, p3

    goto :goto_6

    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 1756
    aput-char p1, p0, p2

    :cond_9
    return-void

    :cond_a
    shr-int/lit8 v1, v0, 0x3

    shr-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    sub-int v2, v0, v1

    sub-int v3, v2, v1

    add-int v4, v0, v1

    add-int/2addr v1, v4

    .line 1778
    aget-char v5, p0, v2

    aget-char v6, p0, v3

    if-ge v5, v6, :cond_b

    aget-char v5, p0, v2

    aget-char v6, p0, v3

    aput-char v6, p0, v2

    aput-char v5, p0, v3

    .line 1780
    :cond_b
    aget-char v5, p0, v0

    aget-char v6, p0, v2

    if-ge v5, v6, :cond_c

    aget-char v5, p0, v0

    aget-char v6, p0, v2

    aput-char v6, p0, v0

    aput-char v5, p0, v2

    .line 1781
    aget-char v6, p0, v3

    if-ge v5, v6, :cond_c

    aget-char v6, p0, v3

    aput-char v6, p0, v2

    aput-char v5, p0, v3

    .line 1783
    :cond_c
    aget-char v5, p0, v4

    aget-char v6, p0, v0

    if-ge v5, v6, :cond_d

    aget-char v5, p0, v4

    aget-char v6, p0, v0

    aput-char v6, p0, v4

    aput-char v5, p0, v0

    .line 1784
    aget-char v6, p0, v2

    if-ge v5, v6, :cond_d

    aget-char v6, p0, v2

    aput-char v6, p0, v0

    aput-char v5, p0, v2

    .line 1785
    aget-char v6, p0, v3

    if-ge v5, v6, :cond_d

    aget-char v6, p0, v3

    aput-char v6, p0, v2

    aput-char v5, p0, v3

    .line 1788
    :cond_d
    aget-char v5, p0, v1

    aget-char v6, p0, v4

    if-ge v5, v6, :cond_e

    aget-char v5, p0, v1

    aget-char v6, p0, v4

    aput-char v6, p0, v1

    aput-char v5, p0, v4

    .line 1789
    aget-char v6, p0, v0

    if-ge v5, v6, :cond_e

    aget-char v6, p0, v0

    aput-char v6, p0, v4

    aput-char v5, p0, v0

    .line 1790
    aget-char v6, p0, v2

    if-ge v5, v6, :cond_e

    aget-char v6, p0, v2

    aput-char v6, p0, v0

    aput-char v5, p0, v2

    .line 1791
    aget-char v6, p0, v3

    if-ge v5, v6, :cond_e

    aget-char v6, p0, v3

    aput-char v6, p0, v2

    aput-char v5, p0, v3

    .line 1800
    :cond_e
    aget-char v5, p0, v3

    aget-char v6, p0, v2

    const/4 v7, 0x0

    if-eq v5, v6, :cond_1f

    aget-char v5, p0, v2

    aget-char v6, p0, v0

    if-eq v5, v6, :cond_1f

    aget-char v5, p0, v0

    aget-char v6, p0, v4

    if-eq v5, v6, :cond_1f

    aget-char v5, p0, v4

    aget-char v6, p0, v1

    if-eq v5, v6, :cond_1f

    .line 1806
    aget-char v0, p0, v2

    .line 1807
    aget-char v5, p0, v4

    .line 1815
    aget-char v6, p0, p1

    aput-char v6, p0, v2

    .line 1816
    aget-char v2, p0, p2

    aput-char v2, p0, v4

    move v2, p1

    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 1821
    aget-char v4, p0, v2

    if-ge v4, v0, :cond_f

    goto :goto_7

    :cond_f
    move v4, p2

    :goto_8
    add-int/lit8 v4, v4, -0x1

    .line 1822
    aget-char v6, p0, v4

    if-le v6, v5, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v6, v2, -0x1

    :cond_11
    :goto_9
    add-int/lit8 v6, v6, 0x1

    if-gt v6, v4, :cond_16

    .line 1845
    aget-char v8, p0, v6

    if-ge v8, v0, :cond_12

    .line 1847
    aget-char v9, p0, v2

    aput-char v9, p0, v6

    .line 1852
    aput-char v8, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_12
    if-le v8, v5, :cond_11

    .line 1855
    :goto_a
    aget-char v9, p0, v4

    if-le v9, v5, :cond_14

    add-int/lit8 v9, v4, -0x1

    if-ne v4, v6, :cond_13

    move v4, v9

    goto :goto_c

    :cond_13
    move v4, v9

    goto :goto_a

    .line 1860
    :cond_14
    aget-char v9, p0, v4

    if-ge v9, v0, :cond_15

    .line 1861
    aget-char v9, p0, v2

    aput-char v9, p0, v6

    .line 1862
    aget-char v9, p0, v4

    aput-char v9, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1865
    :cond_15
    aget-char v9, p0, v4

    aput-char v9, p0, v6

    .line 1871
    :goto_b
    aput-char v8, p0, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_16
    :goto_c
    add-int/lit8 v6, v2, -0x1

    .line 1877
    aget-char v8, p0, v6

    aput-char v8, p0, p1

    aput-char v0, p0, v6

    add-int/lit8 v6, v4, 0x1

    .line 1878
    aget-char v8, p0, v6

    aput-char v8, p0, p2

    aput-char v5, p0, v6

    add-int/lit8 v6, v2, -0x2

    .line 1881
    invoke-static {p0, p1, v6, p3}, Ljava8/util/DualPivotQuicksort;->sort([CIIZ)V

    add-int/lit8 p1, v4, 0x2

    .line 1882
    invoke-static {p0, p1, p2, v7}, Ljava8/util/DualPivotQuicksort;->sort([CIIZ)V

    if-ge v2, v3, :cond_1e

    if-ge v1, v4, :cond_1e

    .line 1892
    :goto_d
    aget-char p1, p0, v2

    if-ne p1, v0, :cond_17

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1896
    :cond_17
    :goto_e
    aget-char p1, p0, v4

    if-ne p1, v5, :cond_18

    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_18
    add-int/lit8 p1, v2, -0x1

    :cond_19
    :goto_f
    add-int/lit8 p1, p1, 0x1

    if-gt p1, v4, :cond_1e

    .line 1921
    aget-char p2, p0, p1

    if-ne p2, v0, :cond_1a

    .line 1923
    aget-char p3, p0, v2

    aput-char p3, p0, p1

    .line 1924
    aput-char p2, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1a
    if-ne p2, v5, :cond_19

    .line 1927
    :goto_10
    aget-char p3, p0, v4

    if-ne p3, v5, :cond_1c

    add-int/lit8 p3, v4, -0x1

    if-ne v4, p1, :cond_1b

    move v4, p3

    goto :goto_12

    :cond_1b
    move v4, p3

    goto :goto_10

    .line 1932
    :cond_1c
    aget-char p3, p0, v4

    if-ne p3, v0, :cond_1d

    .line 1933
    aget-char p3, p0, v2

    aput-char p3, p0, p1

    .line 1942
    aput-char v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1945
    :cond_1d
    aget-char p3, p0, v4

    aput-char p3, p0, p1

    .line 1947
    :goto_11
    aput-char p2, p0, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    .line 1954
    :cond_1e
    :goto_12
    invoke-static {p0, v2, v4, v7}, Ljava8/util/DualPivotQuicksort;->sort([CIIZ)V

    goto :goto_17

    .line 1961
    :cond_1f
    aget-char v0, p0, v0

    move v1, p1

    move v3, v1

    move v2, p2

    :goto_13
    if-gt v1, v2, :cond_24

    .line 1984
    aget-char v4, p0, v1

    if-ne v4, v0, :cond_20

    goto :goto_16

    .line 1987
    :cond_20
    aget-char v4, p0, v1

    if-ge v4, v0, :cond_21

    .line 1989
    aget-char v5, p0, v3

    aput-char v5, p0, v1

    .line 1990
    aput-char v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1993
    :cond_21
    :goto_14
    aget-char v5, p0, v2

    if-le v5, v0, :cond_22

    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 1996
    :cond_22
    aget-char v5, p0, v2

    if-ge v5, v0, :cond_23

    .line 1997
    aget-char v5, p0, v3

    aput-char v5, p0, v1

    .line 1998
    aget-char v5, p0, v2

    aput-char v5, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 2009
    :cond_23
    aput-char v0, p0, v1

    .line 2011
    :goto_15
    aput-char v4, p0, v2

    add-int/lit8 v2, v2, -0x1

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_24
    add-int/lit8 v3, v3, -0x1

    .line 2021
    invoke-static {p0, p1, v3, p3}, Ljava8/util/DualPivotQuicksort;->sort([CIIZ)V

    add-int/lit8 v2, v2, 0x1

    .line 2022
    invoke-static {p0, v2, p2, v7}, Ljava8/util/DualPivotQuicksort;->sort([CIIZ)V

    :goto_17
    return-void
.end method

.method static sort([CII[CII)V
    .locals 2

    sub-int v0, p2, p1

    const/16 v1, 0xc80

    if-le v0, v1, :cond_3

    const/high16 p3, 0x10000

    .line 1539
    new-array p4, p3, [I

    add-int/lit8 p5, p1, -0x1

    :goto_0
    add-int/lit8 p5, p5, 0x1

    if-gt p5, p2, :cond_0

    .line 1542
    aget-char v0, p0, p5

    aget v1, p4, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p4, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    :goto_1
    if-le p2, p1, :cond_4

    :goto_2
    add-int/lit8 p3, p3, -0x1

    .line 1545
    aget p5, p4, p3

    if-nez p5, :cond_1

    goto :goto_2

    :cond_1
    int-to-char p5, p3

    .line 1547
    aget v0, p4, p3

    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 1550
    aput-char p5, p0, p2

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    goto :goto_1

    .line 1554
    :cond_3
    invoke-static/range {p0 .. p5}, Ljava8/util/DualPivotQuicksort;->doSort([CII[CII)V

    :cond_4
    return-void
.end method

.method private static sort([DIIZ)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x2f

    if-ge v4, v5, :cond_a

    if-eqz v3, :cond_2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_9

    add-int/lit8 v4, v3, 0x1

    .line 2863
    aget-wide v5, v0, v4

    .line 2864
    :goto_1
    aget-wide v7, v0, v3

    cmpg-double v7, v5, v7

    if-gez v7, :cond_1

    add-int/lit8 v7, v3, 0x1

    .line 2865
    aget-wide v8, v0, v3

    aput-wide v8, v0, v7

    add-int/lit8 v7, v3, -0x1

    if-ne v3, v1, :cond_0

    move v3, v7

    goto :goto_2

    :cond_0
    move v3, v7

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 2870
    aput-wide v5, v0, v3

    move v3, v4

    goto :goto_0

    :cond_2
    if-lt v1, v2, :cond_3

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 2880
    aget-wide v3, v0, v1

    add-int/lit8 v5, v1, -0x1

    aget-wide v5, v0, v5

    cmpl-double v3, v3, v5

    if-gez v3, :cond_2

    :goto_3
    add-int/lit8 v3, v1, 0x1

    if-gt v3, v2, :cond_7

    .line 2891
    aget-wide v4, v0, v1

    aget-wide v6, v0, v3

    cmpg-double v8, v4, v6

    if-gez v8, :cond_4

    .line 2894
    aget-wide v6, v0, v3

    move-wide/from16 v19, v4

    move-wide v4, v6

    move-wide/from16 v6, v19

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 2896
    aget-wide v8, v0, v1

    cmpg-double v8, v4, v8

    if-gez v8, :cond_5

    add-int/lit8 v8, v1, 0x2

    .line 2897
    aget-wide v9, v0, v1

    aput-wide v9, v0, v8

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v8, v1, 0x1

    .line 2899
    aput-wide v4, v0, v8

    :goto_5
    add-int/lit8 v1, v1, -0x1

    .line 2901
    aget-wide v4, v0, v1

    cmpg-double v4, v6, v4

    if-gez v4, :cond_6

    add-int/lit8 v4, v1, 0x1

    .line 2902
    aget-wide v8, v0, v1

    aput-wide v8, v0, v4

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 2904
    aput-wide v6, v0, v1

    add-int/lit8 v1, v3, 0x1

    goto :goto_3

    .line 2906
    :cond_7
    aget-wide v3, v0, v2

    :goto_6
    add-int/lit8 v2, v2, -0x1

    .line 2908
    aget-wide v5, v0, v2

    cmpg-double v1, v3, v5

    if-gez v1, :cond_8

    add-int/lit8 v1, v2, 0x1

    .line 2909
    aget-wide v5, v0, v2

    aput-wide v5, v0, v1

    goto :goto_6

    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 2911
    aput-wide v3, v0, v2

    :cond_9
    return-void

    :cond_a
    shr-int/lit8 v5, v4, 0x3

    shr-int/lit8 v4, v4, 0x6

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    add-int v4, v1, v2

    ushr-int/lit8 v4, v4, 0x1

    sub-int v6, v4, v5

    sub-int v7, v6, v5

    add-int v8, v4, v5

    add-int/2addr v5, v8

    .line 2933
    aget-wide v9, v0, v6

    aget-wide v11, v0, v7

    cmpg-double v9, v9, v11

    if-gez v9, :cond_b

    aget-wide v9, v0, v6

    aget-wide v11, v0, v7

    aput-wide v11, v0, v6

    aput-wide v9, v0, v7

    .line 2935
    :cond_b
    aget-wide v9, v0, v4

    aget-wide v11, v0, v6

    cmpg-double v9, v9, v11

    if-gez v9, :cond_c

    aget-wide v9, v0, v4

    aget-wide v11, v0, v6

    aput-wide v11, v0, v4

    aput-wide v9, v0, v6

    .line 2936
    aget-wide v11, v0, v7

    cmpg-double v11, v9, v11

    if-gez v11, :cond_c

    aget-wide v11, v0, v7

    aput-wide v11, v0, v6

    aput-wide v9, v0, v7

    .line 2938
    :cond_c
    aget-wide v9, v0, v8

    aget-wide v11, v0, v4

    cmpg-double v9, v9, v11

    if-gez v9, :cond_d

    aget-wide v9, v0, v8

    aget-wide v11, v0, v4

    aput-wide v11, v0, v8

    aput-wide v9, v0, v4

    .line 2939
    aget-wide v11, v0, v6

    cmpg-double v11, v9, v11

    if-gez v11, :cond_d

    aget-wide v11, v0, v6

    aput-wide v11, v0, v4

    aput-wide v9, v0, v6

    .line 2940
    aget-wide v11, v0, v7

    cmpg-double v11, v9, v11

    if-gez v11, :cond_d

    aget-wide v11, v0, v7

    aput-wide v11, v0, v6

    aput-wide v9, v0, v7

    .line 2943
    :cond_d
    aget-wide v9, v0, v5

    aget-wide v11, v0, v8

    cmpg-double v9, v9, v11

    if-gez v9, :cond_e

    aget-wide v9, v0, v5

    aget-wide v11, v0, v8

    aput-wide v11, v0, v5

    aput-wide v9, v0, v8

    .line 2944
    aget-wide v11, v0, v4

    cmpg-double v11, v9, v11

    if-gez v11, :cond_e

    aget-wide v11, v0, v4

    aput-wide v11, v0, v8

    aput-wide v9, v0, v4

    .line 2945
    aget-wide v11, v0, v6

    cmpg-double v11, v9, v11

    if-gez v11, :cond_e

    aget-wide v11, v0, v6

    aput-wide v11, v0, v4

    aput-wide v9, v0, v6

    .line 2946
    aget-wide v11, v0, v7

    cmpg-double v11, v9, v11

    if-gez v11, :cond_e

    aget-wide v11, v0, v7

    aput-wide v11, v0, v6

    aput-wide v9, v0, v7

    .line 2955
    :cond_e
    aget-wide v9, v0, v7

    aget-wide v11, v0, v6

    cmpl-double v9, v9, v11

    const/4 v10, 0x0

    if-eqz v9, :cond_1f

    aget-wide v11, v0, v6

    aget-wide v13, v0, v4

    cmpl-double v9, v11, v13

    if-eqz v9, :cond_1f

    aget-wide v11, v0, v4

    aget-wide v13, v0, v8

    cmpl-double v9, v11, v13

    if-eqz v9, :cond_1f

    aget-wide v11, v0, v8

    aget-wide v13, v0, v5

    cmpl-double v9, v11, v13

    if-eqz v9, :cond_1f

    .line 2961
    aget-wide v11, v0, v6

    .line 2962
    aget-wide v13, v0, v8

    .line 2970
    aget-wide v15, v0, v1

    aput-wide v15, v0, v6

    .line 2971
    aget-wide v15, v0, v2

    aput-wide v15, v0, v8

    move v4, v1

    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 2976
    aget-wide v8, v0, v4

    cmpg-double v6, v8, v11

    if-gez v6, :cond_f

    goto :goto_7

    :cond_f
    move v6, v2

    :goto_8
    add-int/lit8 v6, v6, -0x1

    .line 2977
    aget-wide v8, v0, v6

    cmpl-double v8, v8, v13

    if-lez v8, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v8, v4, -0x1

    :cond_11
    :goto_9
    add-int/lit8 v8, v8, 0x1

    if-gt v8, v6, :cond_16

    .line 3000
    aget-wide v15, v0, v8

    cmpg-double v9, v15, v11

    if-gez v9, :cond_12

    .line 3002
    aget-wide v17, v0, v4

    aput-wide v17, v0, v8

    .line 3007
    aput-wide v15, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_12
    cmpl-double v9, v15, v13

    if-lez v9, :cond_11

    .line 3010
    :goto_a
    aget-wide v17, v0, v6

    cmpl-double v9, v17, v13

    if-lez v9, :cond_14

    add-int/lit8 v9, v6, -0x1

    if-ne v6, v8, :cond_13

    move v6, v9

    goto :goto_c

    :cond_13
    move v6, v9

    goto :goto_a

    .line 3015
    :cond_14
    aget-wide v17, v0, v6

    cmpg-double v9, v17, v11

    if-gez v9, :cond_15

    .line 3016
    aget-wide v17, v0, v4

    aput-wide v17, v0, v8

    .line 3017
    aget-wide v17, v0, v6

    aput-wide v17, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 3020
    :cond_15
    aget-wide v17, v0, v6

    aput-wide v17, v0, v8

    .line 3026
    :goto_b
    aput-wide v15, v0, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    :cond_16
    :goto_c
    add-int/lit8 v8, v4, -0x1

    .line 3032
    aget-wide v15, v0, v8

    aput-wide v15, v0, v1

    aput-wide v11, v0, v8

    add-int/lit8 v8, v6, 0x1

    .line 3033
    aget-wide v15, v0, v8

    aput-wide v15, v0, v2

    aput-wide v13, v0, v8

    add-int/lit8 v8, v4, -0x2

    .line 3036
    invoke-static {v0, v1, v8, v3}, Ljava8/util/DualPivotQuicksort;->sort([DIIZ)V

    add-int/lit8 v1, v6, 0x2

    .line 3037
    invoke-static {v0, v1, v2, v10}, Ljava8/util/DualPivotQuicksort;->sort([DIIZ)V

    if-ge v4, v7, :cond_1e

    if-ge v5, v6, :cond_1e

    .line 3047
    :goto_d
    aget-wide v1, v0, v4

    cmpl-double v1, v1, v11

    if-nez v1, :cond_17

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 3051
    :cond_17
    :goto_e
    aget-wide v1, v0, v6

    cmpl-double v1, v1, v13

    if-nez v1, :cond_18

    add-int/lit8 v6, v6, -0x1

    goto :goto_e

    :cond_18
    add-int/lit8 v1, v4, -0x1

    :cond_19
    :goto_f
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v6, :cond_1e

    .line 3076
    aget-wide v2, v0, v1

    cmpl-double v5, v2, v11

    if-nez v5, :cond_1a

    .line 3078
    aget-wide v7, v0, v4

    aput-wide v7, v0, v1

    .line 3079
    aput-wide v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1a
    cmpl-double v5, v2, v13

    if-nez v5, :cond_19

    .line 3082
    :goto_10
    aget-wide v7, v0, v6

    cmpl-double v5, v7, v13

    if-nez v5, :cond_1c

    add-int/lit8 v5, v6, -0x1

    if-ne v6, v1, :cond_1b

    move v6, v5

    goto :goto_12

    :cond_1b
    move v6, v5

    goto :goto_10

    .line 3087
    :cond_1c
    aget-wide v7, v0, v6

    cmpl-double v5, v7, v11

    if-nez v5, :cond_1d

    .line 3088
    aget-wide v7, v0, v4

    aput-wide v7, v0, v1

    .line 3097
    aget-wide v7, v0, v6

    aput-wide v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 3100
    :cond_1d
    aget-wide v7, v0, v6

    aput-wide v7, v0, v1

    .line 3102
    :goto_11
    aput-wide v2, v0, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_f

    .line 3109
    :cond_1e
    :goto_12
    invoke-static {v0, v4, v6, v10}, Ljava8/util/DualPivotQuicksort;->sort([DIIZ)V

    goto :goto_17

    .line 3116
    :cond_1f
    aget-wide v4, v0, v4

    move v6, v1

    move v8, v6

    move v7, v2

    :goto_13
    if-gt v6, v7, :cond_24

    .line 3139
    aget-wide v11, v0, v6

    cmpl-double v9, v11, v4

    if-nez v9, :cond_20

    goto :goto_16

    .line 3142
    :cond_20
    aget-wide v11, v0, v6

    cmpg-double v9, v11, v4

    if-gez v9, :cond_21

    .line 3144
    aget-wide v13, v0, v8

    aput-wide v13, v0, v6

    .line 3145
    aput-wide v11, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 3148
    :cond_21
    :goto_14
    aget-wide v13, v0, v7

    cmpl-double v9, v13, v4

    if-lez v9, :cond_22

    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    .line 3151
    :cond_22
    aget-wide v13, v0, v7

    cmpg-double v9, v13, v4

    if-gez v9, :cond_23

    .line 3152
    aget-wide v13, v0, v8

    aput-wide v13, v0, v6

    .line 3153
    aget-wide v13, v0, v7

    aput-wide v13, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 3164
    :cond_23
    aget-wide v13, v0, v7

    aput-wide v13, v0, v6

    .line 3166
    :goto_15
    aput-wide v11, v0, v7

    add-int/lit8 v7, v7, -0x1

    :goto_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_24
    add-int/lit8 v8, v8, -0x1

    .line 3176
    invoke-static {v0, v1, v8, v3}, Ljava8/util/DualPivotQuicksort;->sort([DIIZ)V

    add-int/lit8 v7, v7, 0x1

    .line 3177
    invoke-static {v0, v7, v2, v10}, Ljava8/util/DualPivotQuicksort;->sort([DIIZ)V

    :goto_17
    return-void
.end method

.method static sort([DII[DII)V
    .locals 7

    :goto_0
    if-gt p1, p2, :cond_0

    .line 2640
    aget-wide v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    move v6, p2

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_2

    .line 2644
    aget-wide v0, p0, p2

    cmpl-double v2, v0, v0

    if-eqz v2, :cond_1

    .line 2646
    aget-wide v2, p0, v6

    aput-wide v2, p0, p2

    .line 2647
    aput-wide v0, p0, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, v6

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 2655
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->doSort([DII[DII)V

    move p2, v6

    :goto_2
    const-wide/16 p3, 0x0

    if-ge p1, p2, :cond_4

    add-int p5, p1, p2

    ushr-int/lit8 p5, p5, 0x1

    .line 2667
    aget-wide v0, p0, p5

    cmpg-double p3, v0, p3

    if-gez p3, :cond_3

    add-int/lit8 p5, p5, 0x1

    move p1, p5

    goto :goto_2

    :cond_3
    move p2, p5

    goto :goto_2

    :cond_4
    :goto_3
    const-wide/16 v0, 0x0

    if-gt p1, v6, :cond_5

    .line 2679
    aget-wide v2, p0, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-gez p2, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 p2, p1, -0x1

    :cond_6
    :goto_4
    add-int/lit8 p1, p1, 0x1

    if-gt p1, v6, :cond_8

    .line 2705
    aget-wide v2, p0, p1

    cmpl-double p5, v2, p3

    if-eqz p5, :cond_7

    goto :goto_5

    .line 2709
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmp-long p5, v2, v0

    if-gez p5, :cond_6

    .line 2710
    aput-wide p3, p0, p1

    add-int/lit8 p2, p2, 0x1

    const-wide/high16 v2, -0x8000000000000000L

    .line 2711
    aput-wide v2, p0, p2

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method private static sort([FIIZ)V
    .locals 11

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2f

    if-ge v0, v1, :cond_a

    if-eqz p3, :cond_2

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_9

    add-int/lit8 v0, p3, 0x1

    .line 2306
    aget v1, p0, v0

    .line 2307
    :goto_1
    aget v2, p0, p3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, p3, 0x1

    .line 2308
    aget v3, p0, p3

    aput v3, p0, v2

    add-int/lit8 v2, p3, -0x1

    if-ne p3, p1, :cond_0

    move p3, v2

    goto :goto_2

    :cond_0
    move p3, v2

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 2313
    aput v1, p0, p3

    move p3, v0

    goto :goto_0

    :cond_2
    if-lt p1, p2, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 2323
    aget p3, p0, p1

    add-int/lit8 v0, p1, -0x1

    aget v0, p0, v0

    cmpl-float p3, p3, v0

    if-gez p3, :cond_2

    :goto_3
    add-int/lit8 p3, p1, 0x1

    if-gt p3, p2, :cond_7

    .line 2334
    aget v0, p0, p1

    aget v1, p0, p3

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    .line 2337
    aget v1, p0, p3

    move v10, v1

    move v1, v0

    move v0, v10

    :cond_4
    :goto_4
    add-int/lit8 p1, p1, -0x1

    .line 2339
    aget v2, p0, p1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    add-int/lit8 v2, p1, 0x2

    .line 2340
    aget v3, p0, p1

    aput v3, p0, v2

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, p1, 0x1

    .line 2342
    aput v0, p0, v2

    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 2344
    aget v0, p0, p1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_6

    add-int/lit8 v0, p1, 0x1

    .line 2345
    aget v2, p0, p1

    aput v2, p0, v0

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 2347
    aput v1, p0, p1

    add-int/lit8 p1, p3, 0x1

    goto :goto_3

    .line 2349
    :cond_7
    aget p1, p0, p2

    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 2351
    aget p3, p0, p2

    cmpg-float p3, p1, p3

    if-gez p3, :cond_8

    add-int/lit8 p3, p2, 0x1

    .line 2352
    aget v0, p0, p2

    aput v0, p0, p3

    goto :goto_6

    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 2354
    aput p1, p0, p2

    :cond_9
    return-void

    :cond_a
    shr-int/lit8 v1, v0, 0x3

    shr-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    sub-int v2, v0, v1

    sub-int v3, v2, v1

    add-int v4, v0, v1

    add-int/2addr v1, v4

    .line 2376
    aget v5, p0, v2

    aget v6, p0, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b

    aget v5, p0, v2

    aget v6, p0, v3

    aput v6, p0, v2

    aput v5, p0, v3

    .line 2378
    :cond_b
    aget v5, p0, v0

    aget v6, p0, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_c

    aget v5, p0, v0

    aget v6, p0, v2

    aput v6, p0, v0

    aput v5, p0, v2

    .line 2379
    aget v6, p0, v3

    cmpg-float v6, v5, v6

    if-gez v6, :cond_c

    aget v6, p0, v3

    aput v6, p0, v2

    aput v5, p0, v3

    .line 2381
    :cond_c
    aget v5, p0, v4

    aget v6, p0, v0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_d

    aget v5, p0, v4

    aget v6, p0, v0

    aput v6, p0, v4

    aput v5, p0, v0

    .line 2382
    aget v6, p0, v2

    cmpg-float v6, v5, v6

    if-gez v6, :cond_d

    aget v6, p0, v2

    aput v6, p0, v0

    aput v5, p0, v2

    .line 2383
    aget v6, p0, v3

    cmpg-float v6, v5, v6

    if-gez v6, :cond_d

    aget v6, p0, v3

    aput v6, p0, v2

    aput v5, p0, v3

    .line 2386
    :cond_d
    aget v5, p0, v1

    aget v6, p0, v4

    cmpg-float v5, v5, v6

    if-gez v5, :cond_e

    aget v5, p0, v1

    aget v6, p0, v4

    aput v6, p0, v1

    aput v5, p0, v4

    .line 2387
    aget v6, p0, v0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_e

    aget v6, p0, v0

    aput v6, p0, v4

    aput v5, p0, v0

    .line 2388
    aget v6, p0, v2

    cmpg-float v6, v5, v6

    if-gez v6, :cond_e

    aget v6, p0, v2

    aput v6, p0, v0

    aput v5, p0, v2

    .line 2389
    aget v6, p0, v3

    cmpg-float v6, v5, v6

    if-gez v6, :cond_e

    aget v6, p0, v3

    aput v6, p0, v2

    aput v5, p0, v3

    .line 2398
    :cond_e
    aget v5, p0, v3

    aget v6, p0, v2

    cmpl-float v5, v5, v6

    const/4 v6, 0x0

    if-eqz v5, :cond_1f

    aget v5, p0, v2

    aget v7, p0, v0

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_1f

    aget v5, p0, v0

    aget v7, p0, v4

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_1f

    aget v5, p0, v4

    aget v7, p0, v1

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_1f

    .line 2404
    aget v0, p0, v2

    .line 2405
    aget v5, p0, v4

    .line 2413
    aget v7, p0, p1

    aput v7, p0, v2

    .line 2414
    aget v2, p0, p2

    aput v2, p0, v4

    move v2, p1

    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 2419
    aget v4, p0, v2

    cmpg-float v4, v4, v0

    if-gez v4, :cond_f

    goto :goto_7

    :cond_f
    move v4, p2

    :goto_8
    add-int/lit8 v4, v4, -0x1

    .line 2420
    aget v7, p0, v4

    cmpl-float v7, v7, v5

    if-lez v7, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v7, v2, -0x1

    :cond_11
    :goto_9
    add-int/lit8 v7, v7, 0x1

    if-gt v7, v4, :cond_16

    .line 2443
    aget v8, p0, v7

    cmpg-float v9, v8, v0

    if-gez v9, :cond_12

    .line 2445
    aget v9, p0, v2

    aput v9, p0, v7

    .line 2450
    aput v8, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_12
    cmpl-float v9, v8, v5

    if-lez v9, :cond_11

    .line 2453
    :goto_a
    aget v9, p0, v4

    cmpl-float v9, v9, v5

    if-lez v9, :cond_14

    add-int/lit8 v9, v4, -0x1

    if-ne v4, v7, :cond_13

    move v4, v9

    goto :goto_c

    :cond_13
    move v4, v9

    goto :goto_a

    .line 2458
    :cond_14
    aget v9, p0, v4

    cmpg-float v9, v9, v0

    if-gez v9, :cond_15

    .line 2459
    aget v9, p0, v2

    aput v9, p0, v7

    .line 2460
    aget v9, p0, v4

    aput v9, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2463
    :cond_15
    aget v9, p0, v4

    aput v9, p0, v7

    .line 2469
    :goto_b
    aput v8, p0, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_16
    :goto_c
    add-int/lit8 v7, v2, -0x1

    .line 2475
    aget v8, p0, v7

    aput v8, p0, p1

    aput v0, p0, v7

    add-int/lit8 v7, v4, 0x1

    .line 2476
    aget v8, p0, v7

    aput v8, p0, p2

    aput v5, p0, v7

    add-int/lit8 v7, v2, -0x2

    .line 2479
    invoke-static {p0, p1, v7, p3}, Ljava8/util/DualPivotQuicksort;->sort([FIIZ)V

    add-int/lit8 p1, v4, 0x2

    .line 2480
    invoke-static {p0, p1, p2, v6}, Ljava8/util/DualPivotQuicksort;->sort([FIIZ)V

    if-ge v2, v3, :cond_1e

    if-ge v1, v4, :cond_1e

    .line 2490
    :goto_d
    aget p1, p0, v2

    cmpl-float p1, p1, v0

    if-nez p1, :cond_17

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2494
    :cond_17
    :goto_e
    aget p1, p0, v4

    cmpl-float p1, p1, v5

    if-nez p1, :cond_18

    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_18
    add-int/lit8 p1, v2, -0x1

    :cond_19
    :goto_f
    add-int/lit8 p1, p1, 0x1

    if-gt p1, v4, :cond_1e

    .line 2519
    aget p2, p0, p1

    cmpl-float p3, p2, v0

    if-nez p3, :cond_1a

    .line 2521
    aget p3, p0, v2

    aput p3, p0, p1

    .line 2522
    aput p2, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1a
    cmpl-float p3, p2, v5

    if-nez p3, :cond_19

    .line 2525
    :goto_10
    aget p3, p0, v4

    cmpl-float p3, p3, v5

    if-nez p3, :cond_1c

    add-int/lit8 p3, v4, -0x1

    if-ne v4, p1, :cond_1b

    move v4, p3

    goto :goto_12

    :cond_1b
    move v4, p3

    goto :goto_10

    .line 2530
    :cond_1c
    aget p3, p0, v4

    cmpl-float p3, p3, v0

    if-nez p3, :cond_1d

    .line 2531
    aget p3, p0, v2

    aput p3, p0, p1

    .line 2540
    aget p3, p0, v4

    aput p3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2543
    :cond_1d
    aget p3, p0, v4

    aput p3, p0, p1

    .line 2545
    :goto_11
    aput p2, p0, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    .line 2552
    :cond_1e
    :goto_12
    invoke-static {p0, v2, v4, v6}, Ljava8/util/DualPivotQuicksort;->sort([FIIZ)V

    goto :goto_17

    .line 2559
    :cond_1f
    aget v0, p0, v0

    move v1, p1

    move v3, v1

    move v2, p2

    :goto_13
    if-gt v1, v2, :cond_24

    .line 2582
    aget v4, p0, v1

    cmpl-float v4, v4, v0

    if-nez v4, :cond_20

    goto :goto_16

    .line 2585
    :cond_20
    aget v4, p0, v1

    cmpg-float v5, v4, v0

    if-gez v5, :cond_21

    .line 2587
    aget v5, p0, v3

    aput v5, p0, v1

    .line 2588
    aput v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2591
    :cond_21
    :goto_14
    aget v5, p0, v2

    cmpl-float v5, v5, v0

    if-lez v5, :cond_22

    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 2594
    :cond_22
    aget v5, p0, v2

    cmpg-float v5, v5, v0

    if-gez v5, :cond_23

    .line 2595
    aget v5, p0, v3

    aput v5, p0, v1

    .line 2596
    aget v5, p0, v2

    aput v5, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 2607
    :cond_23
    aget v5, p0, v2

    aput v5, p0, v1

    .line 2609
    :goto_15
    aput v4, p0, v2

    add-int/lit8 v2, v2, -0x1

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_24
    add-int/lit8 v3, v3, -0x1

    .line 2619
    invoke-static {p0, p1, v3, p3}, Ljava8/util/DualPivotQuicksort;->sort([FIIZ)V

    add-int/lit8 v2, v2, 0x1

    .line 2620
    invoke-static {p0, v2, p2, v6}, Ljava8/util/DualPivotQuicksort;->sort([FIIZ)V

    :goto_17
    return-void
.end method

.method static sort([FII[FII)V
    .locals 7

    :goto_0
    if-gt p1, p2, :cond_0

    .line 2083
    aget v0, p0, p2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    move v6, p2

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_2

    .line 2087
    aget v0, p0, p2

    cmpl-float v1, v0, v0

    if-eqz v1, :cond_1

    .line 2089
    aget v1, p0, v6

    aput v1, p0, p2

    .line 2090
    aput v0, p0, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, v6

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 2098
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->doSort([FII[FII)V

    move p2, v6

    :goto_2
    const/4 p3, 0x0

    if-ge p1, p2, :cond_4

    add-int p4, p1, p2

    ushr-int/lit8 p4, p4, 0x1

    .line 2110
    aget p5, p0, p4

    cmpg-float p3, p5, p3

    if-gez p3, :cond_3

    add-int/lit8 p4, p4, 0x1

    move p1, p4

    goto :goto_2

    :cond_3
    move p2, p4

    goto :goto_2

    :cond_4
    :goto_3
    if-gt p1, v6, :cond_5

    .line 2122
    aget p2, p0, p1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    if-gez p2, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 p2, p1, -0x1

    :cond_6
    :goto_4
    add-int/lit8 p1, p1, 0x1

    if-gt p1, v6, :cond_8

    .line 2148
    aget p4, p0, p1

    cmpl-float p5, p4, p3

    if-eqz p5, :cond_7

    goto :goto_5

    .line 2152
    :cond_7
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p4

    if-gez p4, :cond_6

    .line 2153
    aput p3, p0, p1

    add-int/lit8 p2, p2, 0x1

    const/high16 p4, -0x80000000

    .line 2154
    aput p4, p0, p2

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method private static sort([IIIZ)V
    .locals 11

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2f

    if-ge v0, v1, :cond_a

    if-eqz p3, :cond_2

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_9

    add-int/lit8 v0, p3, 0x1

    .line 238
    aget v1, p0, v0

    .line 239
    :goto_1
    aget v2, p0, p3

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, p3, 0x1

    .line 240
    aget v3, p0, p3

    aput v3, p0, v2

    add-int/lit8 v2, p3, -0x1

    if-ne p3, p1, :cond_0

    move p3, v2

    goto :goto_2

    :cond_0
    move p3, v2

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 245
    aput v1, p0, p3

    move p3, v0

    goto :goto_0

    :cond_2
    if-lt p1, p2, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 255
    aget p3, p0, p1

    add-int/lit8 v0, p1, -0x1

    aget v0, p0, v0

    if-ge p3, v0, :cond_2

    :goto_3
    add-int/lit8 p3, p1, 0x1

    if-gt p3, p2, :cond_7

    .line 266
    aget v0, p0, p1

    aget v1, p0, p3

    if-ge v0, v1, :cond_4

    .line 269
    aget v1, p0, p3

    move v10, v1

    move v1, v0

    move v0, v10

    :cond_4
    :goto_4
    add-int/lit8 p1, p1, -0x1

    .line 271
    aget v2, p0, p1

    if-ge v0, v2, :cond_5

    add-int/lit8 v2, p1, 0x2

    .line 272
    aget v3, p0, p1

    aput v3, p0, v2

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, p1, 0x1

    .line 274
    aput v0, p0, v2

    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 276
    aget v0, p0, p1

    if-ge v1, v0, :cond_6

    add-int/lit8 v0, p1, 0x1

    .line 277
    aget v2, p0, p1

    aput v2, p0, v0

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 279
    aput v1, p0, p1

    add-int/lit8 p1, p3, 0x1

    goto :goto_3

    .line 281
    :cond_7
    aget p1, p0, p2

    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 283
    aget p3, p0, p2

    if-ge p1, p3, :cond_8

    add-int/lit8 p3, p2, 0x1

    .line 284
    aget v0, p0, p2

    aput v0, p0, p3

    goto :goto_6

    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 286
    aput p1, p0, p2

    :cond_9
    return-void

    :cond_a
    shr-int/lit8 v1, v0, 0x3

    shr-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    sub-int v2, v0, v1

    sub-int v3, v2, v1

    add-int v4, v0, v1

    add-int/2addr v1, v4

    .line 308
    aget v5, p0, v2

    aget v6, p0, v3

    if-ge v5, v6, :cond_b

    aget v5, p0, v2

    aget v6, p0, v3

    aput v6, p0, v2

    aput v5, p0, v3

    .line 310
    :cond_b
    aget v5, p0, v0

    aget v6, p0, v2

    if-ge v5, v6, :cond_c

    aget v5, p0, v0

    aget v6, p0, v2

    aput v6, p0, v0

    aput v5, p0, v2

    .line 311
    aget v6, p0, v3

    if-ge v5, v6, :cond_c

    aget v6, p0, v3

    aput v6, p0, v2

    aput v5, p0, v3

    .line 313
    :cond_c
    aget v5, p0, v4

    aget v6, p0, v0

    if-ge v5, v6, :cond_d

    aget v5, p0, v4

    aget v6, p0, v0

    aput v6, p0, v4

    aput v5, p0, v0

    .line 314
    aget v6, p0, v2

    if-ge v5, v6, :cond_d

    aget v6, p0, v2

    aput v6, p0, v0

    aput v5, p0, v2

    .line 315
    aget v6, p0, v3

    if-ge v5, v6, :cond_d

    aget v6, p0, v3

    aput v6, p0, v2

    aput v5, p0, v3

    .line 318
    :cond_d
    aget v5, p0, v1

    aget v6, p0, v4

    if-ge v5, v6, :cond_e

    aget v5, p0, v1

    aget v6, p0, v4

    aput v6, p0, v1

    aput v5, p0, v4

    .line 319
    aget v6, p0, v0

    if-ge v5, v6, :cond_e

    aget v6, p0, v0

    aput v6, p0, v4

    aput v5, p0, v0

    .line 320
    aget v6, p0, v2

    if-ge v5, v6, :cond_e

    aget v6, p0, v2

    aput v6, p0, v0

    aput v5, p0, v2

    .line 321
    aget v6, p0, v3

    if-ge v5, v6, :cond_e

    aget v6, p0, v3

    aput v6, p0, v2

    aput v5, p0, v3

    .line 330
    :cond_e
    aget v5, p0, v3

    aget v6, p0, v2

    const/4 v7, 0x0

    if-eq v5, v6, :cond_1f

    aget v5, p0, v2

    aget v6, p0, v0

    if-eq v5, v6, :cond_1f

    aget v5, p0, v0

    aget v6, p0, v4

    if-eq v5, v6, :cond_1f

    aget v5, p0, v4

    aget v6, p0, v1

    if-eq v5, v6, :cond_1f

    .line 336
    aget v0, p0, v2

    .line 337
    aget v5, p0, v4

    .line 345
    aget v6, p0, p1

    aput v6, p0, v2

    .line 346
    aget v2, p0, p2

    aput v2, p0, v4

    move v2, p1

    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 351
    aget v4, p0, v2

    if-ge v4, v0, :cond_f

    goto :goto_7

    :cond_f
    move v4, p2

    :goto_8
    add-int/lit8 v4, v4, -0x1

    .line 352
    aget v6, p0, v4

    if-le v6, v5, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v6, v2, -0x1

    :cond_11
    :goto_9
    add-int/lit8 v6, v6, 0x1

    if-gt v6, v4, :cond_16

    .line 375
    aget v8, p0, v6

    if-ge v8, v0, :cond_12

    .line 377
    aget v9, p0, v2

    aput v9, p0, v6

    .line 382
    aput v8, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_12
    if-le v8, v5, :cond_11

    .line 385
    :goto_a
    aget v9, p0, v4

    if-le v9, v5, :cond_14

    add-int/lit8 v9, v4, -0x1

    if-ne v4, v6, :cond_13

    move v4, v9

    goto :goto_c

    :cond_13
    move v4, v9

    goto :goto_a

    .line 390
    :cond_14
    aget v9, p0, v4

    if-ge v9, v0, :cond_15

    .line 391
    aget v9, p0, v2

    aput v9, p0, v6

    .line 392
    aget v9, p0, v4

    aput v9, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 395
    :cond_15
    aget v9, p0, v4

    aput v9, p0, v6

    .line 401
    :goto_b
    aput v8, p0, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_16
    :goto_c
    add-int/lit8 v6, v2, -0x1

    .line 407
    aget v8, p0, v6

    aput v8, p0, p1

    aput v0, p0, v6

    add-int/lit8 v6, v4, 0x1

    .line 408
    aget v8, p0, v6

    aput v8, p0, p2

    aput v5, p0, v6

    add-int/lit8 v6, v2, -0x2

    .line 411
    invoke-static {p0, p1, v6, p3}, Ljava8/util/DualPivotQuicksort;->sort([IIIZ)V

    add-int/lit8 p1, v4, 0x2

    .line 412
    invoke-static {p0, p1, p2, v7}, Ljava8/util/DualPivotQuicksort;->sort([IIIZ)V

    if-ge v2, v3, :cond_1e

    if-ge v1, v4, :cond_1e

    .line 422
    :goto_d
    aget p1, p0, v2

    if-ne p1, v0, :cond_17

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 426
    :cond_17
    :goto_e
    aget p1, p0, v4

    if-ne p1, v5, :cond_18

    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_18
    add-int/lit8 p1, v2, -0x1

    :cond_19
    :goto_f
    add-int/lit8 p1, p1, 0x1

    if-gt p1, v4, :cond_1e

    .line 451
    aget p2, p0, p1

    if-ne p2, v0, :cond_1a

    .line 453
    aget p3, p0, v2

    aput p3, p0, p1

    .line 454
    aput p2, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1a
    if-ne p2, v5, :cond_19

    .line 457
    :goto_10
    aget p3, p0, v4

    if-ne p3, v5, :cond_1c

    add-int/lit8 p3, v4, -0x1

    if-ne v4, p1, :cond_1b

    move v4, p3

    goto :goto_12

    :cond_1b
    move v4, p3

    goto :goto_10

    .line 462
    :cond_1c
    aget p3, p0, v4

    if-ne p3, v0, :cond_1d

    .line 463
    aget p3, p0, v2

    aput p3, p0, p1

    .line 472
    aput v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 475
    :cond_1d
    aget p3, p0, v4

    aput p3, p0, p1

    .line 477
    :goto_11
    aput p2, p0, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    .line 484
    :cond_1e
    :goto_12
    invoke-static {p0, v2, v4, v7}, Ljava8/util/DualPivotQuicksort;->sort([IIIZ)V

    goto :goto_17

    .line 491
    :cond_1f
    aget v0, p0, v0

    move v1, p1

    move v3, v1

    move v2, p2

    :goto_13
    if-gt v1, v2, :cond_24

    .line 514
    aget v4, p0, v1

    if-ne v4, v0, :cond_20

    goto :goto_16

    .line 517
    :cond_20
    aget v4, p0, v1

    if-ge v4, v0, :cond_21

    .line 519
    aget v5, p0, v3

    aput v5, p0, v1

    .line 520
    aput v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 523
    :cond_21
    :goto_14
    aget v5, p0, v2

    if-le v5, v0, :cond_22

    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 526
    :cond_22
    aget v5, p0, v2

    if-ge v5, v0, :cond_23

    .line 527
    aget v5, p0, v3

    aput v5, p0, v1

    .line 528
    aget v5, p0, v2

    aput v5, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 539
    :cond_23
    aput v0, p0, v1

    .line 541
    :goto_15
    aput v4, p0, v2

    add-int/lit8 v2, v2, -0x1

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_24
    add-int/lit8 v3, v3, -0x1

    .line 551
    invoke-static {p0, p1, v3, p3}, Ljava8/util/DualPivotQuicksort;->sort([IIIZ)V

    add-int/lit8 v2, v2, 0x1

    .line 552
    invoke-static {p0, v2, p2, v7}, Ljava8/util/DualPivotQuicksort;->sort([IIIZ)V

    :goto_17
    return-void
.end method

.method static sort([III[III)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    sub-int v4, v2, v1

    const/4 v5, 0x1

    const/16 v6, 0x11e

    if-ge v4, v6, :cond_0

    .line 105
    invoke-static {v0, v1, v2, v5}, Ljava8/util/DualPivotQuicksort;->sort([IIIZ)V

    return-void

    :cond_0
    const/16 v4, 0x44

    .line 113
    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v1, v4, v6

    move v7, v1

    move v8, v6

    :goto_0
    if-ge v7, v2, :cond_8

    :goto_1
    if-ge v7, v2, :cond_1

    .line 119
    aget v9, v0, v7

    add-int/lit8 v10, v7, 0x1

    aget v11, v0, v10

    if-ne v9, v11, :cond_1

    move v7, v10

    goto :goto_1

    :cond_1
    if-ne v7, v2, :cond_2

    goto :goto_5

    .line 122
    :cond_2
    aget v9, v0, v7

    add-int/lit8 v10, v7, 0x1

    aget v11, v0, v10

    if-ge v9, v11, :cond_3

    :goto_2
    add-int/2addr v7, v5

    if-gt v7, v2, :cond_5

    add-int/lit8 v9, v7, -0x1

    .line 123
    aget v9, v0, v9

    aget v10, v0, v7

    if-gt v9, v10, :cond_5

    goto :goto_2

    .line 124
    :cond_3
    aget v9, v0, v7

    aget v10, v0, v10

    if-le v9, v10, :cond_5

    :goto_3
    add-int/2addr v7, v5

    if-gt v7, v2, :cond_4

    add-int/lit8 v9, v7, -0x1

    .line 125
    aget v9, v0, v9

    aget v10, v0, v7

    if-lt v9, v10, :cond_4

    goto :goto_3

    .line 127
    :cond_4
    aget v9, v4, v8

    sub-int/2addr v9, v5

    move v10, v7

    :goto_4
    add-int/2addr v9, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_5

    .line 128
    aget v11, v0, v9

    aget v12, v0, v10

    aput v12, v0, v9

    aput v11, v0, v10

    goto :goto_4

    .line 134
    :cond_5
    aget v9, v4, v8

    if-le v9, v1, :cond_6

    aget v9, v4, v8

    aget v9, v0, v9

    aget v10, v4, v8

    sub-int/2addr v10, v5

    aget v10, v0, v10

    if-lt v9, v10, :cond_6

    add-int/lit8 v8, v8, -0x1

    :cond_6
    add-int/2addr v8, v5

    const/16 v9, 0x43

    if-ne v8, v9, :cond_7

    .line 143
    invoke-static {v0, v1, v2, v5}, Ljava8/util/DualPivotQuicksort;->sort([IIIZ)V

    return-void

    .line 117
    :cond_7
    aput v7, v4, v8

    goto :goto_0

    :cond_8
    :goto_5
    if-nez v8, :cond_9

    return-void

    :cond_9
    if-ne v8, v5, :cond_a

    .line 155
    aget v7, v4, v8

    if-le v7, v2, :cond_a

    return-void

    :cond_a
    add-int/2addr v2, v5

    .line 162
    aget v7, v4, v8

    if-ge v7, v2, :cond_b

    add-int/lit8 v8, v8, 0x1

    .line 167
    aput v2, v4, v8

    :cond_b
    move v7, v5

    move v9, v6

    :goto_6
    shl-int/2addr v7, v5

    if-ge v7, v8, :cond_c

    xor-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    goto :goto_6

    :cond_c
    sub-int v7, v2, v1

    if-eqz v3, :cond_e

    move/from16 v10, p5

    if-lt v10, v7, :cond_e

    add-int v10, p4, v7

    .line 178
    array-length v11, v3

    if-le v10, v11, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v10, p4

    goto :goto_8

    .line 179
    :cond_e
    :goto_7
    new-array v3, v7, [I

    move v10, v6

    :goto_8
    if-nez v9, :cond_f

    .line 183
    invoke-static {v0, v1, v3, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v10, v1

    move v10, v6

    move-object/from16 v17, v3

    move-object v3, v0

    move-object/from16 v0, v17

    goto :goto_9

    :cond_f
    sub-int/2addr v10, v1

    move v1, v6

    :goto_9
    if-le v8, v5, :cond_16

    const/4 v7, 0x2

    move v9, v6

    :goto_a
    if-gt v7, v8, :cond_13

    .line 197
    aget v11, v4, v7

    add-int/lit8 v12, v7, -0x1

    aget v12, v4, v12

    add-int/lit8 v13, v7, -0x2

    .line 198
    aget v13, v4, v13

    move v14, v12

    move v15, v13

    :goto_b
    if-ge v13, v11, :cond_12

    if-ge v14, v11, :cond_11

    if-ge v15, v12, :cond_10

    add-int v16, v15, v1

    .line 199
    aget v5, v0, v16

    add-int v16, v14, v1

    aget v6, v0, v16

    if-gt v5, v6, :cond_10

    goto :goto_c

    :cond_10
    add-int v5, v13, v10

    add-int/lit8 v6, v14, 0x1

    add-int/2addr v14, v1

    .line 202
    aget v14, v0, v14

    aput v14, v3, v5

    move v14, v6

    goto :goto_d

    :cond_11
    :goto_c
    add-int v5, v13, v10

    add-int/lit8 v6, v15, 0x1

    add-int/2addr v15, v1

    .line 200
    aget v15, v0, v15

    aput v15, v3, v5

    move v15, v6

    :goto_d
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_b

    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 205
    aput v11, v4, v9

    add-int/lit8 v7, v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_a

    :cond_13
    and-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_15

    add-int/lit8 v8, v8, -0x1

    .line 208
    aget v5, v4, v8

    move v6, v2

    :goto_e
    add-int/lit8 v6, v6, -0x1

    if-lt v6, v5, :cond_14

    add-int v7, v6, v10

    add-int v8, v6, v1

    .line 209
    aget v8, v0, v8

    aput v8, v3, v7

    goto :goto_e

    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 211
    aput v2, v4, v9

    move v8, v9

    goto :goto_f

    :cond_15
    move v8, v9

    :goto_f
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v17, v3

    move-object v3, v0

    move-object/from16 v0, v17

    move/from16 v18, v10

    move v10, v1

    move/from16 v1, v18

    goto :goto_9

    :cond_16
    return-void
.end method

.method private static sort([JIIZ)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x2f

    if-ge v4, v5, :cond_a

    if-eqz v3, :cond_2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_9

    add-int/lit8 v4, v3, 0x1

    .line 704
    aget-wide v5, v0, v4

    .line 705
    :goto_1
    aget-wide v7, v0, v3

    cmp-long v7, v5, v7

    if-gez v7, :cond_1

    add-int/lit8 v7, v3, 0x1

    .line 706
    aget-wide v8, v0, v3

    aput-wide v8, v0, v7

    add-int/lit8 v7, v3, -0x1

    if-ne v3, v1, :cond_0

    move v3, v7

    goto :goto_2

    :cond_0
    move v3, v7

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 711
    aput-wide v5, v0, v3

    move v3, v4

    goto :goto_0

    :cond_2
    if-lt v1, v2, :cond_3

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 721
    aget-wide v3, v0, v1

    add-int/lit8 v5, v1, -0x1

    aget-wide v5, v0, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    :goto_3
    add-int/lit8 v3, v1, 0x1

    if-gt v3, v2, :cond_7

    .line 732
    aget-wide v4, v0, v1

    aget-wide v6, v0, v3

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    .line 735
    aget-wide v6, v0, v3

    move-wide/from16 v19, v4

    move-wide v4, v6

    move-wide/from16 v6, v19

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 737
    aget-wide v8, v0, v1

    cmp-long v8, v4, v8

    if-gez v8, :cond_5

    add-int/lit8 v8, v1, 0x2

    .line 738
    aget-wide v9, v0, v1

    aput-wide v9, v0, v8

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v8, v1, 0x1

    .line 740
    aput-wide v4, v0, v8

    :goto_5
    add-int/lit8 v1, v1, -0x1

    .line 742
    aget-wide v4, v0, v1

    cmp-long v4, v6, v4

    if-gez v4, :cond_6

    add-int/lit8 v4, v1, 0x1

    .line 743
    aget-wide v8, v0, v1

    aput-wide v8, v0, v4

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 745
    aput-wide v6, v0, v1

    add-int/lit8 v1, v3, 0x1

    goto :goto_3

    .line 747
    :cond_7
    aget-wide v3, v0, v2

    :goto_6
    add-int/lit8 v2, v2, -0x1

    .line 749
    aget-wide v5, v0, v2

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    add-int/lit8 v1, v2, 0x1

    .line 750
    aget-wide v5, v0, v2

    aput-wide v5, v0, v1

    goto :goto_6

    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 752
    aput-wide v3, v0, v2

    :cond_9
    return-void

    :cond_a
    shr-int/lit8 v5, v4, 0x3

    shr-int/lit8 v4, v4, 0x6

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    add-int v4, v1, v2

    ushr-int/lit8 v4, v4, 0x1

    sub-int v6, v4, v5

    sub-int v7, v6, v5

    add-int v8, v4, v5

    add-int/2addr v5, v8

    .line 774
    aget-wide v9, v0, v6

    aget-wide v11, v0, v7

    cmp-long v9, v9, v11

    if-gez v9, :cond_b

    aget-wide v9, v0, v6

    aget-wide v11, v0, v7

    aput-wide v11, v0, v6

    aput-wide v9, v0, v7

    .line 776
    :cond_b
    aget-wide v9, v0, v4

    aget-wide v11, v0, v6

    cmp-long v9, v9, v11

    if-gez v9, :cond_c

    aget-wide v9, v0, v4

    aget-wide v11, v0, v6

    aput-wide v11, v0, v4

    aput-wide v9, v0, v6

    .line 777
    aget-wide v11, v0, v7

    cmp-long v11, v9, v11

    if-gez v11, :cond_c

    aget-wide v11, v0, v7

    aput-wide v11, v0, v6

    aput-wide v9, v0, v7

    .line 779
    :cond_c
    aget-wide v9, v0, v8

    aget-wide v11, v0, v4

    cmp-long v9, v9, v11

    if-gez v9, :cond_d

    aget-wide v9, v0, v8

    aget-wide v11, v0, v4

    aput-wide v11, v0, v8

    aput-wide v9, v0, v4

    .line 780
    aget-wide v11, v0, v6

    cmp-long v11, v9, v11

    if-gez v11, :cond_d

    aget-wide v11, v0, v6

    aput-wide v11, v0, v4

    aput-wide v9, v0, v6

    .line 781
    aget-wide v11, v0, v7

    cmp-long v11, v9, v11

    if-gez v11, :cond_d

    aget-wide v11, v0, v7

    aput-wide v11, v0, v6

    aput-wide v9, v0, v7

    .line 784
    :cond_d
    aget-wide v9, v0, v5

    aget-wide v11, v0, v8

    cmp-long v9, v9, v11

    if-gez v9, :cond_e

    aget-wide v9, v0, v5

    aget-wide v11, v0, v8

    aput-wide v11, v0, v5

    aput-wide v9, v0, v8

    .line 785
    aget-wide v11, v0, v4

    cmp-long v11, v9, v11

    if-gez v11, :cond_e

    aget-wide v11, v0, v4

    aput-wide v11, v0, v8

    aput-wide v9, v0, v4

    .line 786
    aget-wide v11, v0, v6

    cmp-long v11, v9, v11

    if-gez v11, :cond_e

    aget-wide v11, v0, v6

    aput-wide v11, v0, v4

    aput-wide v9, v0, v6

    .line 787
    aget-wide v11, v0, v7

    cmp-long v11, v9, v11

    if-gez v11, :cond_e

    aget-wide v11, v0, v7

    aput-wide v11, v0, v6

    aput-wide v9, v0, v7

    .line 796
    :cond_e
    aget-wide v9, v0, v7

    aget-wide v11, v0, v6

    cmp-long v9, v9, v11

    const/4 v10, 0x0

    if-eqz v9, :cond_1f

    aget-wide v11, v0, v6

    aget-wide v13, v0, v4

    cmp-long v9, v11, v13

    if-eqz v9, :cond_1f

    aget-wide v11, v0, v4

    aget-wide v13, v0, v8

    cmp-long v9, v11, v13

    if-eqz v9, :cond_1f

    aget-wide v11, v0, v8

    aget-wide v13, v0, v5

    cmp-long v9, v11, v13

    if-eqz v9, :cond_1f

    .line 802
    aget-wide v11, v0, v6

    .line 803
    aget-wide v13, v0, v8

    .line 811
    aget-wide v15, v0, v1

    aput-wide v15, v0, v6

    .line 812
    aget-wide v15, v0, v2

    aput-wide v15, v0, v8

    move v4, v1

    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 817
    aget-wide v8, v0, v4

    cmp-long v6, v8, v11

    if-gez v6, :cond_f

    goto :goto_7

    :cond_f
    move v6, v2

    :goto_8
    add-int/lit8 v6, v6, -0x1

    .line 818
    aget-wide v8, v0, v6

    cmp-long v8, v8, v13

    if-lez v8, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v8, v4, -0x1

    :cond_11
    :goto_9
    add-int/lit8 v8, v8, 0x1

    if-gt v8, v6, :cond_16

    .line 841
    aget-wide v15, v0, v8

    cmp-long v9, v15, v11

    if-gez v9, :cond_12

    .line 843
    aget-wide v17, v0, v4

    aput-wide v17, v0, v8

    .line 848
    aput-wide v15, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_12
    cmp-long v9, v15, v13

    if-lez v9, :cond_11

    .line 851
    :goto_a
    aget-wide v17, v0, v6

    cmp-long v9, v17, v13

    if-lez v9, :cond_14

    add-int/lit8 v9, v6, -0x1

    if-ne v6, v8, :cond_13

    move v6, v9

    goto :goto_c

    :cond_13
    move v6, v9

    goto :goto_a

    .line 856
    :cond_14
    aget-wide v17, v0, v6

    cmp-long v9, v17, v11

    if-gez v9, :cond_15

    .line 857
    aget-wide v17, v0, v4

    aput-wide v17, v0, v8

    .line 858
    aget-wide v17, v0, v6

    aput-wide v17, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 861
    :cond_15
    aget-wide v17, v0, v6

    aput-wide v17, v0, v8

    .line 867
    :goto_b
    aput-wide v15, v0, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    :cond_16
    :goto_c
    add-int/lit8 v8, v4, -0x1

    .line 873
    aget-wide v15, v0, v8

    aput-wide v15, v0, v1

    aput-wide v11, v0, v8

    add-int/lit8 v8, v6, 0x1

    .line 874
    aget-wide v15, v0, v8

    aput-wide v15, v0, v2

    aput-wide v13, v0, v8

    add-int/lit8 v8, v4, -0x2

    .line 877
    invoke-static {v0, v1, v8, v3}, Ljava8/util/DualPivotQuicksort;->sort([JIIZ)V

    add-int/lit8 v1, v6, 0x2

    .line 878
    invoke-static {v0, v1, v2, v10}, Ljava8/util/DualPivotQuicksort;->sort([JIIZ)V

    if-ge v4, v7, :cond_1e

    if-ge v5, v6, :cond_1e

    .line 888
    :goto_d
    aget-wide v1, v0, v4

    cmp-long v1, v1, v11

    if-nez v1, :cond_17

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 892
    :cond_17
    :goto_e
    aget-wide v1, v0, v6

    cmp-long v1, v1, v13

    if-nez v1, :cond_18

    add-int/lit8 v6, v6, -0x1

    goto :goto_e

    :cond_18
    add-int/lit8 v1, v4, -0x1

    :cond_19
    :goto_f
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v6, :cond_1e

    .line 917
    aget-wide v2, v0, v1

    cmp-long v5, v2, v11

    if-nez v5, :cond_1a

    .line 919
    aget-wide v7, v0, v4

    aput-wide v7, v0, v1

    .line 920
    aput-wide v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1a
    cmp-long v5, v2, v13

    if-nez v5, :cond_19

    .line 923
    :goto_10
    aget-wide v7, v0, v6

    cmp-long v5, v7, v13

    if-nez v5, :cond_1c

    add-int/lit8 v5, v6, -0x1

    if-ne v6, v1, :cond_1b

    move v6, v5

    goto :goto_12

    :cond_1b
    move v6, v5

    goto :goto_10

    .line 928
    :cond_1c
    aget-wide v7, v0, v6

    cmp-long v5, v7, v11

    if-nez v5, :cond_1d

    .line 929
    aget-wide v7, v0, v4

    aput-wide v7, v0, v1

    .line 938
    aput-wide v11, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 941
    :cond_1d
    aget-wide v7, v0, v6

    aput-wide v7, v0, v1

    .line 943
    :goto_11
    aput-wide v2, v0, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_f

    .line 950
    :cond_1e
    :goto_12
    invoke-static {v0, v4, v6, v10}, Ljava8/util/DualPivotQuicksort;->sort([JIIZ)V

    goto :goto_17

    .line 957
    :cond_1f
    aget-wide v4, v0, v4

    move v6, v1

    move v8, v6

    move v7, v2

    :goto_13
    if-gt v6, v7, :cond_24

    .line 980
    aget-wide v11, v0, v6

    cmp-long v9, v11, v4

    if-nez v9, :cond_20

    goto :goto_16

    .line 983
    :cond_20
    aget-wide v11, v0, v6

    cmp-long v9, v11, v4

    if-gez v9, :cond_21

    .line 985
    aget-wide v13, v0, v8

    aput-wide v13, v0, v6

    .line 986
    aput-wide v11, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 989
    :cond_21
    :goto_14
    aget-wide v13, v0, v7

    cmp-long v9, v13, v4

    if-lez v9, :cond_22

    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    .line 992
    :cond_22
    aget-wide v13, v0, v7

    cmp-long v9, v13, v4

    if-gez v9, :cond_23

    .line 993
    aget-wide v13, v0, v8

    aput-wide v13, v0, v6

    .line 994
    aget-wide v13, v0, v7

    aput-wide v13, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 1005
    :cond_23
    aput-wide v4, v0, v6

    .line 1007
    :goto_15
    aput-wide v11, v0, v7

    add-int/lit8 v7, v7, -0x1

    :goto_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_24
    add-int/lit8 v8, v8, -0x1

    .line 1017
    invoke-static {v0, v1, v8, v3}, Ljava8/util/DualPivotQuicksort;->sort([JIIZ)V

    add-int/lit8 v7, v7, 0x1

    .line 1018
    invoke-static {v0, v7, v2, v10}, Ljava8/util/DualPivotQuicksort;->sort([JIIZ)V

    :goto_17
    return-void
.end method

.method static sort([JII[JII)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    sub-int v4, v2, v1

    const/4 v5, 0x1

    const/16 v6, 0x11e

    if-ge v4, v6, :cond_0

    .line 571
    invoke-static {v0, v1, v2, v5}, Ljava8/util/DualPivotQuicksort;->sort([JIIZ)V

    return-void

    :cond_0
    const/16 v4, 0x44

    .line 579
    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v1, v4, v6

    move v7, v1

    move v8, v6

    :goto_0
    if-ge v7, v2, :cond_8

    :goto_1
    if-ge v7, v2, :cond_1

    .line 585
    aget-wide v9, v0, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v12, v0, v11

    cmp-long v9, v9, v12

    if-nez v9, :cond_1

    move v7, v11

    goto :goto_1

    :cond_1
    if-ne v7, v2, :cond_2

    goto :goto_5

    .line 588
    :cond_2
    aget-wide v9, v0, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v12, v0, v11

    cmp-long v9, v9, v12

    if-gez v9, :cond_3

    :goto_2
    add-int/2addr v7, v5

    if-gt v7, v2, :cond_5

    add-int/lit8 v9, v7, -0x1

    .line 589
    aget-wide v9, v0, v9

    aget-wide v11, v0, v7

    cmp-long v9, v9, v11

    if-gtz v9, :cond_5

    goto :goto_2

    .line 590
    :cond_3
    aget-wide v9, v0, v7

    aget-wide v11, v0, v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    :goto_3
    add-int/2addr v7, v5

    if-gt v7, v2, :cond_4

    add-int/lit8 v9, v7, -0x1

    .line 591
    aget-wide v9, v0, v9

    aget-wide v11, v0, v7

    cmp-long v9, v9, v11

    if-ltz v9, :cond_4

    goto :goto_3

    .line 593
    :cond_4
    aget v9, v4, v8

    sub-int/2addr v9, v5

    move v10, v7

    :goto_4
    add-int/2addr v9, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_5

    .line 594
    aget-wide v11, v0, v9

    aget-wide v13, v0, v10

    aput-wide v13, v0, v9

    aput-wide v11, v0, v10

    goto :goto_4

    .line 600
    :cond_5
    aget v9, v4, v8

    if-le v9, v1, :cond_6

    aget v9, v4, v8

    aget-wide v9, v0, v9

    aget v11, v4, v8

    sub-int/2addr v11, v5

    aget-wide v11, v0, v11

    cmp-long v9, v9, v11

    if-ltz v9, :cond_6

    add-int/lit8 v8, v8, -0x1

    :cond_6
    add-int/2addr v8, v5

    const/16 v9, 0x43

    if-ne v8, v9, :cond_7

    .line 609
    invoke-static {v0, v1, v2, v5}, Ljava8/util/DualPivotQuicksort;->sort([JIIZ)V

    return-void

    .line 583
    :cond_7
    aput v7, v4, v8

    goto :goto_0

    :cond_8
    :goto_5
    if-nez v8, :cond_9

    return-void

    :cond_9
    if-ne v8, v5, :cond_a

    .line 621
    aget v7, v4, v8

    if-le v7, v2, :cond_a

    return-void

    :cond_a
    add-int/2addr v2, v5

    .line 628
    aget v7, v4, v8

    if-ge v7, v2, :cond_b

    add-int/lit8 v8, v8, 0x1

    .line 633
    aput v2, v4, v8

    :cond_b
    move v7, v5

    move v9, v6

    :goto_6
    shl-int/2addr v7, v5

    if-ge v7, v8, :cond_c

    xor-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    goto :goto_6

    :cond_c
    sub-int v7, v2, v1

    if-eqz v3, :cond_e

    move/from16 v10, p5

    if-lt v10, v7, :cond_e

    add-int v10, p4, v7

    .line 644
    array-length v11, v3

    if-le v10, v11, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v10, p4

    goto :goto_8

    .line 645
    :cond_e
    :goto_7
    new-array v3, v7, [J

    move v10, v6

    :goto_8
    if-nez v9, :cond_f

    .line 649
    invoke-static {v0, v1, v3, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v10, v1

    move v10, v6

    move-object/from16 v20, v3

    move-object v3, v0

    move-object/from16 v0, v20

    goto :goto_9

    :cond_f
    sub-int/2addr v10, v1

    move v1, v6

    :goto_9
    if-le v8, v5, :cond_16

    const/4 v7, 0x2

    move v9, v6

    :goto_a
    if-gt v7, v8, :cond_13

    .line 663
    aget v11, v4, v7

    add-int/lit8 v12, v7, -0x1

    aget v12, v4, v12

    add-int/lit8 v13, v7, -0x2

    .line 664
    aget v13, v4, v13

    move v14, v12

    move v15, v13

    :goto_b
    if-ge v13, v11, :cond_12

    if-ge v14, v11, :cond_11

    if-ge v15, v12, :cond_10

    add-int v16, v15, v1

    .line 665
    aget-wide v16, v0, v16

    add-int v18, v14, v1

    aget-wide v18, v0, v18

    cmp-long v16, v16, v18

    if-gtz v16, :cond_10

    goto :goto_c

    :cond_10
    add-int v16, v13, v10

    add-int/lit8 v17, v14, 0x1

    add-int/2addr v14, v1

    .line 668
    aget-wide v18, v0, v14

    aput-wide v18, v3, v16

    move/from16 v14, v17

    goto :goto_d

    :cond_11
    :goto_c
    add-int v16, v13, v10

    add-int/lit8 v17, v15, 0x1

    add-int/2addr v15, v1

    .line 666
    aget-wide v18, v0, v15

    aput-wide v18, v3, v16

    move/from16 v15, v17

    :goto_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 671
    aput v11, v4, v9

    add-int/lit8 v7, v7, 0x2

    goto :goto_a

    :cond_13
    and-int/lit8 v7, v8, 0x1

    if-eqz v7, :cond_15

    add-int/lit8 v8, v8, -0x1

    .line 674
    aget v7, v4, v8

    move v8, v2

    :goto_e
    add-int/lit8 v8, v8, -0x1

    if-lt v8, v7, :cond_14

    add-int v11, v8, v10

    add-int v12, v8, v1

    .line 675
    aget-wide v12, v0, v12

    aput-wide v12, v3, v11

    goto :goto_e

    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 677
    aput v2, v4, v9

    move v8, v9

    goto :goto_f

    :cond_15
    move v8, v9

    :goto_f
    move-object/from16 v20, v3

    move-object v3, v0

    move-object/from16 v0, v20

    move/from16 v21, v10

    move v10, v1

    move/from16 v1, v21

    goto :goto_9

    :cond_16
    return-void
.end method

.method private static sort([SIIZ)V
    .locals 11

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2f

    if-ge v0, v1, :cond_a

    if-eqz p3, :cond_2

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_9

    add-int/lit8 v0, p3, 0x1

    .line 1206
    aget-short v1, p0, v0

    .line 1207
    :goto_1
    aget-short v2, p0, p3

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, p3, 0x1

    .line 1208
    aget-short v3, p0, p3

    aput-short v3, p0, v2

    add-int/lit8 v2, p3, -0x1

    if-ne p3, p1, :cond_0

    move p3, v2

    goto :goto_2

    :cond_0
    move p3, v2

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 1213
    aput-short v1, p0, p3

    move p3, v0

    goto :goto_0

    :cond_2
    if-lt p1, p2, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1223
    aget-short p3, p0, p1

    add-int/lit8 v0, p1, -0x1

    aget-short v0, p0, v0

    if-ge p3, v0, :cond_2

    :goto_3
    add-int/lit8 p3, p1, 0x1

    if-gt p3, p2, :cond_7

    .line 1234
    aget-short v0, p0, p1

    aget-short v1, p0, p3

    if-ge v0, v1, :cond_4

    .line 1237
    aget-short v1, p0, p3

    move v10, v1

    move v1, v0

    move v0, v10

    :cond_4
    :goto_4
    add-int/lit8 p1, p1, -0x1

    .line 1239
    aget-short v2, p0, p1

    if-ge v0, v2, :cond_5

    add-int/lit8 v2, p1, 0x2

    .line 1240
    aget-short v3, p0, p1

    aput-short v3, p0, v2

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, p1, 0x1

    .line 1242
    aput-short v0, p0, v2

    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 1244
    aget-short v0, p0, p1

    if-ge v1, v0, :cond_6

    add-int/lit8 v0, p1, 0x1

    .line 1245
    aget-short v2, p0, p1

    aput-short v2, p0, v0

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 1247
    aput-short v1, p0, p1

    add-int/lit8 p1, p3, 0x1

    goto :goto_3

    .line 1249
    :cond_7
    aget-short p1, p0, p2

    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 1251
    aget-short p3, p0, p2

    if-ge p1, p3, :cond_8

    add-int/lit8 p3, p2, 0x1

    .line 1252
    aget-short v0, p0, p2

    aput-short v0, p0, p3

    goto :goto_6

    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 1254
    aput-short p1, p0, p2

    :cond_9
    return-void

    :cond_a
    shr-int/lit8 v1, v0, 0x3

    shr-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    sub-int v2, v0, v1

    sub-int v3, v2, v1

    add-int v4, v0, v1

    add-int/2addr v1, v4

    .line 1276
    aget-short v5, p0, v2

    aget-short v6, p0, v3

    if-ge v5, v6, :cond_b

    aget-short v5, p0, v2

    aget-short v6, p0, v3

    aput-short v6, p0, v2

    aput-short v5, p0, v3

    .line 1278
    :cond_b
    aget-short v5, p0, v0

    aget-short v6, p0, v2

    if-ge v5, v6, :cond_c

    aget-short v5, p0, v0

    aget-short v6, p0, v2

    aput-short v6, p0, v0

    aput-short v5, p0, v2

    .line 1279
    aget-short v6, p0, v3

    if-ge v5, v6, :cond_c

    aget-short v6, p0, v3

    aput-short v6, p0, v2

    aput-short v5, p0, v3

    .line 1281
    :cond_c
    aget-short v5, p0, v4

    aget-short v6, p0, v0

    if-ge v5, v6, :cond_d

    aget-short v5, p0, v4

    aget-short v6, p0, v0

    aput-short v6, p0, v4

    aput-short v5, p0, v0

    .line 1282
    aget-short v6, p0, v2

    if-ge v5, v6, :cond_d

    aget-short v6, p0, v2

    aput-short v6, p0, v0

    aput-short v5, p0, v2

    .line 1283
    aget-short v6, p0, v3

    if-ge v5, v6, :cond_d

    aget-short v6, p0, v3

    aput-short v6, p0, v2

    aput-short v5, p0, v3

    .line 1286
    :cond_d
    aget-short v5, p0, v1

    aget-short v6, p0, v4

    if-ge v5, v6, :cond_e

    aget-short v5, p0, v1

    aget-short v6, p0, v4

    aput-short v6, p0, v1

    aput-short v5, p0, v4

    .line 1287
    aget-short v6, p0, v0

    if-ge v5, v6, :cond_e

    aget-short v6, p0, v0

    aput-short v6, p0, v4

    aput-short v5, p0, v0

    .line 1288
    aget-short v6, p0, v2

    if-ge v5, v6, :cond_e

    aget-short v6, p0, v2

    aput-short v6, p0, v0

    aput-short v5, p0, v2

    .line 1289
    aget-short v6, p0, v3

    if-ge v5, v6, :cond_e

    aget-short v6, p0, v3

    aput-short v6, p0, v2

    aput-short v5, p0, v3

    .line 1298
    :cond_e
    aget-short v5, p0, v3

    aget-short v6, p0, v2

    const/4 v7, 0x0

    if-eq v5, v6, :cond_1f

    aget-short v5, p0, v2

    aget-short v6, p0, v0

    if-eq v5, v6, :cond_1f

    aget-short v5, p0, v0

    aget-short v6, p0, v4

    if-eq v5, v6, :cond_1f

    aget-short v5, p0, v4

    aget-short v6, p0, v1

    if-eq v5, v6, :cond_1f

    .line 1304
    aget-short v0, p0, v2

    .line 1305
    aget-short v5, p0, v4

    .line 1313
    aget-short v6, p0, p1

    aput-short v6, p0, v2

    .line 1314
    aget-short v2, p0, p2

    aput-short v2, p0, v4

    move v2, p1

    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 1319
    aget-short v4, p0, v2

    if-ge v4, v0, :cond_f

    goto :goto_7

    :cond_f
    move v4, p2

    :goto_8
    add-int/lit8 v4, v4, -0x1

    .line 1320
    aget-short v6, p0, v4

    if-le v6, v5, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v6, v2, -0x1

    :cond_11
    :goto_9
    add-int/lit8 v6, v6, 0x1

    if-gt v6, v4, :cond_16

    .line 1343
    aget-short v8, p0, v6

    if-ge v8, v0, :cond_12

    .line 1345
    aget-short v9, p0, v2

    aput-short v9, p0, v6

    .line 1350
    aput-short v8, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_12
    if-le v8, v5, :cond_11

    .line 1353
    :goto_a
    aget-short v9, p0, v4

    if-le v9, v5, :cond_14

    add-int/lit8 v9, v4, -0x1

    if-ne v4, v6, :cond_13

    move v4, v9

    goto :goto_c

    :cond_13
    move v4, v9

    goto :goto_a

    .line 1358
    :cond_14
    aget-short v9, p0, v4

    if-ge v9, v0, :cond_15

    .line 1359
    aget-short v9, p0, v2

    aput-short v9, p0, v6

    .line 1360
    aget-short v9, p0, v4

    aput-short v9, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1363
    :cond_15
    aget-short v9, p0, v4

    aput-short v9, p0, v6

    .line 1369
    :goto_b
    aput-short v8, p0, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_16
    :goto_c
    add-int/lit8 v6, v2, -0x1

    .line 1375
    aget-short v8, p0, v6

    aput-short v8, p0, p1

    aput-short v0, p0, v6

    add-int/lit8 v6, v4, 0x1

    .line 1376
    aget-short v8, p0, v6

    aput-short v8, p0, p2

    aput-short v5, p0, v6

    add-int/lit8 v6, v2, -0x2

    .line 1379
    invoke-static {p0, p1, v6, p3}, Ljava8/util/DualPivotQuicksort;->sort([SIIZ)V

    add-int/lit8 p1, v4, 0x2

    .line 1380
    invoke-static {p0, p1, p2, v7}, Ljava8/util/DualPivotQuicksort;->sort([SIIZ)V

    if-ge v2, v3, :cond_1e

    if-ge v1, v4, :cond_1e

    .line 1390
    :goto_d
    aget-short p1, p0, v2

    if-ne p1, v0, :cond_17

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1394
    :cond_17
    :goto_e
    aget-short p1, p0, v4

    if-ne p1, v5, :cond_18

    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_18
    add-int/lit8 p1, v2, -0x1

    :cond_19
    :goto_f
    add-int/lit8 p1, p1, 0x1

    if-gt p1, v4, :cond_1e

    .line 1419
    aget-short p2, p0, p1

    if-ne p2, v0, :cond_1a

    .line 1421
    aget-short p3, p0, v2

    aput-short p3, p0, p1

    .line 1422
    aput-short p2, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1a
    if-ne p2, v5, :cond_19

    .line 1425
    :goto_10
    aget-short p3, p0, v4

    if-ne p3, v5, :cond_1c

    add-int/lit8 p3, v4, -0x1

    if-ne v4, p1, :cond_1b

    move v4, p3

    goto :goto_12

    :cond_1b
    move v4, p3

    goto :goto_10

    .line 1430
    :cond_1c
    aget-short p3, p0, v4

    if-ne p3, v0, :cond_1d

    .line 1431
    aget-short p3, p0, v2

    aput-short p3, p0, p1

    .line 1440
    aput-short v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1443
    :cond_1d
    aget-short p3, p0, v4

    aput-short p3, p0, p1

    .line 1445
    :goto_11
    aput-short p2, p0, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    .line 1452
    :cond_1e
    :goto_12
    invoke-static {p0, v2, v4, v7}, Ljava8/util/DualPivotQuicksort;->sort([SIIZ)V

    goto :goto_17

    .line 1459
    :cond_1f
    aget-short v0, p0, v0

    move v1, p1

    move v3, v1

    move v2, p2

    :goto_13
    if-gt v1, v2, :cond_24

    .line 1482
    aget-short v4, p0, v1

    if-ne v4, v0, :cond_20

    goto :goto_16

    .line 1485
    :cond_20
    aget-short v4, p0, v1

    if-ge v4, v0, :cond_21

    .line 1487
    aget-short v5, p0, v3

    aput-short v5, p0, v1

    .line 1488
    aput-short v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1491
    :cond_21
    :goto_14
    aget-short v5, p0, v2

    if-le v5, v0, :cond_22

    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 1494
    :cond_22
    aget-short v5, p0, v2

    if-ge v5, v0, :cond_23

    .line 1495
    aget-short v5, p0, v3

    aput-short v5, p0, v1

    .line 1496
    aget-short v5, p0, v2

    aput-short v5, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1507
    :cond_23
    aput-short v0, p0, v1

    .line 1509
    :goto_15
    aput-short v4, p0, v2

    add-int/lit8 v2, v2, -0x1

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_24
    add-int/lit8 v3, v3, -0x1

    .line 1519
    invoke-static {p0, p1, v3, p3}, Ljava8/util/DualPivotQuicksort;->sort([SIIZ)V

    add-int/lit8 v2, v2, 0x1

    .line 1520
    invoke-static {p0, v2, p2, v7}, Ljava8/util/DualPivotQuicksort;->sort([SIIZ)V

    :goto_17
    return-void
.end method

.method static sort([SII[SII)V
    .locals 2

    sub-int v0, p2, p1

    const/16 v1, 0xc80

    if-le v0, v1, :cond_3

    const/high16 p3, 0x10000

    .line 1037
    new-array p4, p3, [I

    add-int/lit8 p5, p1, -0x1

    :goto_0
    add-int/lit8 p5, p5, 0x1

    if-gt p5, p2, :cond_0

    .line 1040
    aget-short v0, p0, p5

    const/16 v1, -0x8000

    sub-int/2addr v0, v1

    aget v1, p4, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p4, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    :goto_1
    if-le p2, p1, :cond_4

    :goto_2
    add-int/lit8 p3, p3, -0x1

    .line 1043
    aget p5, p4, p3

    if-nez p5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit16 p5, p3, -0x8000

    int-to-short p5, p5

    .line 1045
    aget v0, p4, p3

    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 1048
    aput-short p5, p0, p2

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    goto :goto_1

    .line 1052
    :cond_3
    invoke-static/range {p0 .. p5}, Ljava8/util/DualPivotQuicksort;->doSort([SII[SII)V

    :cond_4
    return-void
.end method
