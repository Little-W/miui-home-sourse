.class public Lio/branch/search/b6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/b6;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
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

.field public final synthetic b:Lio/branch/search/b6;


# direct methods
.method public constructor <init>(Lio/branch/search/b6;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/b6$a;->b:Lio/branch/search/b6;

    iput-object p2, p0, Lio/branch/search/b6$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB;)Ljava/lang/Boolean;
    .locals 5

    invoke-virtual {p1}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;->a()Lio/branch/search/f3;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/b6$a;->b:Lio/branch/search/b6;

    invoke-static {v0}, Lio/branch/search/b6;->a(Lio/branch/search/b6;)Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/b6$a;->b:Lio/branch/search/b6;

    invoke-static {v1}, Lio/branch/search/b6;->b(Lio/branch/search/b6;)Lio/branch/search/s5;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lio/branch/search/b6$a;->a:Ljava/lang/String;

    new-instance v2, Lio/branch/search/d5;

    sget-object v3, Lio/branch/search/s5;->D:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lio/branch/search/d5;-><init>(J)V

    invoke-virtual {p1, v0, v1, p0, v2}, Lio/branch/search/f3;->a(Lio/branch/search/KBranchRemoteConfiguration;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/d5;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;

    invoke-virtual {p0, p1}, Lio/branch/search/b6$a;->a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
