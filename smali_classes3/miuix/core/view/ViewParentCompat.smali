.class public final Lmiuix/core/view/ViewParentCompat;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# direct methods
.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 2

    .line 455
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 457
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 459
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewParent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedFling"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 462
    :cond_0
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_1

    .line 463
    check-cast p0, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p0

    return p0

    .line 466
    :cond_1
    instance-of v0, p0, Lmiui/core/view/NestedScrollingParent;

    if-eqz v0, :cond_2

    .line 467
    check-cast p0, Lmiui/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3, p4}, Lmiui/core/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 2

    .line 496
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 498
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 500
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewParent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedPreFling"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 503
    :cond_0
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_1

    .line 504
    check-cast p0, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p0

    return p0

    .line 507
    :cond_1
    instance-of v0, p0, Lmiui/core/view/NestedScrollingParent;

    if-eqz v0, :cond_2

    .line 508
    check-cast p0, Lmiui/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3}, Lmiui/core/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 7

    .line 410
    instance-of v0, p0, Lmiui/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_0

    .line 411
    move-object v1, p0

    check-cast v1, Lmiui/core/view/NestedScrollingParent2;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lmiui/core/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    goto :goto_0

    .line 412
    :cond_0
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_1

    .line 414
    move-object v1, p0

    check-cast v1, Landroidx/core/view/NestedScrollingParent2;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroidx/core/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    goto :goto_0

    :cond_1
    if-nez p5, :cond_4

    .line 417
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p5, v0, :cond_2

    .line 419
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 421
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewParent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedPreScroll"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 424
    :cond_2
    instance-of p5, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz p5, :cond_3

    .line 425
    check-cast p0, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    goto :goto_0

    .line 427
    :cond_3
    instance-of p5, p0, Lmiui/core/view/NestedScrollingParent;

    if-eqz p5, :cond_4

    .line 428
    check-cast p0, Lmiui/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3, p4}, Lmiui/core/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V
    .locals 10

    move-object v1, p0

    .line 343
    instance-of v0, v1, Lmiui/core/view/NestedScrollingParent3;

    if-eqz v0, :cond_0

    .line 344
    check-cast v1, Lmiui/core/view/NestedScrollingParent3;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lmiui/core/view/NestedScrollingParent3;->onNestedScroll(Landroid/view/View;IIIII[I)V

    goto/16 :goto_0

    .line 346
    :cond_0
    instance-of v0, v1, Landroidx/core/view/NestedScrollingParent3;

    if-eqz v0, :cond_1

    .line 347
    check-cast v1, Landroidx/core/view/NestedScrollingParent3;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroidx/core/view/NestedScrollingParent3;->onNestedScroll(Landroid/view/View;IIIII[I)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 353
    aget v2, p7, v0

    add-int/2addr v2, p4

    aput v2, p7, v0

    const/4 v0, 0x1

    .line 354
    aget v2, p7, v0

    add-int/2addr v2, p5

    aput v2, p7, v0

    .line 357
    instance-of v0, v1, Lmiui/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_2

    .line 358
    move-object v3, v1

    check-cast v3, Lmiui/core/view/NestedScrollingParent2;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lmiui/core/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    goto/16 :goto_0

    .line 360
    :cond_2
    instance-of v0, v1, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_3

    .line 361
    move-object v3, v1

    check-cast v3, Landroidx/core/view/NestedScrollingParent2;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroidx/core/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    goto :goto_0

    :cond_3
    if-nez p6, :cond_6

    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    .line 367
    :try_start_0
    invoke-interface/range {p0 .. p5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewParent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not implement interface method onNestedScroll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewParentCompat"

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 373
    :cond_4
    instance-of v0, v1, Landroidx/core/view/NestedScrollingParent;

    if-eqz v0, :cond_5

    .line 374
    move-object v3, v1

    check-cast v3, Landroidx/core/view/NestedScrollingParent;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroidx/core/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    goto :goto_0

    .line 377
    :cond_5
    instance-of v0, v1, Lmiui/core/view/NestedScrollingParent;

    if-eqz v0, :cond_6

    .line 378
    move-object v3, v1

    check-cast v3, Lmiui/core/view/NestedScrollingParent;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lmiui/core/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 249
    instance-of v0, p0, Lmiui/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_0

    .line 250
    check-cast p0, Lmiui/core/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2, p3, p4}, Lmiui/core/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_0

    .line 252
    :cond_0
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_1

    .line 254
    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    if-nez p4, :cond_4

    .line 258
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p4, v0, :cond_2

    .line 260
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewParent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 265
    :cond_2
    instance-of p4, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz p4, :cond_3

    .line 266
    check-cast p0, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0

    .line 269
    :cond_3
    instance-of p4, p0, Lmiui/core/view/NestedScrollingParent;

    if-eqz p4, :cond_4

    .line 270
    check-cast p0, Lmiui/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3}, Lmiui/core/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 200
    instance-of v0, p0, Lmiui/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_0

    .line 201
    check-cast p0, Lmiui/core/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2, p3, p4}, Lmiui/core/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0

    .line 203
    :cond_0
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_1

    .line 205
    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0

    :cond_1
    if-nez p4, :cond_4

    .line 209
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p4, v0, :cond_2

    .line 211
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewParent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onStartNestedScroll"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 216
    :cond_2
    instance-of p4, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz p4, :cond_3

    .line 217
    check-cast p0, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    .line 220
    :cond_3
    instance-of p4, p0, Lmiui/core/view/NestedScrollingParent;

    if-eqz p4, :cond_4

    .line 221
    check-cast p0, Lmiui/core/view/NestedScrollingParent;

    invoke-interface {p0, p1, p2, p3}, Lmiui/core/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V
    .locals 1

    .line 291
    instance-of v0, p0, Lmiui/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_0

    .line 292
    check-cast p0, Lmiui/core/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2}, Lmiui/core/view/NestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    goto :goto_0

    .line 293
    :cond_0
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_1

    .line 295
    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2}, Landroidx/core/view/NestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_4

    .line 298
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_2

    .line 300
    :try_start_0
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ViewParent "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onStopNestedScroll"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 305
    :cond_2
    instance-of p2, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz p2, :cond_3

    .line 306
    check-cast p0, Landroidx/core/view/NestedScrollingParent;

    invoke-interface {p0, p1}, Landroidx/core/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    goto :goto_0

    .line 308
    :cond_3
    instance-of p2, p0, Lmiui/core/view/NestedScrollingParent;

    if-eqz p2, :cond_4

    .line 309
    check-cast p0, Lmiui/core/view/NestedScrollingParent;

    invoke-interface {p0, p1}, Lmiui/core/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method
