.class public Lio/branch/search/u1$a;
.super Lio/branch/search/u1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final g:Lio/branch/search/BranchAppStoreRequest;

.field public final h:Lio/branch/search/m0;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchAppStoreRequest;Lio/branch/search/m0;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/u1$b;-><init>()V

    iput-object p1, p0, Lio/branch/search/u1$a;->g:Lio/branch/search/BranchAppStoreRequest;

    iput-object p2, p0, Lio/branch/search/u1$a;->h:Lio/branch/search/m0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "user_query"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/u1$a;->g:Lio/branch/search/BranchAppStoreRequest;

    invoke-virtual {p0}, Lio/branch/search/BranchAppStoreRequest;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "user_query_raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/branch/search/u1$a;->g:Lio/branch/search/BranchAppStoreRequest;

    invoke-virtual {p0}, Lio/branch/search/BranchAppStoreRequest;->getQuery()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "request_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/branch/search/u1$a;->h:Lio/branch/search/m0;

    iget-object p0, p0, Lio/branch/search/m0;->f:Ljava/lang/String;

    return-object p0

    :cond_2
    invoke-super {p0, p1}, Lio/branch/search/u1$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
