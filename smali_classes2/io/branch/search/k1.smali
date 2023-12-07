.class public final Lio/branch/search/k1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/k1$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/k1$a;


# instance fields
.field public final a:Lio/branch/search/m1;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/k1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/k1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/k1;->Companion:Lio/branch/search/k1$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/m1;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m1;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/k1;->a:Lio/branch/search/m1;

    iput-object p2, p0, Lio/branch/search/k1;->b:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/k1;Lio/branch/search/l1;Ljava/util/Set;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/branch/search/k1;->a(Lio/branch/search/l1;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/branch/search/k1;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lio/branch/search/k1;->b:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/k1;JJJILjava/lang/Object;)Lkotlin/sequences/Sequence;
    .locals 7

    and-int/lit8 p7, p7, 0x4

    if-eqz p7, :cond_0

    const-wide/32 p5, 0x36ee80

    :cond_0
    move-wide v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lio/branch/search/k1;->a(JJJ)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lio/branch/search/k1;)Lio/branch/search/m1;
    .locals 0

    iget-object p0, p0, Lio/branch/search/k1;->a:Lio/branch/search/m1;

    return-object p0
.end method


# virtual methods
.method public final a(Lio/branch/search/l1;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l1;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/branch/search/l1;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/branch/search/l1;->a()Landroid/app/usage/UsageEvents$Event;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final a(JJ)Lkotlin/sequences/Sequence;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lkotlin/sequences/Sequence<",
            "Lio/branch/search/j4;",
            ">;"
        }
    .end annotation

    new-instance v7, Lio/branch/search/k1$c;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lio/branch/search/k1$c;-><init>(Lio/branch/search/k1;JJLkotlin/coroutines/Continuation;)V

    invoke-static {v7}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public final a(JJJ)Lkotlin/sequences/Sequence;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)",
            "Lkotlin/sequences/Sequence<",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;>;"
        }
    .end annotation

    new-instance v9, Lio/branch/search/k1$b;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v8}, Lio/branch/search/k1$b;-><init>(Lio/branch/search/k1;JJJLkotlin/coroutines/Continuation;)V

    invoke-static {v9}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->chunked(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method
