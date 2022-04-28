.class public Lio/branch/search/g5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/g5;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Long;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/branch/search/g5;


# direct methods
.method public constructor <init>(Lio/branch/search/g5;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/g5$a;->c:Lio/branch/search/g5;

    iput-object p2, p0, Lio/branch/search/g5$a;->a:Ljava/lang/Long;

    iput-object p3, p0, Lio/branch/search/g5$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;->a()Lio/branch/search/s2;

    move-result-object v0

    iget-object p1, p0, Lio/branch/search/g5$a;->c:Lio/branch/search/g5;

    invoke-static {p1}, Lio/branch/search/g5;->a(Lio/branch/search/g5;)Lio/branch/search/l;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    iget-object p1, p0, Lio/branch/search/g5$a;->c:Lio/branch/search/g5;

    invoke-static {p1}, Lio/branch/search/g5;->b(Lio/branch/search/g5;)Lio/branch/search/e5;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lio/branch/search/g5$a;->a:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lio/branch/search/g5$a;->b:Ljava/lang/String;

    iget-object p1, p0, Lio/branch/search/g5$a;->c:Lio/branch/search/g5;

    invoke-static {p1}, Lio/branch/search/g5;->c(Lio/branch/search/g5;)Lio/branch/search/r4;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lio/branch/search/s2;->a(Lio/branch/search/KBranchRemoteConfiguration;Ljava/lang/String;JLjava/lang/String;Lio/branch/search/r4;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;

    invoke-virtual {p0, p1}, Lio/branch/search/g5$a;->a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
