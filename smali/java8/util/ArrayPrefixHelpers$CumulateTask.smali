.class final Ljava8/util/ArrayPrefixHelpers$CumulateTask;
.super Ljava8/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final fence:I

.field final function:Ljava8/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final hi:I

.field in:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field left:Ljava8/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field final lo:I

.field final origin:I

.field out:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field right:Ljava8/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;[TT;II)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    .line 113
    iput-object p2, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava8/util/function/BinaryOperator;

    iput-object p3, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    .line 114
    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    sub-int/2addr p5, p4

    .line 117
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
    iput p1, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    return-void
.end method

.method constructor <init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;[TT;IIIII)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    .line 126
    iput-object p2, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava8/util/function/BinaryOperator;

    iput-object p3, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    .line 127
    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    .line 128
    iput p6, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .line 129
    iput p7, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p8, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 20

    move-object/from16 v0, p0

    .line 136
    iget-object v10, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava8/util/function/BinaryOperator;

    if-eqz v10, :cond_1d

    iget-object v11, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    if-eqz v11, :cond_1d

    .line 138
    iget v12, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    iget v13, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iget v14, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    move-object v15, v0

    .line 140
    :goto_0
    iget v9, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    if-ltz v9, :cond_1c

    iget v8, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    array-length v1, v11

    if-gt v8, v1, :cond_1c

    sub-int v1, v8, v9

    const/4 v2, 0x1

    if-le v1, v12, :cond_a

    .line 142
    iget-object v1, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    iget-object v3, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    if-nez v1, :cond_0

    add-int v1, v9, v8

    ushr-int/lit8 v16, v1, 0x1

    .line 145
    new-instance v7, Ljava8/util/ArrayPrefixHelpers$CumulateTask;

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

    invoke-direct/range {v1 .. v9}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v0, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    .line 147
    new-instance v9, Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    move-object v1, v9

    move/from16 v8, v18

    move-object/from16 v19, v0

    move-object v0, v9

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v0, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    move-object v15, v0

    goto :goto_6

    :cond_0
    move/from16 v18, v9

    .line 151
    iget-object v0, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 152
    iput-object v0, v1, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 155
    iget-object v2, v1, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    move/from16 v5, v18

    if-ne v5, v13, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    invoke-interface {v10, v0, v2}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    iput-object v2, v3, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 159
    :cond_2
    invoke-virtual {v3}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    or-int/lit8 v2, v0, 0x1

    .line 161
    invoke-virtual {v3, v0, v2}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_4
    :goto_2
    move-object v3, v4

    .line 168
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_6

    move-object v1, v3

    move-object v7, v4

    goto :goto_5

    :cond_6
    or-int/lit8 v2, v0, 0x1

    .line 170
    invoke-virtual {v1, v0, v2}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    move-object v7, v3

    :goto_5
    if-nez v1, :cond_8

    goto/16 :goto_e

    :cond_8
    move-object v15, v1

    move-object/from16 v19, v7

    :goto_6
    if-eqz v19, :cond_9

    .line 181
    invoke-virtual/range {v19 .. v19}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    :cond_9
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_a
    move/from16 v17, v8

    move v5, v9

    .line 186
    :cond_b
    invoke-virtual {v15}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_c

    goto/16 :goto_e

    :cond_c
    and-int/lit8 v1, v0, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz v1, :cond_d

    move v1, v4

    goto :goto_7

    :cond_d
    if-le v5, v13, :cond_e

    move v1, v3

    goto :goto_7

    :cond_e
    const/4 v1, 0x6

    :goto_7
    or-int v6, v0, v1

    .line 190
    invoke-virtual {v15, v0, v6}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eq v1, v3, :cond_10

    if-ne v5, v13, :cond_f

    .line 198
    aget-object v0, v11, v13

    add-int/lit8 v9, v13, 0x1

    move v5, v9

    goto :goto_8

    .line 202
    :cond_f
    iget-object v0, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    :goto_8
    move-object v6, v0

    move/from16 v0, v17

    :goto_9
    if-ge v5, v0, :cond_12

    .line 206
    aget-object v7, v11, v5

    invoke-interface {v10, v6, v7}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_10
    move/from16 v0, v17

    if-ge v0, v14, :cond_11

    .line 209
    aget-object v6, v11, v5

    add-int/lit8 v9, v5, 0x1

    :goto_a
    if-ge v9, v0, :cond_12

    .line 211
    aget-object v5, v11, v9

    invoke-interface {v10, v6, v5}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 214
    :cond_11
    iget-object v6, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 215
    :cond_12
    iput-object v6, v15, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 217
    :cond_13
    :goto_b
    invoke-virtual {v15}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->getCompleter()Ljava8/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    if-nez v0, :cond_14

    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_1c

    .line 219
    invoke-virtual {v15}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->quietlyComplete()V

    goto :goto_e

    .line 222
    :cond_14
    invoke-virtual {v0}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v5

    and-int v6, v5, v1

    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_15

    move-object v15, v0

    goto :goto_b

    :cond_15
    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1b

    .line 227
    iget-object v6, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    if-eqz v6, :cond_17

    iget-object v7, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    if-eqz v7, :cond_17

    .line 229
    iget-object v6, v6, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 230
    iget v8, v7, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    if-ne v8, v14, :cond_16

    goto :goto_c

    :cond_16
    iget-object v7, v7, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 231
    invoke-interface {v10, v6, v7}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_c
    iput-object v6, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    :cond_17
    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_18

    .line 233
    iget v6, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    if-ne v6, v13, :cond_18

    move v6, v2

    goto :goto_d

    :cond_18
    const/4 v6, 0x0

    :goto_d
    or-int v7, v5, v1

    or-int/2addr v7, v6

    if-eq v7, v5, :cond_19

    .line 236
    invoke-virtual {v0, v5, v7}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_19
    if-eqz v6, :cond_1a

    .line 240
    invoke-virtual {v0}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    :cond_1a
    move-object v15, v0

    move v1, v3

    goto :goto_b

    :cond_1b
    or-int v6, v5, v1

    .line 243
    invoke-virtual {v0, v5, v6}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_1c
    :goto_e
    return-void

    .line 137
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
