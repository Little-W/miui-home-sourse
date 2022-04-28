.class public final Lio/branch/search/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/p1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/g2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/branch/search/p1<",
        "Lio/branch/search/BranchAppStoreLinkResult;",
        "Ljava/util/List<",
        "Lio/branch/search/BranchAppStoreLinkResult;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/g2$a;

.field public static final e:Lio/branch/search/h1;


# instance fields
.field public final d:Lio/branch/search/c0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/g2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/g2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/g2;->Companion:Lio/branch/search/g2$a;

    new-instance v0, Lio/branch/search/h1;

    const-string v1, "ANA_"

    invoke-direct {v0, v1}, Lio/branch/search/h1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/branch/search/g2;->e:Lio/branch/search/h1;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/c0;)V
    .locals 1

    const-string v0, "virtualRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/g2;->d:Lio/branch/search/c0;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/g2;->b(Landroid/database/Cursor;)Lio/branch/search/BranchAppStoreLinkResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/g2;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/database/Cursor;)Lio/branch/search/BranchAppStoreLinkResult;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "cur"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "entity_id"

    invoke-static {v1, v2}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "package_name"

    invoke-static {v1, v2}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "name"

    invoke-static {v1, v2}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "app_name"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lio/branch/search/q4;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "image_url"

    invoke-static {v1, v2}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "description"

    invoke-static {v1, v2}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "impression_url"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lio/branch/search/q4;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "click_tracking_link"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lio/branch/search/q4;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v2, v0, Lio/branch/search/g2;->d:Lio/branch/search/c0;

    iget-object v2, v2, Lio/branch/search/c0;->e:Ljava/lang/String;

    const-string v3, "virtualRequest.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "%7B%7Brequest_id%7D%7D"

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "ranking_hint"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lio/branch/search/q4;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "average_rating"

    invoke-static {v1, v2}, Lio/branch/search/q4;->b(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v15

    const-string v2, "ratings_count"

    invoke-static {v1, v2}, Lio/branch/search/q4;->d(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v16

    const-string v2, "downloads_count"

    invoke-static {v1, v2}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "app_size"

    invoke-static {v1, v2}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v2, "linking"

    invoke-static {v1, v2}, Lio/branch/search/q4;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    new-instance v2, Lio/branch/search/BranchAppStoreLinkResult;

    move-object v3, v2

    iget-object v5, v0, Lio/branch/search/g2;->d:Lio/branch/search/c0;

    iget-object v6, v5, Lio/branch/search/c0;->e:Ljava/lang/String;

    move-object v5, v6

    move-object/from16 v21, v2

    const-string v2, "virtualRequest.id"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lio/branch/search/g2;->d:Lio/branch/search/c0;

    invoke-virtual {v2}, Lio/branch/search/c0;->e()I

    move-result v6

    invoke-direct/range {v3 .. v20}, Lio/branch/search/BranchAppStoreLinkResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lio/branch/search/g2;->d:Lio/branch/search/c0;

    sget-object v3, Lio/branch/search/g2;->e:Lio/branch/search/h1;

    invoke-virtual {v3, v1}, Lio/branch/search/h1;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v3, v21

    invoke-virtual {v2, v3, v1}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    return-object v3
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppStoreLinkResult;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppStoreLinkResult;",
            ">;"
        }
    .end annotation

    const-string v0, "queryResults"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/branch/search/BranchAppStoreLinkResult;

    iget-object v3, p0, Lio/branch/search/g2;->d:Lio/branch/search/c0;

    invoke-virtual {v2, v3}, Lio/branch/search/BranchBaseLinkResult;->validate(Lio/branch/search/c0;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
