.class public Lio/branch/search/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/branch/search/BranchLocalAppResult;

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchLocalAppResult;IZZLjava/lang/String;Lio/branch/search/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/t0;->a:Lio/branch/search/BranchLocalAppResult;

    iput p2, p0, Lio/branch/search/t0;->b:I

    iput-boolean p3, p0, Lio/branch/search/t0;->c:Z

    iput-boolean p4, p0, Lio/branch/search/t0;->d:Z

    iput-object p5, p0, Lio/branch/search/t0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/BranchLocalAppResult;
    .locals 1

    iget-object v0, p0, Lio/branch/search/t0;->a:Lio/branch/search/BranchLocalAppResult;

    return-object v0
.end method

.method public a(Ljava/util/List;Lio/branch/search/c0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;",
            "Lio/branch/search/c0;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/branch/search/t0;->c:Z

    if-eqz v0, :cond_0

    iget-object p2, p0, Lio/branch/search/t0;->a:Lio/branch/search/BranchLocalAppResult;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/branch/search/t0;->a:Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {p1}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/AnalyticsEntity;

    const-string v1, "Ad couldn\'t be shown alone"

    invoke-virtual {p2, p1, v1}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    return v0

    :cond_1
    iget p2, p0, Lio/branch/search/t0;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lio/branch/search/t0;->a:Lio/branch/search/BranchLocalAppResult;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lio/branch/search/t0;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lio/branch/search/t0;->a:Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/FutureTarget;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lio/branch/search/t0;->a:Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    iget-object v2, p0, Lio/branch/search/t0;->a:Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {v2}, Lio/branch/search/BranchBaseLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/FutureTarget;

    if-eqz p1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/FutureTarget;

    :try_start_0
    invoke-interface {v0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    return v3

    :catch_0
    move-exception p1

    const-string v0, "BRANCH_AdsWrapper.showBasedOnImageCacheState"

    const-string v1, "cache lookup failed for url"

    invoke-static {v0, v1, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :cond_4
    return v1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lio/branch/search/t0;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
