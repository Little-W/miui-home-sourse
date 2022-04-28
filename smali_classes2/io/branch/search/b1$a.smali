.class public Lio/branch/search/b1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/b1;->b(Lorg/json/JSONObject;Lio/branch/search/r4;)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/KNetworkUsageCappingRule;

.field public final synthetic b:Lio/branch/search/r4;

.field public final synthetic c:Lio/branch/search/b1;


# direct methods
.method public constructor <init>(Lio/branch/search/b1;Lio/branch/search/KNetworkUsageCappingRule;Lio/branch/search/r4;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/b1$a;->c:Lio/branch/search/b1;

    iput-object p2, p0, Lio/branch/search/b1$a;->a:Lio/branch/search/KNetworkUsageCappingRule;

    iput-object p3, p0, Lio/branch/search/b1$a;->b:Lio/branch/search/r4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB;)Ljava/lang/Long;
    .locals 2

    invoke-virtual {p1}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;->a()Lio/branch/search/s2;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/b1$a;->a:Lio/branch/search/KNetworkUsageCappingRule;

    iget-object v1, p0, Lio/branch/search/b1$a;->b:Lio/branch/search/r4;

    invoke-virtual {p1, v0, v1}, Lio/branch/search/s2;->a(Lio/branch/search/KNetworkUsageCappingRule;Lio/branch/search/r4;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;

    invoke-virtual {p0, p1}, Lio/branch/search/b1$a;->a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
