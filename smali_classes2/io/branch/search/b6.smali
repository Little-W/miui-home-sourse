.class public Lio/branch/search/b6;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public a:Lio/branch/search/l;

.field public b:Lio/branch/search/o3;

.field public c:Lio/branch/search/s5;


# direct methods
.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/o3;Lio/branch/search/s5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/b6;->a:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/b6;->b:Lio/branch/search/o3;

    iput-object p3, p0, Lio/branch/search/b6;->c:Lio/branch/search/s5;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/b6;)Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/b6;->a:Lio/branch/search/l;

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/b6;)Lio/branch/search/s5;
    .locals 0

    iget-object p0, p0, Lio/branch/search/b6;->c:Lio/branch/search/s5;

    return-object p0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/b6;->a:Lio/branch/search/l;

    iget-object v1, v1, Lio/branch/search/l;->g:Lio/branch/search/n1;

    invoke-virtual {v1}, Lio/branch/search/n1;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/b6;->b:Lio/branch/search/o3;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v4, Lio/branch/search/b6$a;

    invoke-direct {v4, p0, v1}, Lio/branch/search/b6$a;-><init>(Lio/branch/search/b6;Ljava/lang/String;)V

    const-string p0, "isNetworkBandwidthLimitExceeded"

    invoke-virtual {v2, v3, p0, v4}, Lio/branch/search/p3;->a(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lio/branch/search/a6;

    const-string p1, "Cannot make network request, bandwidth usage limit rule has been reached"

    invoke-direct {p0, p1}, Lio/branch/search/a6;-><init>(Ljava/lang/String;)V

    throw p0
.end method
