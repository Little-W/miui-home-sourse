.class public final Lio/branch/search/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/c2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/branch/search/c2<",
        "Lio/branch/search/s1;",
        "Ljava/util/List<",
        "+",
        "Lio/branch/search/s1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/branch/search/v2;->d:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/v2;->b(Landroid/database/Cursor;)Lio/branch/search/s1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/v2;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/database/Cursor;)Lio/branch/search/s1;
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "cur"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "params"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    return-object v3

    :cond_0
    new-instance v2, Lio/branch/search/s1;

    invoke-static {v0, v1}, Lio/branch/search/c5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    iget v7, v1, Lio/branch/search/v2;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "timestamp"

    invoke-static {v0, v1, v4, v5}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/32 v4, 0xea60

    const-string v1, "min_wait_time"

    invoke-static {v0, v1, v4, v5}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/32 v4, 0x5265c00

    const-string v1, "max_wait_time"

    invoke-static {v0, v1, v4, v5}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v12

    const/4 v1, 0x2

    const-string v4, "initial_backoff_millis"

    invoke-static {v0, v4, v3, v1, v3}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v14, v4

    goto :goto_0

    :cond_1
    move-object v14, v3

    :goto_0
    const-string v4, "back_off_type"

    invoke-static {v0, v4, v3, v1, v3}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v15

    const-string v4, "only_on_wifi"

    invoke-static {v0, v4, v3, v1, v3}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v16

    const-string v4, "must_not_have_low_battery"

    invoke-static {v0, v4, v3, v1, v3}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v17

    const-string v4, "requires_connectivity"

    invoke-static {v0, v4, v3, v1, v3}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v18

    const-string v4, "requires_charging"

    invoke-static {v0, v4, v3, v1, v3}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v19

    const-string v4, "requires_storage_not_low"

    invoke-static {v0, v4, v3, v1, v3}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v20

    const-string v4, "requires_idle_device"

    invoke-static {v0, v4, v3, v1, v3}, Lio/branch/search/c5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v21

    move-object v5, v2

    invoke-direct/range {v5 .. v21}, Lio/branch/search/s1;-><init>(Ljava/lang/String;IJJJLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v2
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/s1;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/s1;",
            ">;"
        }
    .end annotation

    const-string p0, "pings"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
