.class public final Lio/branch/search/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/z$a;,
        Lio/branch/search/z$b;
    }
.end annotation


# direct methods
.method public static final a(Landroid/content/Context;Landroid/os/UserHandle;)Lio/branch/search/z$a;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/z$a;

    invoke-direct {v0, p0, p1}, Lio/branch/search/z$a;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)Lio/branch/search/z$b;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/z$b;

    invoke-direct {v0, p0}, Lio/branch/search/z$b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
