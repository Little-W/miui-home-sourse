.class public Lio/branch/search/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/c1$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/c1$a;

.field public static final b:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/branch/search/s5;",
            "Lio/branch/search/o1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lio/branch/search/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/c1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/c1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/c1;->Companion:Lio/branch/search/c1$a;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/branch/search/s5;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lio/branch/search/c1;->b:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;)V
    .locals 4

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-static {}, Lio/branch/search/s5;->values()[Lio/branch/search/s5;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p0, v0

    sget-object v2, Lio/branch/search/c1;->b:Ljava/util/EnumMap;

    new-instance v3, Lio/branch/search/o1;

    invoke-direct {v3, v1}, Lio/branch/search/o1;-><init>(Lio/branch/search/s5;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lio/branch/search/c1;)Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/c1;Lio/branch/search/BranchSearchRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->b()Lio/branch/search/internal/control/AllFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/internal/control/AllFeatures;->e()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {v0, v1}, Lio/branch/search/internal/control/FeatureFlag;->a(Lio/branch/search/l;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lio/branch/search/e5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->p:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lio/branch/search/BranchSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, Lio/branch/search/s5;->i:Lio/branch/search/s5;

    iget-object v0, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    const-string v1, "branchSearch.branchConfiguration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->o()Ljava/lang/String;

    move-result-object v3

    const-string v0, "branchSearch.branchConfiguration.searchUrl"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {v1}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    iget-object v4, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {v4}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object v4

    iget-object v5, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {v5}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v5

    invoke-virtual {p1, v0, v1, v4, v5}, Lio/branch/search/f;->a(Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/e;Lio/branch/search/KBranchRemoteConfiguration;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p1, "request.toPayload(branch\u2026Configuration).toString()"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Lio/branch/search/c1;->a(Lio/branch/search/c1;Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    new-instance p0, Lio/branch/search/e5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->b:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/c1;Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    invoke-static {}, Lio/branch/search/BranchAnalytics;->d()Ljava/lang/String;

    move-result-object p4

    const-string p6, "BranchAnalytics.getSessionId()"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/c1;->a(Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: makePost"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lio/branch/search/c1;Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/c1;->a(Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: makeGet"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a()Ljava/util/EnumMap;
    .locals 1

    sget-object v0, Lio/branch/search/c1;->b:Ljava/util/EnumMap;

    return-object v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/s5;Lio/branch/search/l;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    sget-object v0, Lio/branch/search/c1;->Companion:Lio/branch/search/c1$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/c1$a;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/s5;Lio/branch/search/l;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Lio/branch/search/q1;Lio/branch/search/s5;Lio/branch/search/l;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lio/branch/search/c1;->Companion:Lio/branch/search/c1$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/c1$a;->a(Ljava/lang/String;Lio/branch/search/q1;Lio/branch/search/s5;Lio/branch/search/l;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/q1;Lio/branch/search/s5;Lio/branch/search/l;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lio/branch/search/c1;->Companion:Lio/branch/search/c1$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lio/branch/search/c1$a;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/q1;Lio/branch/search/s5;Lio/branch/search/l;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/BranchAppStoreRequest;Lio/branch/search/m0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchAppStoreRequest;",
            "Lio/branch/search/m0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/e5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->b()Lio/branch/search/internal/control/AllFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/internal/control/AllFeatures;->b()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {v0, v1}, Lio/branch/search/internal/control/FeatureFlag;->a(Lio/branch/search/l;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lio/branch/search/e5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->p:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v0, Lio/branch/search/u1$a;

    invoke-direct {v0, p1, p2}, Lio/branch/search/u1$a;-><init>(Lio/branch/search/BranchAppStoreRequest;Lio/branch/search/m0;)V

    invoke-virtual {p0, v0}, Lio/branch/search/c1;->a(Lio/branch/search/u1$a;)Ljava/util/Map;

    move-result-object v4

    sget-object v2, Lio/branch/search/s5;->j:Lio/branch/search/s5;

    iget-object p1, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {p1}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object p1

    const-string v0, "branchSearch.branchConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/BranchConfiguration;->c()Ljava/lang/String;

    move-result-object v3

    const-string p1, "branchSearch.branchConfiguration.appStoreSearchUrl"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p2, Lio/branch/search/m0;->f:Ljava/lang/String;

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/branch/search/c1;->a(Lio/branch/search/s5;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Lio/branch/search/BranchSearchRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchSearchRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/e5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/branch/search/c1;->a(Lio/branch/search/c1;Lio/branch/search/BranchSearchRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/s5;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/e5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lio/branch/search/c1;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/branch/search/o1;

    if-nez v1, :cond_0

    iget-object p0, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "KNetworkInterfaceImpl."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpPool not found"

    invoke-virtual {p0, p1, p2}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/e5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    iget-object v4, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lio/branch/search/o1;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic a(Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/s5;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/e5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lio/branch/search/c1;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/o1;

    iget-object p0, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "KNetworkInterfaceImpl."

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "request_id"

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "HttpPool not found"

    invoke-virtual {p0, p1, p3, p2}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p0, Lio/branch/search/e5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {v0, p2, p0, p3, p4}, Lio/branch/search/o1;->a(Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic a(Lio/branch/search/s5;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/s5;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/e5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lio/branch/search/c1$e;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lio/branch/search/c1$e;

    iget v1, v0, Lio/branch/search/c1$e;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/branch/search/c1$e;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/branch/search/c1$e;

    invoke-direct {v0, p0, p5}, Lio/branch/search/c1$e;-><init>(Lio/branch/search/c1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lio/branch/search/c1$e;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lio/branch/search/c1$e;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {p2}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p2

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p2, v2, p5}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "this.toString()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v3, v0, Lio/branch/search/c1$e;->b:I

    invoke-virtual {p0, p1, p2, p4, v0}, Lio/branch/search/c1;->a(Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p5, Lio/branch/search/e5;

    if-eqz p5, :cond_5

    goto :goto_3

    :cond_5
    new-instance p5, Lio/branch/search/e5$a;

    new-instance p0, Lio/branch/search/BranchSearchError;

    sget-object p1, Lio/branch/search/BranchSearchError$ERR_CODE;->b:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p0, p1}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p5, p0}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V

    :goto_3
    return-object p5
.end method

.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/e5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v1, Lio/branch/search/s5;->r:Lio/branch/search/s5;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {v2}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v2

    const-string v3, "branchSearch.branchConfiguration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/branch/search/BranchConfiguration;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lio/branch/search/c1;->a(Lio/branch/search/c1;Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/branch/search/u1$a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/u1$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {p0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/KBranchRemoteConfiguration;->d()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lio/branch/search/u1$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_0

    sget-object v0, Lio/branch/search/c1;->Companion:Lio/branch/search/c1$a;

    sget-object v3, Lio/branch/search/s5;->n:Lio/branch/search/s5;

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lio/branch/search/c1$a;->a(Lio/branch/search/c1$a;Ljava/lang/String;Lio/branch/search/q1;Lio/branch/search/s5;Lio/branch/search/l;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "request"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "callback"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {v3}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/KBranchRemoteConfiguration;->b()Lio/branch/search/internal/control/AllFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/internal/control/AllFeatures;->c()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v3

    iget-object v4, v0, Lio/branch/search/c1;->a:Lio/branch/search/l;

    invoke-virtual {v3, v4}, Lio/branch/search/internal/control/FeatureFlag;->a(Lio/branch/search/l;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-static {}, Lio/branch/search/b5;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    new-instance v9, Lio/branch/search/c1$b;

    invoke-direct {v9, v2, v5}, Lio/branch/search/c1$b;-><init>(Lio/branch/search/IBranchAutoSuggestEvents;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/branch/search/BranchAutoSuggestRequest;->getQuery()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v6

    :goto_1
    if-eqz v3, :cond_3

    invoke-static {}, Lio/branch/search/b5;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v8

    new-instance v10, Lio/branch/search/c1$c;

    invoke-direct {v10, v2, v5}, Lio/branch/search/c1$c;-><init>(Lio/branch/search/IBranchAutoSuggestEvents;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return v4

    :cond_3
    invoke-static {}, Lio/branch/search/b5;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v13

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v14

    new-instance v3, Lio/branch/search/c1$d;

    invoke-direct {v3, v0, v1, v2, v5}, Lio/branch/search/c1$d;-><init>(Lio/branch/search/c1;Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v16, v3

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return v6
.end method

.method public a(Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchSearchEvents;)Z
    .locals 7

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/b5;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lio/branch/search/c1$h;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lio/branch/search/c1$h;-><init>(Lio/branch/search/c1;Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchSearchEvents;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p0, 0x1

    return p0
.end method
