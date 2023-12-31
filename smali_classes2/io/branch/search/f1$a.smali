.class public final Lio/branch/search/f1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/f1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/BranchLocalError;Lio/branch/search/m0;)Lio/branch/search/f1;
    .locals 1

    const-string p0, "error"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "virtualRequest"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/f1;

    new-instance v0, Lio/branch/search/e5$a;

    invoke-direct {v0, p1}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, v0}, Lio/branch/search/f1;-><init>(Lio/branch/search/m0;Lio/branch/search/e5;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lio/branch/search/m0;)Lio/branch/search/f1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/branch/search/m0;",
            ")",
            "Lio/branch/search/f1<",
            "TT;>;"
        }
    .end annotation

    const-string p0, "virtualRequest"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/f1;

    new-instance v0, Lio/branch/search/e5$b;

    invoke-direct {v0, p1}, Lio/branch/search/e5$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, v0}, Lio/branch/search/f1;-><init>(Lio/branch/search/m0;Lio/branch/search/e5;)V

    return-object p0
.end method
