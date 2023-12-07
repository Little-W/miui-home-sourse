.class public final Lio/branch/search/BranchAppStoreRequest;
.super Lio/branch/search/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchAppStoreRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/f<",
        "Lio/branch/search/BranchAppStoreRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/BranchAppStoreRequest$Companion;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/BranchAppStoreRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/BranchAppStoreRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/BranchAppStoreRequest;->Companion:Lio/branch/search/BranchAppStoreRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/branch/search/f;-><init>()V

    iput-object p1, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/branch/search/u;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "QueryNormalizer.normalize(query, true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/branch/search/BranchAppStoreRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/branch/search/BranchAppStoreRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final create(Ljava/lang/String;)Lio/branch/search/BranchAppStoreRequest;
    .locals 1

    sget-object v0, Lio/branch/search/BranchAppStoreRequest;->Companion:Lio/branch/search/BranchAppStoreRequest$Companion;

    invoke-virtual {v0, p0}, Lio/branch/search/BranchAppStoreRequest$Companion;->create(Ljava/lang/String;)Lio/branch/search/BranchAppStoreRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lio/branch/search/f4;
    .locals 8

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/f4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v6, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    iget-object v7, p0, Lio/branch/search/BranchAppStoreRequest;->c:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lio/branch/search/f4;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 7

    invoke-super {p0}, Lio/branch/search/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "super.toJson()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "BranchSearchInternal.getInstance() ?: return res"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "user_query_len"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    const/4 v4, 0x0

    const/16 v5, 0x100

    if-le v1, v5, :cond_1

    iget-object v1, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    :goto_0
    const-string v6, "user_query"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/search/BranchAppStoreRequest;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object p0, p0, Lio/branch/search/BranchAppStoreRequest;->c:Ljava/lang/String;

    if-le v1, v5, :cond_3

    if-eqz p0, :cond_2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const-string v1, "user_query_norm"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchAppStoreRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchAppStoreRequest;->d:Ljava/lang/String;

    return-object p0
.end method
