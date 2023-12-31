.class public abstract Lio/branch/search/e5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/e5$b;,
        Lio/branch/search/e5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NO:",
        "Ljava/lang/Object;",
        "YES:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/e5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    instance-of v0, p0, Lio/branch/search/e5$b;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lio/branch/search/e5$a;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
