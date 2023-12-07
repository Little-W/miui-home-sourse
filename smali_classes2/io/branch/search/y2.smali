.class public final Lio/branch/search/y2;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lio/branch/search/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/c2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/y2$a;

    invoke-direct {v0}, Lio/branch/search/y2$a;-><init>()V

    sput-object v0, Lio/branch/search/y2;->a:Lio/branch/search/c2;

    return-void
.end method

.method public static final a()Lio/branch/search/c2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/branch/search/c2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/branch/search/y2;->a:Lio/branch/search/c2;

    return-object v0
.end method
