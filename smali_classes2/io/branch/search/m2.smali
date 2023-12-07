.class public final Lio/branch/search/m2;
.super Lio/branch/search/u1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/m2$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/m2$a;


# instance fields
.field public final a:Lio/branch/search/u1;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/u1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/m2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/m2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/m2;->Companion:Lio/branch/search/m2$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/u1;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/u1;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/u1;",
            ">;)V"
        }
    .end annotation

    const-string v0, "default"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repeatedBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/branch/search/u1;-><init>()V

    iput-object p1, p0, Lio/branch/search/m2;->a:Lio/branch/search/u1;

    iput-object p2, p0, Lio/branch/search/m2;->b:Ljava/util/List;

    return-void
.end method

.method public static final a(Lio/branch/search/u1;Ljava/util/List;)Lio/branch/search/u1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/u1;",
            "Ljava/util/List<",
            "+",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lio/branch/search/u1;"
        }
    .end annotation

    sget-object v0, Lio/branch/search/m2;->Companion:Lio/branch/search/m2$a;

    invoke-virtual {v0, p0, p1}, Lio/branch/search/m2$a;->a(Lio/branch/search/u1;Ljava/util/List;)Lio/branch/search/u1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/m2;->a:Lio/branch/search/u1;

    invoke-virtual {p0, p1}, Lio/branch/search/u1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "default.bind(name)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    iget-object p0, p0, Lio/branch/search/m2;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/u1;

    invoke-virtual {v1, p1}, Lio/branch/search/u1;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method
