.class public Lio/branch/search/AnalyticsEntity$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/AnalyticsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Float;

.field public final b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;


# virtual methods
.method public a(J)V
    .locals 2

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "encounter being completed again"

    invoke-static {p0}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/branch/search/AnalyticsEntity$a;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/AnalyticsEntity$a;->c:Ljava/lang/Long;

    return-void
.end method

.method public a()Z
    .locals 0

    iget-object p0, p0, Lio/branch/search/AnalyticsEntity$a;->c:Ljava/lang/Long;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 4

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity$a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "toJson called but isComplete = false"

    invoke-static {p0}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "area"

    :try_start_1
    iget-object v3, p0, Lio/branch/search/AnalyticsEntity$a;->a:Ljava/lang/Float;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "start_time"

    :try_start_2
    iget-object v3, p0, Lio/branch/search/AnalyticsEntity$a;->b:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "duration"

    :try_start_3
    iget-object p0, p0, Lio/branch/search/AnalyticsEntity$a;->c:Ljava/lang/Long;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Encounter.toJson"

    invoke-static {v0, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method
