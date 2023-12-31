.class public Lio/branch/search/n1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/n1;->b(Lorg/json/JSONObject;Lio/branch/search/d5;)V
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

.field public final synthetic b:Lio/branch/search/d5;

.field public final synthetic c:Lio/branch/search/n1;


# direct methods
.method public constructor <init>(Lio/branch/search/n1;Lio/branch/search/KNetworkUsageCappingRule;Lio/branch/search/d5;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/n1$b;->c:Lio/branch/search/n1;

    iput-object p2, p0, Lio/branch/search/n1$b;->a:Lio/branch/search/KNetworkUsageCappingRule;

    iput-object p3, p0, Lio/branch/search/n1$b;->b:Lio/branch/search/d5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB;)Ljava/lang/Long;
    .locals 1

    invoke-virtual {p1}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;->a()Lio/branch/search/f3;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/n1$b;->a:Lio/branch/search/KNetworkUsageCappingRule;

    iget-object p0, p0, Lio/branch/search/n1$b;->b:Lio/branch/search/d5;

    invoke-virtual {p1, v0, p0}, Lio/branch/search/f3;->a(Lio/branch/search/KNetworkUsageCappingRule;Lio/branch/search/d5;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;

    invoke-virtual {p0, p1}, Lio/branch/search/n1$b;->a(Lio/branch/search/internal/sqlite/NetworkSQLiteDB;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
