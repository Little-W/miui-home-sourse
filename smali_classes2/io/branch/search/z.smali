.class public Lio/branch/search/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lio/branch/search/AnalyticsEntity;

.field public e:Ljava/lang/Boolean;

.field public final f:Lio/branch/search/h;


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Lio/branch/search/z;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 4

    invoke-virtual {p0}, Lio/branch/search/z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "complete impression encounter for result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/z;->a:Lio/branch/search/AnalyticsEntity;

    invoke-virtual {v1}, Lio/branch/search/AnalyticsEntity;->getImpressionJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/z;->f:Lio/branch/search/h;

    iget-object v1, p0, Lio/branch/search/z;->a:Lio/branch/search/AnalyticsEntity;

    invoke-virtual {v1}, Lio/branch/search/AnalyticsEntity;->getImpressionId()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/branch/search/h;->a(IJ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/z;->e:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
