.class public Lio/branch/search/p1$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/p1$f;",
        "Lio/branch/search/p1<",
        "Lio/branch/search/t0;",
        "Lio/branch/search/t0;",
        ">;"
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

    invoke-virtual {p0, p1}, Lio/branch/search/p1$d;->c(Landroid/database/Cursor;)Lio/branch/search/t0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/p1$d;->b(Ljava/util/List;)Lio/branch/search/t0;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Lio/branch/search/t0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/t0;",
            ">;)",
            "Lio/branch/search/t0;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/t0;

    invoke-virtual {v1}, Lio/branch/search/t0;->a()Lio/branch/search/BranchLocalAppResult;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    const-string v3, "ad has no links"

    invoke-virtual {v1, v2, v3}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {v1}, Lio/branch/search/t0;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    invoke-virtual {v4, v2}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;)V

    iget-object v2, p0, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    iget-object v1, v1, Lio/branch/search/t0;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    invoke-virtual {v1, v2}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;)V

    iget-object v1, p0, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    const-string v2, "lost on device auction"

    :goto_1
    invoke-virtual {v1, v3, v2}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lio/branch/search/p1$f;->f:Ljava/util/Map;

    invoke-virtual {v1, v4}, Lio/branch/search/t0;->a(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    invoke-virtual {v1, v2}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;)V

    iget-object v1, p0, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    const-string v2, "failed image validation"

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public c(Landroid/database/Cursor;)Lio/branch/search/t0;
    .locals 9

    iget-object v0, p0, Lio/branch/search/p1$f;->i:Lio/branch/search/l;

    invoke-virtual {p0, p1, v0}, Lio/branch/search/p1$f;->a(Landroid/database/Cursor;Lio/branch/search/l;)Lio/branch/search/BranchLocalAppResult;

    move-result-object v2

    const-string v0, "ad_position"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "ad_position"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_0
    const-string v4, "can_show_alone"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v3, :cond_2

    const-string v4, "can_show_alone"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v5

    :goto_2
    const-string v1, "always_remove_with"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const-string v1, "always_remove_with"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v6, v1

    new-instance v8, Lio/branch/search/t0;

    invoke-virtual {p0, p1}, Lio/branch/search/p1$f;->b(Landroid/database/Cursor;)Z

    move-result v5

    iget-object v7, p0, Lio/branch/search/p1$f;->i:Lio/branch/search/l;

    move-object v1, v8

    move v3, v0

    invoke-direct/range {v1 .. v7}, Lio/branch/search/t0;-><init>(Lio/branch/search/BranchLocalAppResult;IZZLjava/lang/String;Lio/branch/search/l;)V

    return-object v8
.end method
