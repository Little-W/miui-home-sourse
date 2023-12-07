.class public abstract Lio/branch/search/f3;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/KNetworkUsageCappingRule;Lio/branch/search/d5;)J
    .locals 2

    invoke-virtual {p1}, Lio/branch/search/KNetworkUsageCappingRule;->f()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/branch/search/d5;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lio/branch/search/KNetworkUsageCappingRule;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/KNetworkUsageCappingRule;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lio/branch/search/f3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1}, Lio/branch/search/KNetworkUsageCappingRule;->c()J

    move-result-wide p0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public abstract a(Lio/branch/search/e3;)J
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public a(Lio/branch/search/KBranchRemoteConfiguration;Ljava/lang/String;JLjava/lang/String;Lio/branch/search/d5;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Lio/branch/search/d5;->c(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lio/branch/search/e3;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p5

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lio/branch/search/e3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lio/branch/search/f3;->b(Lio/branch/search/e3;)V

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->o()I

    move-result p1

    invoke-virtual {p6, p1}, Lio/branch/search/d5;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/branch/search/f3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public a(Lio/branch/search/KBranchRemoteConfiguration;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/d5;)Z
    .locals 4

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->n()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/KNetworkUsageCappingRule;

    sget-object v1, Lio/branch/search/KNetworkUsageCappingRule;->Companion:Lio/branch/search/KNetworkUsageCappingRule$Companion;

    invoke-virtual {v1, p2, p3, v0}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/KNetworkUsageCappingRule;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p4}, Lio/branch/search/f3;->a(Lio/branch/search/KNetworkUsageCappingRule;Lio/branch/search/d5;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public b(Lio/branch/search/e3;)V
    .locals 7

    invoke-virtual {p0, p1}, Lio/branch/search/f3;->a(Lio/branch/search/e3;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v2, p1, Lio/branch/search/e3;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/branch/search/e3;->b:Ljava/lang/String;

    iget-object v4, p1, Lio/branch/search/e3;->c:Ljava/lang/String;

    iget-wide v5, p1, Lio/branch/search/e3;->d:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lio/branch/search/f3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
