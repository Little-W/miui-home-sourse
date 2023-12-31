.class public final Lio/branch/search/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/c2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/t2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/branch/search/c2<",
        "Lio/branch/search/BranchAppStoreLinkResult;",
        "Ljava/util/List<",
        "Lio/branch/search/BranchAppStoreLinkResult;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/t2$a;

.field public static final e:Lio/branch/search/t1;


# instance fields
.field public final d:Lio/branch/search/m0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/t2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/t2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/t2;->Companion:Lio/branch/search/t2$a;

    new-instance v0, Lio/branch/search/t1;

    const-string v1, "ANA_"

    invoke-direct {v0, v1}, Lio/branch/search/t1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/branch/search/t2;->e:Lio/branch/search/t1;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/m0;)V
    .locals 1

    const-string v0, "virtualRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/t2;->d:Lio/branch/search/m0;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/t2;->b(Landroid/database/Cursor;)Lio/branch/search/BranchAppStoreLinkResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/t2;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/database/Cursor;)Lio/branch/search/BranchAppStoreLinkResult;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "cur"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "entity_id"

    invoke-static {v1, v2}, Lio/branch/search/c5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "package_name"

    invoke-static {v1, v2}, Lio/branch/search/c5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "name"

    invoke-static {v1, v2}, Lio/branch/search/c5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, ""

    const-string v3, "app_name"

    invoke-static {v1, v3, v2}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "image_url"

    invoke-static {v1, v3}, Lio/branch/search/c5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "description"

    invoke-static {v1, v3}, Lio/branch/search/c5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "impression_url"

    invoke-static {v1, v3, v2}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "click_tracking_link"

    invoke-static {v1, v3, v2}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v3, v0, Lio/branch/search/t2;->d:Lio/branch/search/m0;

    iget-object v3, v3, Lio/branch/search/m0;->f:Ljava/lang/String;

    const-string v6, "virtualRequest.id"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "%7B%7Brequest_id%7D%7D"

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object/from16 v16, v3

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "ranking_hint"

    invoke-static {v1, v3, v2}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "average_rating"

    invoke-static {v1, v2}, Lio/branch/search/c5;->b(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v17

    const-string v2, "ratings_count"

    invoke-static {v1, v2}, Lio/branch/search/c5;->d(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v18

    const-string v2, "downloads_count"

    invoke-static {v1, v2}, Lio/branch/search/c5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v2, "app_size"

    invoke-static {v1, v2}, Lio/branch/search/c5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v2, "linking"

    invoke-static {v1, v2}, Lio/branch/search/c5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v2, "container_type"

    const-string v3, "app_store_search"

    invoke-static {v1, v2, v3}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "content_type"

    const-string v3, "app_store"

    invoke-static {v1, v2, v3}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Lio/branch/search/BranchAppStoreLinkResult;

    move-object v3, v2

    iget-object v5, v0, Lio/branch/search/t2;->d:Lio/branch/search/m0;

    iget-object v5, v5, Lio/branch/search/m0;->f:Ljava/lang/String;

    move-object/from16 v23, v5

    move-object/from16 v24, v2

    move-object/from16 v2, v23

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lio/branch/search/t2;->d:Lio/branch/search/m0;

    invoke-virtual {v2}, Lio/branch/search/m0;->e()I

    move-result v6

    invoke-direct/range {v3 .. v22}, Lio/branch/search/BranchAppStoreLinkResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lio/branch/search/t2;->d:Lio/branch/search/m0;

    sget-object v2, Lio/branch/search/t2;->e:Lio/branch/search/t1;

    invoke-virtual {v2, v1}, Lio/branch/search/t1;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-virtual {v0, v2, v1}, Lio/branch/search/m0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    return-object v2
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

    iget-object v3, p0, Lio/branch/search/t2;->d:Lio/branch/search/m0;

    invoke-virtual {v2, v3}, Lio/branch/search/BranchBaseLinkResult;->validate(Lio/branch/search/m0;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
