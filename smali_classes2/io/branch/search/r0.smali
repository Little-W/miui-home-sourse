.class public abstract Lio/branch/search/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/r0$a;,
        Lio/branch/search/r0$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([Lio/branch/search/q0$a;)Lio/branch/search/r0;
    .locals 1

    new-instance v0, Lio/branch/search/r0$a;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/branch/search/r0$a;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs b([Lio/branch/search/q0$a;)Lio/branch/search/r0;
    .locals 1

    new-instance v0, Lio/branch/search/r0$b;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/branch/search/r0$b;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
