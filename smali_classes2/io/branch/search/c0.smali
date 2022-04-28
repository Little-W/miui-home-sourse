.class public Lio/branch/search/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/branch/search/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/f<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/branch/search/AnalyticsEntity;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/branch/search/AnalyticsEntity;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/branch/search/AnalyticsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public k:I


# direct methods
.method public constructor <init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/f<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lio/branch/search/c0;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/branch/search/c0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public constructor <init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/f<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/c0;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/c0;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/branch/search/c0;->d:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/search/c0;->k:I

    iput-object p1, p0, Lio/branch/search/c0;->a:Lio/branch/search/f;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/branch/search/c0;->a()Ljava/lang/String;

    move-result-object p5

    :goto_0
    iput-object p5, p0, Lio/branch/search/c0;->e:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/c0;->f:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/c0;->g:Ljava/lang/String;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const-string p4, "null"

    :goto_1
    iput-object p4, p0, Lio/branch/search/c0;->h:Ljava/lang/String;

    const-string p1, "null"

    iput-object p1, p0, Lio/branch/search/c0;->i:Ljava/lang/String;

    iput-object p6, p0, Lio/branch/search/c0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/f<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/c0;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/c0;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/branch/search/c0;->d:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/search/c0;->k:I

    iput-object p1, p0, Lio/branch/search/c0;->a:Lio/branch/search/f;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/branch/search/c0;->a()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lio/branch/search/c0;->e:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/c0;->f:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/c0;->i:Ljava/lang/String;

    const-string p1, "null"

    iput-object p1, p0, Lio/branch/search/c0;->g:Ljava/lang/String;

    const-string p1, "null"

    iput-object p1, p0, Lio/branch/search/c0;->h:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/c0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a(Lio/branch/search/AnalyticsEntity;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/c0;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/c0;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/AnalyticsEntity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/c0;->b:Ljava/util/Map;

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p2, v1

    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lio/branch/search/c0;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/c0;->b:Ljava/util/Map;

    iget-object v1, p1, Lio/branch/search/c0;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lio/branch/search/c0;->c:Ljava/util/Map;

    iget-object v1, p1, Lio/branch/search/c0;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lio/branch/search/c0;->d:Ljava/util/Set;

    iget-object p1, p1, Lio/branch/search/c0;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b(Lio/branch/search/AnalyticsEntity;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/c0;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p0, Lio/branch/search/c0;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/branch/search/c0;->k:I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/branch/search/c0;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "rank"

    :try_start_1
    iget v1, p0, Lio/branch/search/c0;->k:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "VirtualRequest.deleteAll"

    invoke-static {v0, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget p1, p0, Lio/branch/search/c0;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/branch/search/c0;->k:I

    return-void

    :goto_1
    iget v0, p0, Lio/branch/search/c0;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/branch/search/c0;->k:I

    throw p1
.end method

.method public c()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "request_id"

    :try_start_0
    iget-object v2, p0, Lio/branch/search/c0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lio/branch/search/c0;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/AnalyticsEntity;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lio/branch/search/AnalyticsEntity;->getRemovalJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "extras"

    :try_start_1
    iget-object v6, p0, Lio/branch/search/c0;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "removals"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lio/branch/search/c0;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Lio/branch/search/c0;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lio/branch/search/c0;->d:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/AnalyticsEntity;

    invoke-virtual {v4}, Lio/branch/search/AnalyticsEntity;->getParseJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_2

    const-string v5, "extras"

    :try_start_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    const-string v2, "results_after"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "VirtualRequest.createTrackingJson"

    invoke-static {v2, v1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method

.method public c(Lio/branch/search/AnalyticsEntity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    return-void
.end method

.method public d()V
    .locals 5

    invoke-virtual {p0}, Lio/branch/search/c0;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "request"

    :try_start_0
    iget-object v2, p0, Lio/branch/search/c0;->a:Lio/branch/search/f;

    invoke-virtual {v2}, Lio/branch/search/f;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "request_api"

    :try_start_1
    iget-object v2, p0, Lio/branch/search/c0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VirtualRequest.endTracking"

    invoke-static {v2, v1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v1

    const-string v2, "virtual_request"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lio/branch/search/l;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    iget-object v0, p0, Lio/branch/search/c0;->a:Lio/branch/search/f;

    iget-object v1, p0, Lio/branch/search/c0;->e:Ljava/lang/String;

    iget-object v2, p0, Lio/branch/search/c0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/branch/search/f;->a(Ljava/lang/String;Ljava/lang/String;)Lio/branch/search/s3;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lio/branch/search/c0;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/AnalyticsEntity;

    iget-object v4, p0, Lio/branch/search/c0;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lio/branch/search/c0;->d:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lio/branch/search/AnalyticsEntity;->prepareUnifiedEntity()Lio/branch/search/q3;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v2

    iget-object v2, v2, Lio/branch/search/l;->d:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-virtual {v2, v0, v1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/s3;Ljava/util/List;)V

    return-void
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lio/branch/search/c0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    return v0
.end method
