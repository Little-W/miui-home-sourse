.class final Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;
.super Ljava8/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleCumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final array:[D

.field final fence:I

.field final function:Ljava8/util/function/DoubleBinaryOperator;

.field final hi:I

.field in:D

.field left:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field final lo:I

.field final origin:I

.field out:D

.field right:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava8/util/function/DoubleBinaryOperator;[DII)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    .line 414
    iput-object p2, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava8/util/function/DoubleBinaryOperator;

    iput-object p3, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .line 415
    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    sub-int/2addr p5, p4

    .line 418
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    div-int/2addr p5, p1

    const/16 p1, 0x10

    if-gt p5, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p5

    :goto_0
    iput p1, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    return-void
.end method

.method constructor <init>(Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava8/util/function/DoubleBinaryOperator;[DIIIII)V
    .locals 0

    .line 426
    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    .line 427
    iput-object p2, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava8/util/function/DoubleBinaryOperator;

    iput-object p3, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .line 428
    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    .line 429
    iput p6, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .line 430
    iput p7, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    iput p8, p0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 20

    move-object/from16 v0, p0

    .line 436
    iget-object v10, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava8/util/function/DoubleBinaryOperator;

    if-eqz v10, :cond_1e

    iget-object v11, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    if-eqz v11, :cond_1e

    .line 438
    iget v12, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    iget v13, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iget v14, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    move-object v15, v0

    .line 440
    :goto_0
    iget v9, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    if-ltz v9, :cond_1d

    iget v8, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    array-length v1, v11

    if-gt v8, v1, :cond_1d

    sub-int v1, v8, v9

    const/4 v2, 0x1

    if-le v1, v12, :cond_a

    .line 442
    iget-object v1, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    iget-object v3, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    if-nez v1, :cond_0

    add-int v1, v9, v8

    ushr-int/lit8 v16, v1, 0x1

    .line 445
    new-instance v7, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v1, v7

    move-object v2, v15

    move-object v3, v10

    move-object v4, v11

    move v5, v13

    move v6, v14

    move-object v0, v7

    move v7, v12

    move/from16 v17, v8

    move/from16 v8, v16

    move/from16 v18, v9

    move/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava8/util/function/DoubleBinaryOperator;[DIIIII)V

    iput-object v0, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .line 447
    new-instance v9, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v1, v9

    move/from16 v8, v18

    move-object/from16 v19, v0

    move-object v0, v9

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava8/util/function/DoubleBinaryOperator;[DIIIII)V

    iput-object v0, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v15, v0

    goto :goto_5

    :cond_0
    move/from16 v18, v9

    .line 451
    iget-wide v4, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 452
    iput-wide v4, v1, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    const/4 v0, 0x0

    if-eqz v3, :cond_4

    .line 455
    iget-wide v6, v1, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    move/from16 v8, v18

    if-ne v8, v13, :cond_1

    goto :goto_1

    .line 457
    :cond_1
    invoke-interface {v10, v4, v5, v6, v7}, Ljava8/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v6

    :goto_1
    iput-wide v6, v3, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 459
    :cond_2
    invoke-virtual {v3}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v2

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    or-int/lit8 v4, v2, 0x1

    .line 461
    invoke-virtual {v3, v2, v4}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_4
    :goto_2
    move-object v3, v0

    .line 468
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v2

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_6

    move-object v7, v0

    move-object v1, v3

    goto :goto_4

    :cond_6
    or-int/lit8 v4, v2, 0x1

    .line 470
    invoke-virtual {v1, v2, v4}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v3, :cond_7

    move-object v0, v3

    :cond_7
    move-object v7, v0

    :goto_4
    if-nez v1, :cond_8

    goto/16 :goto_e

    :cond_8
    move-object v15, v1

    move-object/from16 v19, v7

    :goto_5
    if-eqz v19, :cond_9

    .line 481
    invoke-virtual/range {v19 .. v19}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    :cond_9
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_a
    move/from16 v17, v8

    move v8, v9

    .line 486
    :cond_b
    invoke-virtual {v15}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_c

    goto/16 :goto_e

    :cond_c
    and-int/lit8 v1, v0, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_d

    const/4 v1, 0x4

    goto :goto_6

    :cond_d
    if-le v8, v13, :cond_e

    move v1, v3

    goto :goto_6

    :cond_e
    const/4 v1, 0x6

    :goto_6
    or-int v5, v0, v1

    .line 490
    invoke-virtual {v15, v0, v5}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eq v1, v3, :cond_11

    if-ne v8, v13, :cond_f

    .line 498
    aget-wide v5, v11, v13

    add-int/lit8 v9, v13, 0x1

    move v8, v9

    goto :goto_7

    .line 502
    :cond_f
    iget-wide v5, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    :goto_7
    move/from16 v0, v17

    :goto_8
    if-ge v8, v0, :cond_10

    .line 506
    aget-wide v3, v11, v8

    invoke-interface {v10, v5, v6, v3, v4}, Ljava8/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v5

    aput-wide v5, v11, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x2

    goto :goto_8

    :cond_10
    move-wide v3, v5

    goto :goto_a

    :cond_11
    move/from16 v0, v17

    if-ge v0, v14, :cond_12

    .line 509
    aget-wide v3, v11, v8

    add-int/lit8 v5, v8, 0x1

    :goto_9
    if-ge v5, v0, :cond_13

    .line 511
    aget-wide v7, v11, v5

    invoke-interface {v10, v3, v4, v7, v8}, Ljava8/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 514
    :cond_12
    iget-wide v3, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 515
    :cond_13
    :goto_a
    iput-wide v3, v15, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    move v3, v1

    .line 517
    :cond_14
    :goto_b
    invoke-virtual {v15}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->getCompleter()Ljava8/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    if-nez v0, :cond_15

    const/4 v1, 0x4

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_1d

    .line 519
    invoke-virtual {v15}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->quietlyComplete()V

    goto :goto_e

    :cond_15
    const/4 v1, 0x4

    .line 522
    invoke-virtual {v0}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v4

    and-int v5, v4, v3

    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_16

    move-object v15, v0

    goto :goto_b

    :cond_16
    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1c

    .line 527
    iget-object v5, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    if-eqz v5, :cond_18

    iget-object v7, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    if-eqz v7, :cond_18

    .line 529
    iget-wide v8, v5, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 530
    iget v5, v7, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    if-ne v5, v14, :cond_17

    goto :goto_c

    :cond_17
    iget-wide v11, v7, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 531
    invoke-interface {v10, v8, v9, v11, v12}, Ljava8/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v8

    :goto_c
    iput-wide v8, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    :cond_18
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_19

    .line 533
    iget v5, v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    if-ne v5, v13, :cond_19

    move v5, v2

    goto :goto_d

    :cond_19
    const/4 v5, 0x0

    :goto_d
    or-int v7, v4, v3

    or-int/2addr v7, v5

    if-eq v7, v4, :cond_1a

    .line 536
    invoke-virtual {v0, v4, v7}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_1a
    if-eqz v5, :cond_1b

    .line 540
    invoke-virtual {v0}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    :cond_1b
    move-object v15, v0

    const/4 v3, 0x2

    goto :goto_b

    :cond_1c
    or-int v5, v4, v3

    .line 543
    invoke-virtual {v0, v4, v5}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_1d
    :goto_e
    return-void

    .line 437
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
