.class public Lio/branch/search/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/q0;


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/branch/search/r0;",
            ">;"
        }
    .end annotation
.end field


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
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Lio/branch/search/q0$a;

    sget-object v3, Lio/branch/search/q0$a;->a:Lio/branch/search/q0$a;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lio/branch/search/r0;->b([Lio/branch/search/q0$a;)Lio/branch/search/r0;

    move-result-object v2

    const-string v5, "branchdebug://true"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [Lio/branch/search/q0$a;

    aput-object v3, v2, v4

    invoke-static {v2}, Lio/branch/search/r0;->a([Lio/branch/search/q0$a;)Lio/branch/search/r0;

    move-result-object v2

    const-string v5, "branchdebug://false"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [Lio/branch/search/q0$a;

    sget-object v5, Lio/branch/search/q0$a;->b:Lio/branch/search/q0$a;

    aput-object v5, v2, v4

    invoke-static {v2}, Lio/branch/search/r0;->b([Lio/branch/search/q0$a;)Lio/branch/search/r0;

    move-result-object v2

    const-string v6, "forcelarsfallback://true"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [Lio/branch/search/q0$a;

    aput-object v5, v2, v4

    invoke-static {v2}, Lio/branch/search/r0;->b([Lio/branch/search/q0$a;)Lio/branch/search/r0;

    move-result-object v2

    const-string v6, "flf://1"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [Lio/branch/search/q0$a;

    aput-object v5, v2, v4

    invoke-static {v2}, Lio/branch/search/r0;->a([Lio/branch/search/q0$a;)Lio/branch/search/r0;

    move-result-object v2

    const-string v6, "forcelarsfallback://false"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [Lio/branch/search/q0$a;

    aput-object v5, v2, v4

    invoke-static {v2}, Lio/branch/search/r0;->a([Lio/branch/search/q0$a;)Lio/branch/search/r0;

    move-result-object v2

    const-string v6, "flf://0"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [Lio/branch/search/q0$a;

    aput-object v3, v2, v4

    invoke-static {v2}, Lio/branch/search/r0;->b([Lio/branch/search/q0$a;)Lio/branch/search/r0;

    move-result-object v2

    const-string v3, "\ud83d\udc10\ud83d\udc10\ud83d\udc1b\ud83d\udc10"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [Lio/branch/search/q0$a;

    aput-object v5, v1, v4

    invoke-static {v1}, Lio/branch/search/r0;->b([Lio/branch/search/q0$a;)Lio/branch/search/r0;

    move-result-object v1

    const-string v2, "\ud83d\udc10\ud83d\udc10\ud83c\udf42\ud83d\udc10"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/branch/search/q0$a;->values()[Lio/branch/search/q0$a;

    move-result-object v1

    invoke-static {v1}, Lio/branch/search/r0;->a([Lio/branch/search/q0$a;)Lio/branch/search/r0;

    move-result-object v1

    const-string v2, "\ud83d\udc10\ud83d\udc10\ud83d\udc10\ud83d\udc10"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/branch/search/p0;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/branch/search/p0;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/q0$a;)Z
    .locals 0

    iget-object p0, p0, Lio/branch/search/p0;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
