.class public final Lio/branch/search/n4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/i4;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/LinkEntityResolver;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;",
            "Lio/branch/search/BranchBaseLinkResult;",
            ")",
            "Lio/branch/search/i4;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/i4;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/LinkEntityResolver;->b()Lio/branch/search/internal/ui/StringResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lio/branch/search/l4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/branch/search/internal/ui/LinkEntityResolver;->a()Lio/branch/search/internal/ui/StringResolver;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1, p1, p2}, Lio/branch/search/l4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->isAd()Z

    move-result v5

    invoke-virtual {p0}, Lio/branch/search/internal/ui/LinkEntityResolver;->c()Lio/branch/search/internal/ui/ImageResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lio/branch/search/l4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/Image;

    move-result-object v6

    invoke-virtual {p0}, Lio/branch/search/internal/ui/LinkEntityResolver;->d()Lio/branch/search/internal/ui/ImageResolver;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, p1, p2}, Lio/branch/search/l4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/Image;

    move-result-object p0

    move-object v7, p0

    goto :goto_1

    :cond_1
    move-object v7, v2

    :goto_1
    instance-of v8, p2, Lio/branch/search/BranchLocalLinkResult;

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lio/branch/search/i4;-><init>(Lio/branch/search/BranchBaseLinkResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/Image;Lio/branch/search/ui/Image;Z)V

    return-object v0
.end method

.method public static final a(Lio/branch/search/internal/ui/AppEntityResolver;Lio/branch/search/m4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/AppEntityResolver;",
            "Lio/branch/search/m4;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;)",
            "Ljava/util/List<",
            "Lio/branch/search/f4;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lio/branch/search/m4;->b()Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/branch/search/Util;->a(Lio/branch/search/l;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lio/branch/search/f4;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/AppEntityResolver;->b()Lio/branch/search/internal/ui/StringResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lio/branch/search/l4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/branch/search/internal/ui/AppEntityResolver;->a()Lio/branch/search/internal/ui/StringResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p2, v1}, Lio/branch/search/l4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p0}, Lio/branch/search/internal/ui/AppEntityResolver;->c()Lio/branch/search/internal/ui/ImageResolver;

    move-result-object v0

    invoke-static {v0, p2, v1}, Lio/branch/search/l4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/Image;

    move-result-object v6

    invoke-virtual {p0}, Lio/branch/search/internal/ui/AppEntityResolver;->d()Lio/branch/search/internal/ui/ImageResolver;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0, p2, v1}, Lio/branch/search/l4;->a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/Image;

    move-result-object p0

    move-object v7, p0

    goto :goto_2

    :cond_2
    move-object v7, v1

    :goto_2
    instance-of v8, p2, Lio/branch/search/BranchLocalAppResult;

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v10}, Lio/branch/search/f4;-><init>(Lio/branch/search/BranchBaseAppResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/Image;Lio/branch/search/ui/Image;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lio/branch/search/m4;->e()Lio/branch/search/c0;

    move-result-object p0

    const-string p1, "Unable to launch app"

    invoke-virtual {p0, p2, p1}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    goto :goto_0

    :goto_3
    return-object p0
.end method

.method public static final a(Lio/branch/search/internal/ui/ContainerResolver;Ljava/util/List;Lio/branch/search/m4;)Ljava/util/List;
    .locals 7
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
            "Lio/branch/search/m4;",
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

    instance-of v0, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/branch/search/m4;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-interface {v2, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v3}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lio/branch/search/m4;->a(Z)V

    invoke-virtual {p2}, Lio/branch/search/m4;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object v4

    invoke-virtual {v4}, Lio/branch/search/internal/ui/AdLogic;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v4

    invoke-virtual {v3}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "it.links[0]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lio/branch/search/BranchBaseLinkResult;

    invoke-static {v4, v3, v5}, Lio/branch/search/n4;->a(Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/i4;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->c()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object v4

    invoke-static {v4, p2, v3}, Lio/branch/search/n4;->a(Lio/branch/search/internal/ui/AppEntityResolver;Lio/branch/search/m4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;

    move-result-object v3

    :goto_1
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lio/branch/search/h4;

    invoke-direct {p0, v0, v2, v1}, Lio/branch/search/h4;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    :goto_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :cond_3
    instance-of v0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v3}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
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

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/BranchBaseAppResult;

    new-instance v3, Lio/branch/search/h4;

    move-object v4, p0

    check-cast v4, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    invoke-virtual {v4}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->c()Lio/branch/search/internal/ui/StringResolver;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    invoke-static {v5, v2, v6}, Lio/branch/search/l4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object v6

    :cond_6
    invoke-virtual {v4, p2, v2}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a(Lio/branch/search/m4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v6, v2, v1}, Lio/branch/search/h4;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object p0, p1

    goto :goto_6

    :cond_8
    instance-of v0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    if-eqz v0, :cond_a

    check-cast p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p0, p2, v3}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a(Lio/branch/search/m4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_5

    :cond_9
    new-instance p0, Lio/branch/search/h4;

    invoke-direct {p0, v0, v2, v1}, Lio/branch/search/h4;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_2

    :goto_6
    return-object p0

    :cond_a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/l;Ljava/util/List;Lio/branch/search/c0;Z)Ljava/util/List;
    .locals 9
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
            "Lio/branch/search/c0;",
            "Z)",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchContainer;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/m4;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/UISkeletonResolver;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object v4

    sget-object v5, Lio/branch/search/n4$a;->a:Lio/branch/search/n4$a;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v8}, Lio/branch/search/m4;-><init>(Lio/branch/search/l;Lio/branch/search/c0;Lio/branch/search/internal/ui/AdLogic;Lkotlin/jvm/functions/Function2;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :try_start_0
    instance-of p3, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    if-eqz p3, :cond_8

    check-cast p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b()Ljava/util/List;

    move-result-object p0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/internal/ui/ContainerResolver;

    invoke-static {v1, p2, v0}, Lio/branch/search/n4;->a(Lio/branch/search/internal/ui/ContainerResolver;Ljava/util/List;Lio/branch/search/m4;)Ljava/util/List;

    move-result-object v1

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lio/branch/search/ui/BranchContainer;

    invoke-interface {v1}, Lio/branch/search/ui/BranchContainer;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    goto :goto_5

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/branch/search/ui/BranchContainer;

    invoke-interface {p3}, Lio/branch/search/ui/BranchContainer;->getContent()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/branch/search/ui/BranchEntity;

    instance-of v1, p4, Lio/branch/search/f4;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lio/branch/search/m4;->e()Lio/branch/search/c0;

    move-result-object v1

    check-cast p4, Lio/branch/search/f4;

    invoke-virtual {p4}, Lio/branch/search/f4;->a()Lio/branch/search/BranchBaseAppResult;

    move-result-object p4

    :goto_4
    invoke-virtual {v1, p4}, Lio/branch/search/c0;->b(Lio/branch/search/AnalyticsEntity;)V

    goto :goto_3

    :cond_6
    instance-of v1, p4, Lio/branch/search/i4;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lio/branch/search/m4;->e()Lio/branch/search/c0;

    move-result-object v1

    check-cast p4, Lio/branch/search/i4;

    invoke-virtual {p4}, Lio/branch/search/i4;->a()Lio/branch/search/BranchBaseLinkResult;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_7
    const-string v1, "WTF"

    :try_start_1
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    const-string p2, "UISkeletonResolver.resolve"

    invoke-virtual {p1, p2, p0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_9
    :goto_5
    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/l;Ljava/util/List;Lio/branch/search/c0;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/branch/search/n4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/l;Ljava/util/List;Lio/branch/search/c0;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lio/branch/search/m4;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m4;",
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

    invoke-virtual {p0}, Lio/branch/search/m4;->d()Z

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
    invoke-virtual {p0}, Lio/branch/search/m4;->a()Lio/branch/search/internal/ui/AdLogic;

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

    invoke-virtual {p0}, Lio/branch/search/m4;->a()Lio/branch/search/internal/ui/AdLogic;

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
