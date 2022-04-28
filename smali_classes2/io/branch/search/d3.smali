.class public final enum Lio/branch/search/d3;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/d3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lio/branch/search/d3;

.field public static final enum d:Lio/branch/search/d3;

.field public static final enum e:Lio/branch/search/d3;

.field public static final enum f:Lio/branch/search/d3;

.field public static final enum g:Lio/branch/search/d3;

.field public static final enum h:Lio/branch/search/d3;

.field public static final enum i:Lio/branch/search/d3;

.field public static final enum j:Lio/branch/search/d3;

.field public static final enum k:Lio/branch/search/d3;

.field public static final enum l:Lio/branch/search/d3;

.field public static final synthetic m:[Lio/branch/search/d3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/branch/search/d3;

    const-string v1, "local_packages"

    const-string v2, "`package_name` TEXT NOT NULL, `user_id` INTEGER NOT NULL, `original_name` TEXT NOT NULL, `normalized_name` TEXT NOT NULL, `case_sensitive_normalized_name` TEXT NOT NULL, `relabeled_name` TEXT, `normalized_relabeled_name` TEXT, `case_sensitive_normalized_relabeled_name` TEXT, `is_installed` BOOLEAN NOT NULL, `first_installed_date` INTEGER, `installed_date` INTEGER, `uninstalled_date` INTEGER, `uninstall_count` INTEGER, PRIMARY KEY(`package_name`, `user_id`)"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v2, v4}, Lio/branch/search/d3;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lio/branch/search/d3;->c:Lio/branch/search/d3;

    new-instance v1, Lio/branch/search/d3;

    sget-object v2, Lio/branch/search/y2;->h:Ljava/lang/String;

    const-string v5, "local_entities"

    invoke-direct {v1, v5, v4, v2}, Lio/branch/search/d3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/branch/search/d3;->d:Lio/branch/search/d3;

    new-instance v2, Lio/branch/search/d3;

    const-string v5, "search_clicks"

    const-string v6, "`session_id` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `request_id` TEXT NOT NULL, `result_id` INTEGER NOT NULL, `package_name` TEXT NOT NULL, `entity_id` TEXT,PRIMARY KEY(`timestamp`)"

    const/4 v7, 0x2

    invoke-direct {v2, v5, v7, v6}, Lio/branch/search/d3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/search/d3;->e:Lio/branch/search/d3;

    new-instance v5, Lio/branch/search/d3;

    const-string v6, "app_clicks"

    const-string v8, "`session_id` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `request_id` TEXT NOT NULL, `package_name` TEXT NOT NULL,PRIMARY KEY(`timestamp`)"

    const/4 v9, 0x3

    invoke-direct {v5, v6, v9, v8}, Lio/branch/search/d3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/branch/search/d3;->f:Lio/branch/search/d3;

    new-instance v6, Lio/branch/search/d3;

    const-string v8, "app_usage_events"

    const-string v10, "`package_name` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `event_type` INTEGER NOT NULL, `class_name` TEXT, PRIMARY KEY(`package_name`, `timestamp`, `event_type`, `class_name`)"

    const/4 v11, 0x4

    invoke-direct {v6, v8, v11, v10}, Lio/branch/search/d3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/branch/search/d3;->g:Lio/branch/search/d3;

    new-instance v8, Lio/branch/search/d3;

    const-string v10, "app_usage_stats"

    const-string v12, "`package_name` TEXT NOT NULL, `screen_uptime` INTEGER NOT NULL, `last_usage_timestamp` INTEGER NOT NULL, PRIMARY KEY(`package_name`)"

    const/4 v13, 0x5

    invoke-direct {v8, v10, v13, v12, v4}, Lio/branch/search/d3;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v8, Lio/branch/search/d3;->h:Lio/branch/search/d3;

    new-instance v10, Lio/branch/search/d3;

    sget-object v12, Lio/branch/search/s3;->f:Ljava/lang/String;

    const-string v14, "unified_virtual_requests"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lio/branch/search/d3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lio/branch/search/d3;->i:Lio/branch/search/d3;

    new-instance v12, Lio/branch/search/d3;

    sget-object v14, Lio/branch/search/r3;->g:Ljava/lang/String;

    const-string v15, "unified_impressions"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lio/branch/search/d3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/branch/search/d3;->j:Lio/branch/search/d3;

    new-instance v14, Lio/branch/search/d3;

    sget-object v15, Lio/branch/search/q3;->h:Ljava/lang/String;

    const-string v13, "unified_entities"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lio/branch/search/d3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lio/branch/search/d3;->k:Lio/branch/search/d3;

    new-instance v13, Lio/branch/search/d3;

    const-string v15, "tracking_status_history"

    const-string v11, "`status` INTEGER NOT NULL, `timestamp` INTEGER NOT NULL,PRIMARY KEY(`timestamp`)"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v9, v11}, Lio/branch/search/d3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lio/branch/search/d3;->l:Lio/branch/search/d3;

    const/16 v11, 0xa

    new-array v11, v11, [Lio/branch/search/d3;

    aput-object v0, v11, v3

    aput-object v1, v11, v4

    aput-object v2, v11, v7

    const/4 v0, 0x3

    aput-object v5, v11, v0

    const/4 v0, 0x4

    aput-object v6, v11, v0

    const/4 v0, 0x5

    aput-object v8, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    const/4 v0, 0x7

    aput-object v12, v11, v0

    const/16 v0, 0x8

    aput-object v14, v11, v0

    aput-object v13, v11, v9

    sput-object v11, Lio/branch/search/d3;->m:[Lio/branch/search/d3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/branch/search/d3;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/branch/search/d3;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/branch/search/d3;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lio/branch/search/d3;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/d3;
    .locals 1

    const-class v0, Lio/branch/search/d3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/d3;

    return-object p0
.end method

.method public static values()[Lio/branch/search/d3;
    .locals 1

    sget-object v0, Lio/branch/search/d3;->m:[Lio/branch/search/d3;

    invoke-virtual {v0}, [Lio/branch/search/d3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/d3;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "` ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/d3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
