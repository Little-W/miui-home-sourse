.class public final Lio/branch/search/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/branch/search/l;Lio/branch/search/BranchLocalSearchRequest;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l;",
            "Lio/branch/search/BranchLocalSearchRequest;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/s0<",
            "+",
            "Lio/branch/search/BranchLocalSearchResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/branch/search/q0$d;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/branch/search/q0$d;

    iget v2, v1, Lio/branch/search/q0$d;->b:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lio/branch/search/q0$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/branch/search/q0$d;

    invoke-direct {v1, v0}, Lio/branch/search/q0$d;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v15, v1

    iget-object v0, v15, Lio/branch/search/q0$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    iget v1, v15, Lio/branch/search/q0$d;->b:I

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, v15, Lio/branch/search/q0$d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v15, Lio/branch/search/q0$d;->c:Ljava/lang/Object;

    check-cast v2, Lio/branch/search/s0;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v2

    goto/16 :goto_b

    :pswitch_1
    iget-wide v1, v15, Lio/branch/search/q0$d;->j:J

    iget-object v4, v15, Lio/branch/search/q0$d;->d:Ljava/lang/Object;

    check-cast v4, Lio/branch/search/r0;

    iget-object v6, v15, Lio/branch/search/q0$d;->c:Ljava/lang/Object;

    check-cast v6, Lio/branch/search/r0;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v13, v1

    move-object v2, v3

    move-object v1, v6

    move-object v3, v0

    move-object v0, v4

    move-object v4, v5

    goto/16 :goto_9

    :pswitch_2
    iget-wide v1, v15, Lio/branch/search/q0$d;->j:J

    iget-object v6, v15, Lio/branch/search/q0$d;->i:Ljava/lang/Object;

    check-cast v6, Lio/branch/search/r0;

    iget-object v7, v15, Lio/branch/search/q0$d;->h:Ljava/lang/Object;

    check-cast v7, Lio/branch/search/r0;

    iget-object v8, v15, Lio/branch/search/q0$d;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v9, v15, Lio/branch/search/q0$d;->f:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v15, Lio/branch/search/q0$d;->e:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    iget-object v11, v15, Lio/branch/search/q0$d;->d:Ljava/lang/Object;

    check-cast v11, Lio/branch/search/BranchLocalSearchRequest;

    iget-object v12, v15, Lio/branch/search/q0$d;->c:Ljava/lang/Object;

    check-cast v12, Lio/branch/search/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v2, v1

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object v1, v9

    goto/16 :goto_6

    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->h()I

    move-result v0

    int-to-long v1, v0

    if-eqz p3, :cond_1

    move-object/from16 v13, p3

    goto :goto_1

    :cond_1
    invoke-static {}, Lio/branch/search/c0;->a()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    :goto_1
    invoke-static {}, Lio/branch/search/c0;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lio/branch/search/BranchLocalSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v4

    :goto_3
    if-eqz v0, :cond_4

    sget-object v7, Lio/branch/search/s0;->Companion:Lio/branch/search/s0$a;

    new-instance v8, Lio/branch/search/BranchLocalError$EmptyQuery;

    invoke-direct {v8}, Lio/branch/search/BranchLocalError$EmptyQuery;-><init>()V

    new-instance v9, Lio/branch/search/c0;

    const-string v2, "local_search"

    const-string v3, "app"

    const-string v4, "local_search"

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v5, v13

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lio/branch/search/c0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v7, v8, v9}, Lio/branch/search/s0$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/c0;)Lio/branch/search/s0;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lio/branch/search/BranchLocalSearchRequest;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->i:Lio/branch/search/g0;

    sget-object v7, Lio/branch/search/g0$a;->b:Lio/branch/search/g0$a;

    invoke-interface {v0, v7}, Lio/branch/search/g0;->a(Lio/branch/search/g0$a;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    new-instance v16, Lio/branch/search/r0;

    new-instance v17, Lio/branch/search/c0;

    const-string v9, "local_search"

    const-string v10, "app"

    const-string v11, "local_search"

    move-object/from16 v7, v17

    move-object/from16 v8, p1

    move-object v0, v12

    move-object v12, v13

    move-object/from16 p3, v13

    move-object v13, v0

    invoke-direct/range {v7 .. v13}, Lio/branch/search/c0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v7, Lio/branch/search/q0$f;

    invoke-direct {v7, v6, v14}, Lio/branch/search/q0$f;-><init>(Lio/branch/search/l;Lio/branch/search/BranchLocalSearchRequest;)V

    const-string v8, "SQL"

    move-object/from16 v0, v16

    move-wide v11, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v10, v3

    move-object v3, v8

    move v9, v4

    move-object/from16 v4, v17

    move-object v8, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lio/branch/search/r0;-><init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lio/branch/search/c0;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v5, v16

    goto :goto_5

    :cond_6
    :goto_4
    move-object v10, v3

    move v9, v4

    move-object v8, v5

    move-object/from16 p3, v13

    move-object v13, v12

    move-wide v11, v1

    move-object v5, v10

    :goto_5
    new-instance v4, Lio/branch/search/r0;

    new-instance v16, Lio/branch/search/c0;

    const-string v0, "local_search"

    const-string v1, "app"

    const-string v2, "local_search"

    move-object/from16 v7, v16

    move-object v3, v8

    move-object/from16 v8, p1

    move-object v9, v0

    move-object v0, v10

    move-object v10, v1

    move-wide/from16 v19, v11

    move-object v11, v2

    move-object/from16 v12, p3

    move-object v2, v13

    invoke-direct/range {v7 .. v13}, Lio/branch/search/c0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v7, Lio/branch/search/q0$e;

    invoke-direct {v7, v6, v14}, Lio/branch/search/q0$e;-><init>(Lio/branch/search/l;Lio/branch/search/BranchLocalSearchRequest;)V

    const-string v8, "SQL_ADS"

    move-object v13, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v12, v2

    move-object/from16 v2, p2

    move-object v11, v3

    move-object v3, v8

    move-object v10, v4

    move-object/from16 v4, v16

    move-object v8, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lio/branch/search/r0;-><init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lio/branch/search/c0;Lkotlin/jvm/functions/Function1;)V

    if-eqz v8, :cond_8

    iput-object v6, v15, Lio/branch/search/q0$d;->c:Ljava/lang/Object;

    iput-object v14, v15, Lio/branch/search/q0$d;->d:Ljava/lang/Object;

    move-object/from16 v0, p2

    iput-object v0, v15, Lio/branch/search/q0$d;->e:Ljava/lang/Object;

    move-object/from16 v1, p3

    iput-object v1, v15, Lio/branch/search/q0$d;->f:Ljava/lang/Object;

    iput-object v12, v15, Lio/branch/search/q0$d;->g:Ljava/lang/Object;

    iput-object v8, v15, Lio/branch/search/q0$d;->h:Ljava/lang/Object;

    iput-object v10, v15, Lio/branch/search/q0$d;->i:Ljava/lang/Object;

    move-wide/from16 v2, v19

    iput-wide v2, v15, Lio/branch/search/q0$d;->j:J

    const/4 v4, 0x1

    iput v4, v15, Lio/branch/search/q0$d;->b:I

    const/4 v5, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v7, v8

    move-object/from16 v18, v8

    move-wide v8, v2

    move-object/from16 v19, v10

    move v10, v5

    move-object v5, v11

    move-object v11, v15

    move-object/from16 v20, v12

    move/from16 v12, v16

    move-object/from16 v13, v17

    invoke-static/range {v7 .. v13}, Lio/branch/search/r0;->a(Lio/branch/search/r0;JZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_7

    return-object v5

    :cond_7
    move-object v10, v0

    move-object v12, v6

    move-object v0, v7

    move-object v11, v14

    :goto_6
    check-cast v0, Lio/branch/search/s0;

    move-wide v13, v2

    move-object/from16 v16, v10

    move-object/from16 v3, v18

    move-object v10, v1

    move-object/from16 v1, v19

    goto :goto_7

    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v18, v8

    move-object v5, v11

    move-wide/from16 v2, v19

    const/4 v4, 0x1

    move-object/from16 v19, v10

    move-object/from16 v20, v12

    move-object/from16 v16, v0

    move-object v10, v1

    move-object v12, v6

    move-object v11, v14

    move-object/from16 v1, v19

    const/4 v0, 0x0

    move-wide v13, v2

    move-object/from16 v3, v18

    :goto_7
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lio/branch/search/s0;->a()Lio/branch/search/s4;

    move-result-object v2

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    :goto_8
    instance-of v6, v2, Lio/branch/search/s4$b;

    if-eqz v6, :cond_a

    check-cast v2, Lio/branch/search/s4$b;

    invoke-virtual {v2}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3, v4}, Lio/branch/search/r0;->a(Z)V

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v3}, Lio/branch/search/r0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v5

    move-object v5, v2

    const/4 v2, 0x0

    goto :goto_a

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lio/branch/search/r0;->a()V

    :cond_b
    new-instance v0, Lio/branch/search/r0;

    new-instance v17, Lio/branch/search/c0;

    const-string v23, "local_search"

    const-string v24, "app"

    const-string v25, "local_search"

    move-object/from16 v21, v17

    move-object/from16 v22, v11

    move-object/from16 v26, v10

    move-object/from16 v27, v20

    invoke-direct/range {v21 .. v27}, Lio/branch/search/c0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v18, Lio/branch/search/q0$c;

    move-object/from16 v2, v18

    move-object v4, v15

    move-object v9, v5

    move-wide v5, v13

    move-object v7, v12

    move-object/from16 v8, v16

    move-object/from16 v28, v9

    move-object v9, v11

    move-object/from16 v11, v20

    invoke-direct/range {v2 .. v11}, Lio/branch/search/q0$c;-><init>(Lio/branch/search/r0;Lkotlin/coroutines/Continuation;JLio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;Lio/branch/search/BranchLocalSearchRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const-string v9, "FALLBACK"

    move-object v6, v0

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v11}, Lio/branch/search/r0;-><init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lio/branch/search/c0;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, v15, Lio/branch/search/q0$d;->c:Ljava/lang/Object;

    iput-object v0, v15, Lio/branch/search/q0$d;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v15, Lio/branch/search/q0$d;->e:Ljava/lang/Object;

    iput-object v2, v15, Lio/branch/search/q0$d;->f:Ljava/lang/Object;

    iput-object v2, v15, Lio/branch/search/q0$d;->g:Ljava/lang/Object;

    iput-object v2, v15, Lio/branch/search/q0$d;->h:Ljava/lang/Object;

    iput-object v2, v15, Lio/branch/search/q0$d;->i:Ljava/lang/Object;

    iput-wide v13, v15, Lio/branch/search/q0$d;->j:J

    const/4 v3, 0x2

    iput v3, v15, Lio/branch/search/q0$d;->b:I

    invoke-virtual {v0, v15}, Lio/branch/search/r0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, v28

    if-ne v3, v4, :cond_c

    return-object v4

    :cond_c
    :goto_9
    invoke-virtual {v0}, Lio/branch/search/r0;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_a
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/s0;

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v0, v15, Lio/branch/search/q0$d;->c:Ljava/lang/Object;

    iput-object v3, v15, Lio/branch/search/q0$d;->d:Ljava/lang/Object;

    iput-object v2, v15, Lio/branch/search/q0$d;->e:Ljava/lang/Object;

    iput-object v2, v15, Lio/branch/search/q0$d;->f:Ljava/lang/Object;

    iput-object v2, v15, Lio/branch/search/q0$d;->g:Ljava/lang/Object;

    iput-object v2, v15, Lio/branch/search/q0$d;->h:Ljava/lang/Object;

    iput-object v2, v15, Lio/branch/search/q0$d;->i:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v15, Lio/branch/search/q0$d;->b:I

    invoke-static {v1, v13, v14, v0, v15}, Lio/branch/search/q0;->a(Lio/branch/search/r0;JLio/branch/search/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_d

    return-object v4

    :cond_d
    move-object v1, v3

    :goto_b
    invoke-virtual {v0}, Lio/branch/search/s0;->b()Lio/branch/search/c0;

    move-result-object v2

    invoke-virtual {v0}, Lio/branch/search/s0;->a()Lio/branch/search/s4;

    move-result-object v3

    instance-of v4, v3, Lio/branch/search/s4$b;

    if-eqz v4, :cond_f

    check-cast v3, Lio/branch/search/s4$b;

    invoke-virtual {v3}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Lio/branch/search/BranchLocalSearchResult;

    invoke-virtual {v0}, Lio/branch/search/s0;->b()Lio/branch/search/c0;

    move-result-object v0

    iget-object v0, v0, Lio/branch/search/c0;->e:Ljava/lang/String;

    invoke-direct {v4, v3, v0}, Lio/branch/search/BranchLocalSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->i:Lio/branch/search/g0;

    sget-object v3, Lio/branch/search/g0$a;->a:Lio/branch/search/g0$a;

    invoke-interface {v0, v3}, Lio/branch/search/g0;->a(Lio/branch/search/g0$a;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lio/branch/search/v0;

    invoke-direct {v0, v4, v1}, Lio/branch/search/v0;-><init>(Lio/branch/search/BranchLocalSearchResult;Ljava/lang/String;)V

    goto :goto_c

    :cond_e
    move-object v0, v4

    :goto_c
    new-instance v3, Lio/branch/search/s4$b;

    invoke-direct {v3, v0}, Lio/branch/search/s4$b;-><init>(Ljava/lang/Object;)V

    goto :goto_d

    :cond_f
    instance-of v0, v3, Lio/branch/search/s4$a;

    if-eqz v0, :cond_10

    :goto_d
    new-instance v0, Lio/branch/search/s0;

    invoke-direct {v0, v2, v3}, Lio/branch/search/s0;-><init>(Lio/branch/search/c0;Lio/branch/search/s4;)V

    return-object v0

    :cond_10
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lio/branch/search/l;Lio/branch/search/BranchZeroStateRequest;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l;",
            "Lio/branch/search/BranchZeroStateRequest;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/s0<",
            "+",
            "Lio/branch/search/BranchZeroStateResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p3

    instance-of v1, v0, Lio/branch/search/q0$h;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/branch/search/q0$h;

    iget v2, v1, Lio/branch/search/q0$h;->b:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lio/branch/search/q0$h;->b:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/branch/search/q0$h;

    invoke-direct {v1, v0}, Lio/branch/search/q0$h;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v1

    iget-object v0, v7, Lio/branch/search/q0$h;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    iget v1, v7, Lio/branch/search/q0$h;->b:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v10, :cond_2

    if-ne v1, v9, :cond_1

    iget-object v1, v7, Lio/branch/search/q0$h;->d:Ljava/lang/Object;

    check-cast v1, Lio/branch/search/s0;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v1, v7, Lio/branch/search/q0$h;->c:J

    iget-object v3, v7, Lio/branch/search/q0$h;->d:Ljava/lang/Object;

    check-cast v3, Lio/branch/search/r0;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v3

    goto/16 :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lio/branch/search/c0;->a()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lio/branch/search/c0;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->a()I

    move-result v0

    int-to-long v4, v0

    new-instance v3, Lio/branch/search/r0;

    new-instance v20, Lio/branch/search/c0;

    const-string v13, "zero_state"

    const-string v14, "app"

    const-string v15, "zero_state"

    move-object/from16 v11, v20

    move-object/from16 v12, p1

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-direct/range {v11 .. v17}, Lio/branch/search/c0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v11, Lio/branch/search/q0$j;

    invoke-direct {v11, v6}, Lio/branch/search/q0$j;-><init>(Lio/branch/search/l;)V

    const-string v12, "SQL"

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v15, v3

    move-object v3, v12

    move-wide v13, v4

    move-object/from16 v4, v20

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lio/branch/search/r0;-><init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lio/branch/search/c0;Lkotlin/jvm/functions/Function1;)V

    new-instance v5, Lio/branch/search/r0;

    new-instance v4, Lio/branch/search/c0;

    const-string v0, "zero_state"

    const-string v1, "app"

    const-string v2, "zero_state"

    move-object v11, v4

    move-object/from16 v12, p1

    move-wide v9, v13

    move-object v13, v0

    move-object v14, v1

    move-object v3, v15

    move-object v15, v2

    invoke-direct/range {v11 .. v17}, Lio/branch/search/c0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v11, Lio/branch/search/q0$i;

    invoke-direct {v11, v6}, Lio/branch/search/q0$i;-><init>(Lio/branch/search/l;)V

    const-string v12, "SQL_ADS"

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v3

    move-object v3, v12

    move-object v12, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lio/branch/search/r0;-><init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lio/branch/search/c0;Lkotlin/jvm/functions/Function1;)V

    iput-object v12, v7, Lio/branch/search/q0$h;->d:Ljava/lang/Object;

    iput-wide v9, v7, Lio/branch/search/q0$h;->c:J

    const/4 v0, 0x1

    iput v0, v7, Lio/branch/search/q0$h;->b:I

    invoke-virtual {v6, v7}, Lio/branch/search/r0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_4

    return-object v8

    :cond_4
    move-wide v1, v9

    :goto_1
    check-cast v0, Lio/branch/search/s0;

    iput-object v0, v7, Lio/branch/search/q0$h;->d:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v7, Lio/branch/search/q0$h;->b:I

    invoke-static {v12, v1, v2, v0, v7}, Lio/branch/search/q0;->a(Lio/branch/search/r0;JLio/branch/search/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_5

    return-object v8

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lio/branch/search/s0;->b()Lio/branch/search/c0;

    move-result-object v1

    invoke-virtual {v0}, Lio/branch/search/s0;->a()Lio/branch/search/s4;

    move-result-object v2

    instance-of v3, v2, Lio/branch/search/s4$b;

    if-eqz v3, :cond_6

    check-cast v2, Lio/branch/search/s4$b;

    invoke-virtual {v2}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Lio/branch/search/BranchZeroStateResult;

    invoke-virtual {v0}, Lio/branch/search/s0;->b()Lio/branch/search/c0;

    move-result-object v0

    iget-object v0, v0, Lio/branch/search/c0;->e:Ljava/lang/String;

    invoke-direct {v3, v2, v0}, Lio/branch/search/BranchZeroStateResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    new-instance v2, Lio/branch/search/s4$b;

    invoke-direct {v2, v3}, Lio/branch/search/s4$b;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    instance-of v0, v2, Lio/branch/search/s4$a;

    if-eqz v0, :cond_7

    :goto_3
    new-instance v0, Lio/branch/search/s0;

    invoke-direct {v0, v1, v2}, Lio/branch/search/s0;-><init>(Lio/branch/search/c0;Lio/branch/search/s4;)V

    return-object v0

    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static final synthetic a(Lio/branch/search/r0;JLio/branch/search/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/r0<",
            "Lio/branch/search/t0;",
            ">;J",
            "Lio/branch/search/s0<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/branch/search/q0$a;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/branch/search/q0$a;

    iget v1, v0, Lio/branch/search/q0$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/branch/search/q0$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/branch/search/q0$a;

    invoke-direct {v0, p4}, Lio/branch/search/q0$a;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v5, v0

    iget-object p4, v5, Lio/branch/search/q0$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v5, Lio/branch/search/q0$a;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v5, Lio/branch/search/q0$a;->d:Ljava/lang/Object;

    move-object p3, p0

    check-cast p3, Lio/branch/search/s0;

    iget-object p0, v5, Lio/branch/search/q0$a;->c:Ljava/lang/Object;

    check-cast p0, Lio/branch/search/r0;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lio/branch/search/s0;->a()Lio/branch/search/s4;

    move-result-object p4

    instance-of p4, p4, Lio/branch/search/s4$b;

    if-eqz p4, :cond_4

    iput-object p0, v5, Lio/branch/search/q0$a;->c:Ljava/lang/Object;

    iput-object p3, v5, Lio/branch/search/q0$a;->d:Ljava/lang/Object;

    iput v2, v5, Lio/branch/search/q0$a;->b:I

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v1 .. v7}, Lio/branch/search/r0;->a(Lio/branch/search/r0;JZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p4, Lio/branch/search/s0;

    invoke-virtual {p3}, Lio/branch/search/s0;->b()Lio/branch/search/c0;

    move-result-object p1

    invoke-virtual {p4}, Lio/branch/search/s0;->b()Lio/branch/search/c0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/branch/search/c0;->a(Lio/branch/search/c0;)V

    invoke-virtual {p4}, Lio/branch/search/s0;->a()Lio/branch/search/s4;

    move-result-object p1

    instance-of p1, p1, Lio/branch/search/s4$b;

    if-eqz p1, :cond_4

    invoke-virtual {p4}, Lio/branch/search/s0;->a()Lio/branch/search/s4;

    move-result-object p1

    check-cast p1, Lio/branch/search/s4$b;

    invoke-virtual {p1}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p4}, Lio/branch/search/s0;->a()Lio/branch/search/s4;

    move-result-object p1

    check-cast p1, Lio/branch/search/s4$b;

    invoke-virtual {p1}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/t0;

    invoke-virtual {p3}, Lio/branch/search/s0;->a()Lio/branch/search/s4;

    move-result-object p2

    check-cast p2, Lio/branch/search/s4$b;

    invoke-virtual {p2}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p3}, Lio/branch/search/s0;->b()Lio/branch/search/c0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/branch/search/t0;->a(Ljava/util/List;Lio/branch/search/c0;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/branch/search/r0;->a(Z)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lio/branch/search/r0;->a()V

    goto :goto_2
.end method

.method public static final a(Lio/branch/search/l;)V
    .locals 1

    const-string v0, "branchSearch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/l;->d:Lio/branch/search/internal/interfaces/LocalInterface;

    const-string v0, "branchSearch.localInterface"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/internal/interfaces/LocalInterface;->d()Lio/branch/search/u1;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/u1;->c()V

    return-void
.end method

.method public static final a(Lio/branch/search/l;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V
    .locals 8

    const-string v0, "branchSearch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LIRewrite.localQueryHint"

    invoke-virtual {p0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lio/branch/search/BranchLocalError$OptedOut;

    invoke-direct {p1}, Lio/branch/search/BranchLocalError$OptedOut;-><init>()V

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError;->getInternalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/branch/search/IBranchLocalQueryHintEvents;->onBranchQueryHintError(Lio/branch/search/BranchLocalError;)V

    return-void

    :cond_0
    invoke-static {}, Lio/branch/search/p4;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lio/branch/search/q0$b;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, p2, v0}, Lio/branch/search/q0$b;-><init>(Lio/branch/search/l;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Lio/branch/search/s0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/s0<",
            "+",
            "Lio/branch/search/BranchQueryHintResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$track"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/s0;->a()Lio/branch/search/s4;

    move-result-object v0

    instance-of v0, v0, Lio/branch/search/s4$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/s0;->a()Lio/branch/search/s4;

    move-result-object v0

    check-cast v0, Lio/branch/search/s4$b;

    invoke-virtual {v0}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchQueryHintResult;

    invoke-virtual {v0}, Lio/branch/search/BranchQueryHintResult;->getHints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchQueryHint;

    invoke-virtual {p0}, Lio/branch/search/s0;->b()Lio/branch/search/c0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/branch/search/c0;->b(Lio/branch/search/AnalyticsEntity;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/branch/search/s0;->b()Lio/branch/search/c0;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/c0;->d()V

    return-void
.end method
