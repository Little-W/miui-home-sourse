.class public final Lio/branch/search/l4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/Image;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/internal/ui/ImageResolver;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;",
            "Lio/branch/search/BranchBaseLinkResult;",
            ")",
            "Lio/branch/search/ui/Image;"
        }
    .end annotation

    const-string v0, "$this$resolve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lio/branch/search/g4;

    invoke-direct {p0, p1}, Lio/branch/search/g4;-><init>(Lio/branch/search/BranchBaseAppResult;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    new-instance p0, Lio/branch/search/j4;

    invoke-direct {p0, p2}, Lio/branch/search/j4;-><init>(Lio/branch/search/BranchBaseLinkResult;)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Used "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {p0, p1, p2}, Lio/branch/search/l4;->a(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Ljava/lang/String;

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

    const-string v0, "Used "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to resolve for an app!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v0, "Used "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to resolve for an app!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
