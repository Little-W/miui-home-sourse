.class public Lio/branch/search/p1$e;
.super Lio/branch/search/p1$f;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/p1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/p1$f;",
        "Lio/branch/search/p1<",
        "Lio/branch/search/w0;",
        "Ljava/util/List<",
        "Lio/branch/search/BranchLocalAppResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/c0;Lio/branch/search/k;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/branch/search/p1$f;-><init>(Lio/branch/search/l;Lio/branch/search/c0;Lio/branch/search/k;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/p1$e;->c(Landroid/database/Cursor;)Lio/branch/search/w0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/p1$e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/w0;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/w0;

    iget-object v2, p0, Lio/branch/search/p1$f;->f:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lio/branch/search/w0;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lio/branch/search/w0;->a()Lio/branch/search/BranchLocalAppResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/branch/search/p1$f;->i:Lio/branch/search/l;

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/branch/search/Util;->a(Lio/branch/search/l;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no links & "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/branch/search/p1$f;->i:Lio/branch/search/l;

    invoke-virtual {v4}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/branch/search/Util;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "not installed"

    goto :goto_1

    :cond_1
    const-string v4, "not launchable"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    invoke-virtual {v3, v1}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;)V

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_4
    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public c(Landroid/database/Cursor;)Lio/branch/search/w0;
    .locals 2

    iget-object v0, p0, Lio/branch/search/p1$f;->i:Lio/branch/search/l;

    invoke-virtual {p0, p1, v0}, Lio/branch/search/p1$f;->a(Landroid/database/Cursor;Lio/branch/search/l;)Lio/branch/search/BranchLocalAppResult;

    move-result-object v0

    new-instance v1, Lio/branch/search/w0;

    invoke-virtual {p0, p1}, Lio/branch/search/p1$f;->b(Landroid/database/Cursor;)Z

    move-result p1

    invoke-direct {v1, v0, p1}, Lio/branch/search/w0;-><init>(Lio/branch/search/BranchLocalAppResult;Z)V

    return-object v1
.end method
