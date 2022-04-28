.class public Lio/branch/search/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public a:Lio/branch/search/l;

.field public b:Lio/branch/search/b3;

.field public c:Lio/branch/search/e5;


# direct methods
.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/b3;Lio/branch/search/e5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/l5;->a:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/l5;->b:Lio/branch/search/b3;

    iput-object p3, p0, Lio/branch/search/l5;->c:Lio/branch/search/e5;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/l5;)Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/l5;->a:Lio/branch/search/l;

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/l5;)Lio/branch/search/e5;
    .locals 0

    iget-object p0, p0, Lio/branch/search/l5;->c:Lio/branch/search/e5;

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

    iget-object v1, p0, Lio/branch/search/l5;->a:Lio/branch/search/l;

    iget-object v1, v1, Lio/branch/search/l;->f:Lio/branch/search/b1;

    invoke-virtual {v1}, Lio/branch/search/b1;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/l5;->b:Lio/branch/search/b3;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v4, Lio/branch/search/l5$a;

    invoke-direct {v4, p0, v1}, Lio/branch/search/l5$a;-><init>(Lio/branch/search/l5;Ljava/lang/String;)V

    const-string v1, "isNetworkBandwidthLimitExceeded"

    invoke-virtual {v2, v3, v1, v4}, Lio/branch/search/c3;->a(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lio/branch/search/k5;

    const-string v0, "Cannot make network request, bandwidth usage limit rule has been reached"

    invoke-direct {p1, v0}, Lio/branch/search/k5;-><init>(Ljava/lang/String;)V

    throw p1
.end method
