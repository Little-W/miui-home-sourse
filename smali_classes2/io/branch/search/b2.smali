.class public final Lio/branch/search/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/branch/search/a2;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/branch/search/q3;",
            "Ljava/util/List<",
            "Lio/branch/search/a2;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [Lkotlin/Pair;

    new-instance v2, Lio/branch/search/a2;

    const-string v3, "CREATE TABLE IF NOT EXISTS `internal_setup_teardown` (\n                    `id` TEXT,\n                    `phase` TEXT,\n                    `position` INTEGER,\n                    `query` TEXT,\n                    `binds` TEXT,\n                    `repeat_binds` INTEGER)"

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v4, v3}, Lio/branch/search/a2;-><init>(ILjava/util/List;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "SETUP_TEARDOWN_MIGRATION"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lio/branch/search/a2;

    const-string v5, "CREATE TABLE IF NOT EXISTS `tracking_status_history` (\n                    `status` INTEGER NOT NULL,\n                    `timestamp` INTEGER NOT NULL,\n                    PRIMARY KEY (timestamp))"

    const-string v6, "CREATE TABLE IF NOT EXISTS `scheduled_query_execution_history` (\n                    `query_id` INTEGER NOT NULL,\n                    `timestamp` INTEGER NOT NULL,\n                    `error` TEXT,\n                    PRIMARY KEY (query_id, timestamp))"

    const-string v7, "CREATE TABLE IF NOT EXISTS `scheduled_queries` (\n                    `query_id` INTEGER NOT NULL,\n                    `query` TEXT NOT NULL,\n                    `bindings` TEXT,\n                    `should_execute_now_query` TEXT NOT NULL,\n                    `should_execute_now_query_bindings` TEXT,\n                    `weight` INTEGER NOT NULL,\n                    `transaction_group_id` INTEGER,\n                    `uses_cursor` INTEGER NOT NULL,\n                    PRIMARY KEY (query_id))"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct {v2, v6, v5}, Lio/branch/search/a2;-><init>(ILjava/util/List;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v5, "SCHEDULED_QUERIES"

    invoke-static {v5, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lio/branch/search/b2;->a:Ljava/util/Map;

    const/4 v1, 0x6

    new-array v2, v1, [Lkotlin/Pair;

    sget-object v7, Lio/branch/search/q3;->g:Lio/branch/search/q3;

    new-instance v8, Lio/branch/search/a2;

    const-string v9, "CREATE TABLE `app_usage_events_new` (\n                    `package_name` TEXT NOT NULL,\n                    `timestamp` INTEGER NOT NULL,\n                    `event_type` INTEGER NOT NULL,\n                    `class_name` TEXT,\n                    PRIMARY KEY(`package_name`, `timestamp`, `event_type`, `class_name`)\n            )"

    const-string v10, "INSERT INTO app_usage_events_new SELECT * FROM app_usage_events"

    const-string v11, "DROP TABLE app_usage_events"

    const-string v12, "ALTER TABLE app_usage_events_new RENAME TO app_usage_events"

    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Lio/branch/search/a2;-><init>(ILjava/util/List;)V

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v2, v3

    sget-object v3, Lio/branch/search/q3;->c:Lio/branch/search/q3;

    new-instance v7, Lio/branch/search/a2;

    const-string v8, "ALTER TABLE local_packages ADD COLUMN `relabeled_name` TEXT"

    const-string v9, "ALTER TABLE local_packages ADD COLUMN `normalized_relabeled_name` TEXT"

    const-string v10, "ALTER TABLE local_packages ADD COLUMN `case_sensitive_normalized_relabeled_name` TEXT"

    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x4

    invoke-direct {v7, v9, v8}, Lio/branch/search/a2;-><init>(ILjava/util/List;)V

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lio/branch/search/q3;->j:Lio/branch/search/q3;

    new-instance v5, Lio/branch/search/a2;

    const-string v7, "CREATE TABLE `new_unified_impressions`(\n                    `request_id` TEXT NOT NULL,\n                    `result_id` INTEGER NOT NULL,\n                    `entity_id` TEXT,\n                    `area` FLOAT NOT NULL,\n                    `start_time` INTEGER NOT NULL,\n                    `duration` INTEGER NOT NULL,\n                    PRIMARY KEY(`request_id`, `result_id`, `start_time`, `duration`)\n                    )"

    const-string v8, "INSERT OR IGNORE INTO new_unified_impressions(\n                    request_id,\n                    result_id,\n                    entity_id,\n                    area,\n                    start_time,\n                    duration)\n                    SELECT request_id, result_id, entity_id, area, start_time, duration FROM unified_impressions"

    const-string v10, "DROP TABLE unified_impressions"

    const-string v11, "ALTER TABLE new_unified_impressions RENAME TO unified_impressions"

    filled-new-array {v7, v8, v10, v11}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v1, v7}, Lio/branch/search/a2;-><init>(ILjava/util/List;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v0, Lio/branch/search/q3;->f:Lio/branch/search/q3;

    new-instance v3, Lio/branch/search/a2;

    const-string v5, "CREATE TABLE `new_app_clicks`(\n                    `session_id` TEXT NOT NULL,\n                    `timestamp` INTEGER NOT NULL,\n                    `request_id` TEXT NOT NULL,\n                    `package_name` TEXT NOT NULL,\n                    PRIMARY KEY(`timestamp`)\n                    )"

    const-string v7, "INSERT OR IGNORE INTO new_app_clicks(\n                    session_id,\n                    timestamp,\n                    request_id,\n                    package_name)\n                    SELECT session_id, timestamp, request_id, package_name FROM app_clicks"

    const-string v8, "DROP TABLE app_clicks"

    const-string v10, "ALTER TABLE new_app_clicks RENAME TO app_clicks"

    filled-new-array {v5, v7, v8, v10}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Lio/branch/search/a2;-><init>(ILjava/util/List;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v4

    sget-object v0, Lio/branch/search/q3;->e:Lio/branch/search/q3;

    new-instance v3, Lio/branch/search/a2;

    const-string v4, "CREATE TABLE `new_search_clicks`(\n                    `session_id` TEXT NOT NULL,\n                    `timestamp` INTEGER NOT NULL,\n                    `request_id` TEXT NOT NULL,\n                    `result_id` INTEGER NOT NULL,\n                    `package_name` TEXT NOT NULL,\n                    `entity_id` TEXT,\n                    PRIMARY KEY(`timestamp`)\n                    )"

    const-string v5, "INSERT OR IGNORE INTO new_search_clicks(\n                    session_id,\n                    timestamp,\n                    request_id,\n                    result_id,\n                    package_name,\n                    entity_id)\n                    SELECT session_id, timestamp, request_id, result_id, package_name, entity_id FROM search_clicks"

    const-string v7, "DROP TABLE search_clicks"

    const-string v8, "ALTER TABLE new_search_clicks RENAME TO search_clicks"

    filled-new-array {v4, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lio/branch/search/a2;-><init>(ILjava/util/List;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v9

    sget-object v0, Lio/branch/search/q3;->l:Lio/branch/search/q3;

    new-instance v3, Lio/branch/search/a2;

    const-string v4, "CREATE TABLE `new_tracking_status_history`(\n                    `status` INTEGER NOT NULL,\n                    `timestamp` INTEGER NOT NULL,\n                    PRIMARY KEY(`timestamp`)\n                    )"

    const-string v5, "INSERT OR IGNORE INTO new_tracking_status_history(\n                    status,\n                    timestamp)\n                    SELECT status, timestamp FROM tracking_status_history"

    const-string v7, "DROP TABLE tracking_status_history"

    const-string v8, "ALTER TABLE new_tracking_status_history RENAME TO tracking_status_history"

    filled-new-array {v4, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lio/branch/search/a2;-><init>(ILjava/util/List;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/branch/search/b2;->b:Ljava/util/Map;

    return-void
.end method

.method public static final a(Ljava/util/Collection;I)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/branch/search/q3;",
            ">;I)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "tables"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lio/branch/search/b2;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/a2;

    invoke-virtual {v3}, Lio/branch/search/a2;->b()I

    move-result v4

    if-le v4, p1, :cond_1

    invoke-virtual {v3}, Lio/branch/search/a2;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/q3;

    sget-object v2, Lio/branch/search/b2;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/a2;

    invoke-virtual {v2}, Lio/branch/search/a2;->b()I

    move-result v3

    if-le v3, p1, :cond_4

    invoke-virtual {v2}, Lio/branch/search/a2;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method
