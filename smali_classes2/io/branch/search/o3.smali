.class public final Lio/branch/search/o3;
.super Lio/branch/search/p3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/p3<",
        "Lio/branch/search/internal/sqlite/NetworkSQLiteDB;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/o3$a;

    invoke-direct {v0}, Lio/branch/search/o3$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/branch/search/p3;-><init>(Landroid/content/Context;Lio/branch/search/h3;)V

    return-void
.end method
