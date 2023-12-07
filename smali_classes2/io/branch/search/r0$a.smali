.class public Lio/branch/search/r0$a;
.super Lio/branch/search/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/branch/search/q0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/branch/search/q0$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/branch/search/r0;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/branch/search/r0$a;->a:Ljava/util/Set;

    return-void
.end method
