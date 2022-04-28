.class public final Lio/branch/search/z1;
.super Lio/branch/search/i1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/z1$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/z1$a;


# instance fields
.field public final a:Lio/branch/search/i1;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/i1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/z1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/z1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/z1;->Companion:Lio/branch/search/z1$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/i1;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/i1;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/i1;",
            ">;)V"
        }
    .end annotation

    const-string v0, "default"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repeatedBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/branch/search/i1;-><init>()V

    iput-object p1, p0, Lio/branch/search/z1;->a:Lio/branch/search/i1;

    iput-object p2, p0, Lio/branch/search/z1;->b:Ljava/util/List;

    return-void
.end method

.method public static final a(Lio/branch/search/i1;Ljava/util/List;)Lio/branch/search/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/i1;",
            "Ljava/util/List<",
            "+",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lio/branch/search/i1;"
        }
    .end annotation

    sget-object v0, Lio/branch/search/z1;->Companion:Lio/branch/search/z1$a;

    invoke-virtual {v0, p0, p1}, Lio/branch/search/z1$a;->a(Lio/branch/search/i1;Ljava/util/List;)Lio/branch/search/i1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/z1;->a:Lio/branch/search/i1;

    invoke-virtual {v0, p1}, Lio/branch/search/i1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "default.bind(name)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "rawBindings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/z1;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/i1;

    invoke-virtual {v2, p1}, Lio/branch/search/i1;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method
