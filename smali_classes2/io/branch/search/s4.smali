.class public final Lio/branch/search/s4;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lio/branch/search/internal/ui/ExtraResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/BranchExtra;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/ExtraResolver;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;",
            "Lio/branch/search/BranchBaseLinkResult;",
            ")",
            "Lio/branch/search/ui/BranchExtra;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;->a:Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    instance-of p0, p2, Lio/branch/search/BranchAppStoreLinkResult;

    if-eqz p0, :cond_0

    new-instance p0, Lio/branch/search/ui/BranchExtra$AppStoreExtra;

    check-cast p2, Lio/branch/search/BranchAppStoreLinkResult;

    invoke-virtual {p2}, Lio/branch/search/BranchAppStoreLinkResult;->getAverageRating()F

    move-result v1

    invoke-virtual {p2}, Lio/branch/search/BranchAppStoreLinkResult;->getRatingsCount()J

    move-result-wide v2

    invoke-virtual {p2}, Lio/branch/search/BranchAppStoreLinkResult;->getDownloadsCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lio/branch/search/BranchAppStoreLinkResult;->getAppSizeInMB()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/branch/search/ui/BranchExtra$AppStoreExtra;-><init>(FJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/o5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/ImageResolver;",
            "Lio/branch/search/o5;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;",
            "Lio/branch/search/BranchBaseLinkResult;",
            ")",
            "Lio/branch/search/ui/ImageLoadingStrategy;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lio/branch/search/ui/ImageLoadingStrategy;->Companion:Lio/branch/search/ui/ImageLoadingStrategy$Companion;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/ui/ImageLoadingStrategy$Companion;->fromApp(Lio/branch/search/o5;Lio/branch/search/BranchBaseAppResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p2, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    sget-object p2, Lio/branch/search/ui/ImageLoadingStrategy;->Companion:Lio/branch/search/ui/ImageLoadingStrategy$Companion;

    invoke-virtual {p2, p1, p3}, Lio/branch/search/ui/ImageLoadingStrategy$Companion;->fromLink(Lio/branch/search/o5;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object p0, p1

    :goto_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Used "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to resolve for an app!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/StringResolver;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;",
            "Lio/branch/search/BranchBaseLinkResult;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lio/branch/search/internal/ui/StringResolver$Constant;

    if-eqz v0, :cond_0

    check-cast p0, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/StringResolver$Constant;->a()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p0, Lio/branch/search/internal/ui/StringResolver$Template;

    if-eqz v0, :cond_1

    check-cast p0, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/StringResolver$Template;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/StringResolver$Template;->a()Lio/branch/search/internal/ui/StringResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lio/branch/search/s4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.String.format(format, *args)"

    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    sget-object v0, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "app.appName"

    goto :goto_0

    :cond_2
    sget-object p1, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, " to resolve for an app!"

    const-string v1, "Used "

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    sget-object p1, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    :goto_1
    move-object p0, p1

    :goto_2
    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
