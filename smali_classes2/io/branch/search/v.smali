.class public final Lio/branch/search/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/v$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/v$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/v;->Companion:Lio/branch/search/v$a;

    return-void
.end method

.method public static final a(Landroid/content/Context;Lio/branch/search/l;)V
    .locals 1

    sget-object v0, Lio/branch/search/v;->Companion:Lio/branch/search/v$a;

    invoke-virtual {v0, p0, p1}, Lio/branch/search/v$a;->a(Landroid/content/Context;Lio/branch/search/l;)V

    return-void
.end method
