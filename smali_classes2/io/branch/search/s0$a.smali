.class public final Lio/branch/search/s0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/s0;
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

    invoke-direct {p0}, Lio/branch/search/s0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/BranchLocalError;Lio/branch/search/c0;)Lio/branch/search/s0;
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/s0;

    new-instance v1, Lio/branch/search/s4$a;

    invoke-direct {v1, p1}, Lio/branch/search/s4$a;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p2, v1}, Lio/branch/search/s0;-><init>(Lio/branch/search/c0;Lio/branch/search/s4;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lio/branch/search/c0;)Lio/branch/search/s0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/branch/search/c0;",
            ")",
            "Lio/branch/search/s0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "virtualRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/s0;

    new-instance v1, Lio/branch/search/s4$b;

    invoke-direct {v1, p1}, Lio/branch/search/s4$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p2, v1}, Lio/branch/search/s0;-><init>(Lio/branch/search/c0;Lio/branch/search/s4;)V

    return-object v0
.end method
