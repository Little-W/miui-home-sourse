.class public final Lio/branch/search/r1;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lio/branch/search/r1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/r1;

    invoke-direct {v0}, Lio/branch/search/r1;-><init>()V

    sput-object v0, Lio/branch/search/r1;->a:Lio/branch/search/r1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

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

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public final a(Lio/branch/search/m0;Lio/branch/search/l;Lio/branch/search/BranchAppStoreRequest;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m0;",
            "Lio/branch/search/l;",
            "Lio/branch/search/BranchAppStoreRequest;",
            "Lorg/json/JSONObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/e5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lkotlin/Pair<",
            "Lio/branch/search/BranchAppStoreSearchResult;",
            "+",
            "Lio/branch/search/m0;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lio/branch/search/l;->e()Lio/branch/search/internal/interfaces/LocalInterface;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/internal/interfaces/LocalInterface;->c()Lio/branch/search/h2;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4}, Lio/branch/search/h2;->a(Lio/branch/search/m0;Lio/branch/search/BranchAppStoreRequest;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p2

    new-instance p3, Lio/branch/search/BranchAppStoreSearchResult;

    const-string p4, "results"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p1, Lio/branch/search/m0;->f:Ljava/lang/String;

    const-string p5, "virtualRequest.id"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p2, p4}, Lio/branch/search/BranchAppStoreSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "AppStorePostProcessor"

    invoke-static {p3, p2}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p3, p0

    :goto_0
    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lio/branch/search/e5$b;

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lio/branch/search/e5$b;-><init>(Ljava/lang/Object;)V

    :goto_1
    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Lio/branch/search/e5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->k:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V

    :goto_2
    return-object p0
.end method
