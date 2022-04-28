.class public Lio/branch/search/l5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/l5;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/branch/search/internal/sqlite/NetworkSQLiteDB;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lio/branch/search/l5;


# direct methods
.method public constructor <init>(Lio/branch/search/l5;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/l5$a;->b:Lio/branch/search/l5;

    iput-object p2, p0, Lio/branch/search/l5$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB;)Ljava/lang/Boolean;
    .locals 6

    invoke-virtual {p1}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;->a()Lio/branch/search/s2;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/l5$a;->b:Lio/branch/search/l5;

    invoke-static {v0}, Lio/branch/search/l5;->a(Lio/branch/search/l5;)Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/l5$a;->b:Lio/branch/search/l5;

    invoke-static {v1}, Lio/branch/search/l5;->b(Lio/branch/search/l5;)Lio/branch/search/e5;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/l5$a;->a:Ljava/lang/String;

    new-instance v3, Lio/branch/search/r4;

    sget-object v4, Lio/branch/search/e5;->A:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lio/branch/search/r4;-><init>(J)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/branch/search/s2;->a(Lio/branch/search/KBranchRemoteConfiguration;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/r4;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;

    invoke-virtual {p0, p1}, Lio/branch/search/l5$a;->a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
