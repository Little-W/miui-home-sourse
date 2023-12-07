.class public final Lio/branch/search/ui/ImageLoadingStrategy$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/ui/ImageLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/ui/ImageLoadingStrategy$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromApp(Lio/branch/search/o5;Lio/branch/search/BranchBaseAppResult;)Lio/branch/search/ui/ImageLoadingStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/o5;",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;)",
            "Lio/branch/search/ui/ImageLoadingStrategy;"
        }
    .end annotation

    const-string p0, "contextDelegate"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "app"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "app.packageName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lio/branch/search/o5;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    const-string v0, "app.userHandle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/branch/search/ui/ImageLoadingStrategy$AppIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {}, Lio/branch/search/v0;->b()Lio/branch/search/v0;

    move-result-object p0

    new-instance p1, Lio/branch/search/w0;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getResultType()Lio/branch/search/k;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/branch/search/w0;-><init>(Ljava/lang/String;Lio/branch/search/k;)V

    invoke-virtual {p0, p1}, Lio/branch/search/v0;->a(Lio/branch/search/w0;)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    new-instance p1, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cachedImageFile.path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    instance-of p1, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Lcom/bumptech/glide/load/engine/GlideException;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to load resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appIconUrl = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageLoadingStrategy.fromApp"

    invoke-static {v0, p1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    new-instance p0, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app.appIconUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/branch/search/BranchBaseAppResult;->getResultType()Lio/branch/search/k;

    move-result-object p2

    const-string v0, "app.resultType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/branch/search/ui/ImageLoadingStrategy$Url;-><init>(Ljava/lang/String;Lio/branch/search/k;Lio/branch/search/ui/ImageLoadingStrategy;)V

    return-object p0
.end method

.method public final fromLink(Lio/branch/search/o5;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;
    .locals 5

    const-string v0, "contextDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lio/branch/search/BranchLocalLinkResult;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->findShortcut()Lio/branch/search/i$h;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;

    check-cast p2, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "link.destinationPackageName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, v0, Lio/branch/search/i$h;->d:Landroid/os/UserHandle;

    const-string v1, "it.user"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lio/branch/search/i$h;->c:Ljava/lang/String;

    const-string v1, "it.id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lio/branch/search/ui/ImageLoadingStrategy$Shortcut;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "link.parent"

    if-nez v0, :cond_3

    :try_start_0
    invoke-static {}, Lio/branch/search/v0;->b()Lio/branch/search/v0;

    move-result-object v0

    new-instance v2, Lio/branch/search/w0;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->getResultType()Lio/branch/search/k;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lio/branch/search/w0;-><init>(Ljava/lang/String;Lio/branch/search/k;)V

    invoke-virtual {v0, v2}, Lio/branch/search/v0;->a(Lio/branch/search/w0;)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    new-instance v2, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cachedImageFile.path"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lio/branch/search/ui/ImageLoadingStrategy$FromCache;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    instance-of v2, v0, Ljava/util/concurrent/ExecutionException;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v3, v2, Lcom/bumptech/glide/load/engine/GlideException;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to load resource"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", imageUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageLoadingStrategy.fromLink"

    invoke-static {v3, v2, v0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    new-instance v0, Lio/branch/search/ui/ImageLoadingStrategy$Url;

    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "link.imageUrl"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->getResultType()Lio/branch/search/k;

    move-result-object v3

    const-string v4, "link.resultType"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->getParent()Lio/branch/search/BranchBaseAppResult;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lio/branch/search/ui/ImageLoadingStrategy$Companion;->fromApp(Lio/branch/search/o5;Lio/branch/search/BranchBaseAppResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object p0

    invoke-direct {v0, v2, v3, p0}, Lio/branch/search/ui/ImageLoadingStrategy$Url;-><init>(Ljava/lang/String;Lio/branch/search/k;Lio/branch/search/ui/ImageLoadingStrategy;)V

    return-object v0

    :cond_3
    invoke-virtual {p2}, Lio/branch/search/BranchBaseLinkResult;->getParent()Lio/branch/search/BranchBaseAppResult;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lio/branch/search/ui/ImageLoadingStrategy$Companion;->fromApp(Lio/branch/search/o5;Lio/branch/search/BranchBaseAppResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object p0

    return-object p0
.end method
