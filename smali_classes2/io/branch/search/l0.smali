.class public Lio/branch/search/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/branch/search/k;",
            "Lio/branch/search/e5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/bumptech/glide/load/model/GlideUrl;

.field public final b:Lio/branch/search/e5;

.field public final c:Lio/branch/search/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/branch/search/l0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/k;->e:Lio/branch/search/k;

    sget-object v2, Lio/branch/search/e5;->p:Lio/branch/search/e5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/l0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/k;->d:Lio/branch/search/k;

    sget-object v2, Lio/branch/search/e5;->q:Lio/branch/search/e5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/l0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/k;->c:Lio/branch/search/k;

    sget-object v2, Lio/branch/search/e5;->s:Lio/branch/search/e5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/l0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/k;->b:Lio/branch/search/k;

    sget-object v2, Lio/branch/search/e5;->t:Lio/branch/search/e5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/l0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/k;->a:Lio/branch/search/k;

    sget-object v2, Lio/branch/search/e5;->u:Lio/branch/search/e5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/l0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/k;->f:Lio/branch/search/k;

    sget-object v2, Lio/branch/search/e5;->r:Lio/branch/search/e5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/l0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/k;->j:Lio/branch/search/k;

    sget-object v2, Lio/branch/search/e5;->v:Lio/branch/search/e5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/l0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/k;->i:Lio/branch/search/k;

    sget-object v2, Lio/branch/search/e5;->w:Lio/branch/search/e5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/l0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/k;->h:Lio/branch/search/k;

    sget-object v2, Lio/branch/search/e5;->x:Lio/branch/search/e5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/l0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/k;->g:Lio/branch/search/k;

    sget-object v2, Lio/branch/search/e5;->y:Lio/branch/search/e5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/branch/search/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/branch/search/l0;->c:Lio/branch/search/k;

    invoke-static {p2}, Lio/branch/search/l0;->a(Lio/branch/search/k;)Lio/branch/search/e5;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/l0;->b:Lio/branch/search/e5;

    new-instance p2, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lio/branch/search/l0;->a:Lcom/bumptech/glide/load/model/GlideUrl;

    return-void
.end method

.method public static a(Lio/branch/search/k;)Lio/branch/search/e5;
    .locals 1

    sget-object v0, Lio/branch/search/l0;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/e5;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lio/branch/search/e5;->z:Lio/branch/search/e5;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/l0;->b:Lio/branch/search/e5;

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/branch/search/e5;->b(Lio/branch/search/l;)Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/integration/okhttp3/OkHttpStreamFetcher;

    iget-object v2, p0, Lio/branch/search/l0;->a:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/integration/okhttp3/OkHttpStreamFetcher;-><init>(Lokhttp3/Call$Factory;Lcom/bumptech/glide/load/model/GlideUrl;)V

    return-object v1
.end method

.method public b()Lcom/bumptech/glide/load/Key;
    .locals 1

    iget-object v0, p0, Lio/branch/search/l0;->a:Lcom/bumptech/glide/load/model/GlideUrl;

    return-object v0
.end method
