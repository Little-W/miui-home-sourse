.class public final Lio/branch/search/w4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/u4;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/q4;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/LinkEntityResolver;",
            "Lio/branch/search/u4;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;",
            "Lio/branch/search/BranchBaseLinkResult;",
            ")",
            "Lio/branch/search/q4;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/q4;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/LinkEntityResolver;->c()Lio/branch/search/internal/ui/StringResolver;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/branch/search/internal/ui/LinkEntityResolver;->a()Lio/branch/search/internal/ui/StringResolver;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1, p2, p3}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->isAd()Z

    move-result v5

    invoke-virtual {p0}, Lio/branch/search/internal/ui/LinkEntityResolver;->d()Lio/branch/search/internal/ui/ImageResolver;

    move-result-object v1

    invoke-virtual {p1}, Lio/branch/search/u4;->d()Lio/branch/search/o5;

    move-result-object v6

    invoke-static {v1, v6, p2, p3}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/o5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v6

    invoke-virtual {p0}, Lio/branch/search/internal/ui/LinkEntityResolver;->e()Lio/branch/search/internal/ui/ImageResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lio/branch/search/u4;->d()Lio/branch/search/o5;

    move-result-object v7

    invoke-static {v1, v7, p2, p3}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/o5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, v2

    :goto_1
    instance-of v8, p3, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getContainerType()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    :goto_2
    move-object v11, v1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lio/branch/search/u4;->b()Lio/branch/search/t4;

    move-result-object v1

    sget-object v11, Lio/branch/search/v4;->c:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v11, v1

    if-eq v1, v10, :cond_4

    if-eq v1, v9, :cond_3

    move-object v11, v2

    goto :goto_3

    :cond_3
    const-string v1, "remote_search"

    goto :goto_2

    :cond_4
    const-string v1, "local_search"

    goto :goto_2

    :goto_3
    invoke-virtual {p3}, Lio/branch/search/BranchBaseLinkResult;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v10, v1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lio/branch/search/u4;->b()Lio/branch/search/t4;

    move-result-object p1

    sget-object v1, Lio/branch/search/v4;->d:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v10, :cond_6

    if-eq p1, v9, :cond_6

    move-object v10, v2

    goto :goto_4

    :cond_6
    invoke-static {p3}, Lio/branch/search/w4;->a(Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object p1

    move-object v10, p1

    :goto_4
    invoke-virtual {p0}, Lio/branch/search/internal/ui/LinkEntityResolver;->b()Lio/branch/search/internal/ui/ExtraResolver;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p0, p2, p3}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/ExtraResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/BranchExtra;

    move-result-object p0

    goto :goto_5

    :cond_7
    move-object p0, v2

    :goto_5
    move-object v1, v0

    move-object v2, p3

    move-object v9, v11

    move-object v11, p0

    invoke-direct/range {v1 .. v11}, Lio/branch/search/q4;-><init>(Lio/branch/search/BranchBaseLinkResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/ImageLoadingStrategy;Lio/branch/search/ui/ImageLoadingStrategy;ZLjava/lang/String;Ljava/lang/String;Lio/branch/search/ui/BranchExtra;)V

    return-object v0
.end method

.method public static final a(Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;
    .locals 4

    instance-of v0, p0, Lio/branch/search/BranchLinkResult;

    const-string v1, "app"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    check-cast p0, Lio/branch/search/BranchLinkResult;

    invoke-virtual {p0}, Lio/branch/search/BranchLinkResult;->getType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.String).toLowerCase()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, -0x5fc3fc12

    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_5

    const v2, 0x17a21

    if-eq v0, v2, :cond_4

    const v1, 0x40d9ff54

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "app option"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_5
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_6
    const-string v0, "app:option"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    const-string v1, "content"

    goto :goto_4

    :cond_8
    instance-of p0, p0, Lio/branch/search/BranchLocalLinkResult;

    if-eqz p0, :cond_9

    :goto_2
    const-string v1, "shortcut"

    goto :goto_4

    :cond_9
    :goto_3
    move-object v1, v2

    :goto_4
    return-object v1
.end method

.method public static final a(Lio/branch/search/internal/ui/AppEntityResolver;Lio/branch/search/u4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/AppEntityResolver;",
            "Lio/branch/search/u4;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;)",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p2

    const-string v0, "$this$resolve"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_6

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/branch/search/u4;->c()Lio/branch/search/l;

    move-result-object v4

    invoke-virtual {v4}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lio/branch/search/Util;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v13, Lio/branch/search/o4;

    invoke-virtual/range {p0 .. p0}, Lio/branch/search/internal/ui/AppEntityResolver;->c()Lio/branch/search/internal/ui/StringResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/branch/search/internal/ui/AppEntityResolver;->a()Lio/branch/search/internal/ui/StringResolver;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6, v1, v5}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lio/branch/search/internal/ui/AppEntityResolver;->d()Lio/branch/search/internal/ui/ImageResolver;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lio/branch/search/u4;->d()Lio/branch/search/o5;

    move-result-object v9

    invoke-static {v8, v9, v1, v5}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/o5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lio/branch/search/internal/ui/AppEntityResolver;->e()Lio/branch/search/internal/ui/ImageResolver;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual/range {p1 .. p1}, Lio/branch/search/u4;->d()Lio/branch/search/o5;

    move-result-object v10

    invoke-static {v9, v10, v1, v5}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/o5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v5

    :goto_2
    instance-of v10, v1, Lio/branch/search/BranchLocalAppResult;

    invoke-virtual/range {p2 .. p2}, Lio/branch/search/BranchBaseAppResult;->getContainerType()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v14, 0x1

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lio/branch/search/u4;->b()Lio/branch/search/t4;

    move-result-object v11

    sget-object v15, Lio/branch/search/v4;->a:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v15, v11

    if-eq v11, v14, :cond_5

    if-eq v11, v12, :cond_4

    move-object v11, v5

    goto :goto_3

    :cond_4
    const-string v11, "remote_search"

    goto :goto_3

    :cond_5
    const-string v11, "local_search"

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lio/branch/search/BranchBaseAppResult;->getContentType()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lio/branch/search/u4;->b()Lio/branch/search/t4;

    move-result-object v3

    sget-object v15, Lio/branch/search/v4;->b:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v15, v3

    if-eq v3, v14, :cond_7

    if-eq v3, v12, :cond_7

    move-object v15, v5

    goto :goto_4

    :cond_7
    move-object v15, v0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lio/branch/search/internal/ui/AppEntityResolver;->b()Lio/branch/search/internal/ui/ExtraResolver;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0, v1, v5}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/ExtraResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/BranchExtra;

    move-result-object v0

    move-object v12, v0

    goto :goto_5

    :cond_8
    move-object v12, v5

    :goto_5
    const/16 v14, 0x8

    const/16 v16, 0x0

    move-object v0, v13

    move-object/from16 v1, p2

    move-object v2, v4

    move-object v3, v6

    move v4, v7

    move-object v5, v8

    move-object v6, v9

    move v7, v10

    move-object v8, v11

    move-object v9, v15

    move-object v10, v12

    move v11, v14

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lio/branch/search/o4;-><init>(Lio/branch/search/BranchBaseAppResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/ImageLoadingStrategy;Lio/branch/search/ui/ImageLoadingStrategy;ZLjava/lang/String;Ljava/lang/String;Lio/branch/search/ui/BranchExtra;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lio/branch/search/u4;->g()Lio/branch/search/m0;

    move-result-object v0

    const-string v2, "Unable to launch app"

    invoke-virtual {v0, v1, v2}, Lio/branch/search/m0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_6
    return-object v0
.end method

.method public static final a(Lio/branch/search/internal/ui/ContainerResolver;Ljava/util/List;Lio/branch/search/u4;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/ContainerResolver;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;",
            "Lio/branch/search/u4;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchContainer;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getContainerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of p1, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    move-object p1, p0

    check-cast p1, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    invoke-virtual {p1}, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->f()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->f()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v0

    :cond_2
    invoke-virtual {p1}, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lio/branch/search/u4;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-interface {v4, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v5}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lio/branch/search/u4;->a(Z)V

    invoke-virtual {p2}, Lio/branch/search/u4;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object v6

    invoke-virtual {v6}, Lio/branch/search/internal/ui/AdLogic;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v6

    invoke-virtual {v5}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "it.links[0]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lio/branch/search/BranchBaseLinkResult;

    invoke-static {v6, p2, v5, v7}, Lio/branch/search/w4;->a(Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/u4;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/q4;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->d()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object v6

    invoke-static {v6, p2, v5}, Lio/branch/search/w4;->a(Lio/branch/search/internal/ui/AppEntityResolver;Lio/branch/search/u4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;

    move-result-object v5

    :goto_2
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver;->c()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lio/branch/search/p4;

    invoke-direct {p1, v2, v1, v4, p0}, Lio/branch/search/p4;-><init>(Ljava/lang/String;Lio/branch/search/ui/ImageLoadingStrategy;Ljava/util/List;Ljava/lang/String;)V

    :goto_3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_8

    :cond_5
    instance-of p1, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    if-eqz p1, :cond_9

    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/BranchBaseAppResult;

    new-instance v3, Lio/branch/search/p4;

    move-object v4, p0

    check-cast v4, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    invoke-virtual {v4}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->d()Lio/branch/search/internal/ui/StringResolver;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {v5, v2, v1}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_6
    move-object v5, v1

    :goto_5
    invoke-virtual {v4}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->e()Lio/branch/search/internal/ui/ImageResolver;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p2}, Lio/branch/search/u4;->d()Lio/branch/search/o5;

    move-result-object v7

    invoke-static {v6, v7, v2, v1}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/o5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object v6

    goto :goto_6

    :cond_7
    move-object v6, v1

    :goto_6
    invoke-virtual {v4, p2, v2}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a(Lio/branch/search/u4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v6, v2, v4}, Lio/branch/search/p4;-><init>(Ljava/lang/String;Lio/branch/search/ui/ImageLoadingStrategy;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    move-object p0, p1

    goto :goto_8

    :cond_9
    instance-of p1, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    if-eqz p1, :cond_b

    move-object p1, p0

    check-cast p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    invoke-virtual {p1}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p1, p2, v4}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a(Lio/branch/search/u4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver;->c()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lio/branch/search/p4;

    invoke-direct {p1, v2, v1, v3, p0}, Lio/branch/search/p4;-><init>(Ljava/lang/String;Lio/branch/search/ui/ImageLoadingStrategy;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_3

    :goto_8
    return-object p0

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/l;Ljava/util/List;Lio/branch/search/m0;Lio/branch/search/t4;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/UISkeletonResolver;",
            "Lio/branch/search/l;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;",
            "Lio/branch/search/m0;",
            "Lio/branch/search/t4;",
            "Z)",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchContainer;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    const-string v2, "$this$resolve"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "branchSearch"

    move-object v4, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "apps"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "virtualRequest"

    move-object/from16 v5, p3

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "api"

    move-object/from16 v9, p4

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lio/branch/search/u4;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/UISkeletonResolver;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object v6

    sget-object v7, Lio/branch/search/w4$a;->a:Lio/branch/search/w4$a;

    new-instance v8, Lio/branch/search/o5;

    invoke-virtual {p1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v3

    const-string v10, "branchSearch.applicationContext"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v3}, Lio/branch/search/o5;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    const/16 v11, 0x40

    const/4 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lio/branch/search/u4;-><init>(Lio/branch/search/l;Lio/branch/search/m0;Lio/branch/search/internal/ui/AdLogic;Lkotlin/jvm/functions/Function2;Lio/branch/search/o5;Lio/branch/search/t4;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v3, p5

    invoke-static {p0, p2, v2, v3}, Lio/branch/search/w4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/List;Lio/branch/search/u4;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/l;Ljava/util/List;Lio/branch/search/m0;Lio/branch/search/t4;ZILjava/lang/Object;)Ljava/util/List;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/branch/search/w4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/l;Ljava/util/List;Lio/branch/search/m0;Lio/branch/search/t4;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/List;Lio/branch/search/u4;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/UISkeletonResolver;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;",
            "Lio/branch/search/u4;",
            "Z)",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchContainer;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    instance-of v0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    if-eqz v0, :cond_c

    check-cast p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/internal/ui/ContainerResolver;

    invoke-static {v1, p1, p2}, Lio/branch/search/w4;->a(Lio/branch/search/internal/ui/ContainerResolver;Ljava/util/List;Lio/branch/search/u4;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/branch/search/ui/BranchContainer;

    invoke-interface {v3}, Lio/branch/search/ui/BranchContainer;->getContent()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/branch/search/ui/BranchContainer;

    invoke-interface {p3}, Lio/branch/search/ui/BranchContainer;->getContent()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/ui/BranchEntity;

    instance-of v3, v0, Lio/branch/search/o4;

    if-eqz v3, :cond_7

    invoke-virtual {p2}, Lio/branch/search/u4;->g()Lio/branch/search/m0;

    move-result-object v3

    check-cast v0, Lio/branch/search/o4;

    invoke-virtual {v0}, Lio/branch/search/o4;->a()Lio/branch/search/BranchBaseAppResult;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v0}, Lio/branch/search/m0;->b(Lio/branch/search/AnalyticsEntity;)V

    goto :goto_3

    :cond_7
    instance-of v3, v0, Lio/branch/search/q4;

    if-eqz v3, :cond_8

    invoke-virtual {p2}, Lio/branch/search/u4;->g()Lio/branch/search/m0;

    move-result-object v3

    check-cast v0, Lio/branch/search/q4;

    invoke-virtual {v0}, Lio/branch/search/q4;->a()Lio/branch/search/BranchBaseLinkResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_8
    const-string v3, "WTF"

    :try_start_1
    invoke-static {}, Lio/branch/search/e0;->a()Lio/branch/search/g0;

    move-result-object v4

    invoke-virtual {v4}, Lio/branch/search/g0;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_a

    goto :goto_6

    :cond_a
    move v4, v2

    goto :goto_7

    :cond_b
    :goto_6
    move v4, v1

    :goto_7
    if-nez v4, :cond_6

    const/16 v4, 0x1000

    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_c
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p2}, Lio/branch/search/u4;->c()Lio/branch/search/l;

    move-result-object p1

    invoke-virtual {p2}, Lio/branch/search/u4;->g()Lio/branch/search/m0;

    move-result-object p2

    iget-object p2, p2, Lio/branch/search/m0;->f:Ljava/lang/String;

    const-string p3, "request_id"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "UISkeletonResolver.resolve"

    invoke-virtual {p1, p3, p0, p2}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_d
    :goto_9
    return-object p0
.end method

.method public static final a(Lio/branch/search/u4;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/u4;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;)",
            "Ljava/util/List<",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;"
        }
    .end annotation

    const-string v0, "$this$adjustExistingAd"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appsRaw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p0}, Lio/branch/search/u4;->f()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lio/branch/search/u4;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object p1

    instance-of v1, p1, Lio/branch/search/internal/ui/AdLogic$Static;

    if-eqz v1, :cond_3

    goto/16 :goto_5

    :cond_3
    instance-of p1, p1, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    if-eqz p1, :cond_b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v4

    :goto_2
    if-ne v2, v4, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_7

    goto :goto_3

    :cond_7
    if-nez v2, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    :cond_8
    :goto_3
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p0}, Lio/branch/search/u4;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object p0

    check-cast p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->b()I

    move-result p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-interface {v0, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_a
    :goto_5
    return-object v0

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
