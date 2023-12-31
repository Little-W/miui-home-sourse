.class public final enum Lio/branch/search/q3;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/q3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lio/branch/search/q3;

.field public static final enum d:Lio/branch/search/q3;

.field public static final enum e:Lio/branch/search/q3;

.field public static final enum f:Lio/branch/search/q3;

.field public static final enum g:Lio/branch/search/q3;

.field public static final enum h:Lio/branch/search/q3;

.field public static final enum i:Lio/branch/search/q3;

.field public static final enum j:Lio/branch/search/q3;

.field public static final enum k:Lio/branch/search/q3;

.field public static final enum l:Lio/branch/search/q3;

.field public static final synthetic m:[Lio/branch/search/q3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/branch/search/q3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "local_packages"

    const-string v4, "`package_name` TEXT NOT NULL, `user_id` INTEGER NOT NULL, `original_name` TEXT NOT NULL, `normalized_name` TEXT NOT NULL, `case_sensitive_normalized_name` TEXT NOT NULL, `relabeled_name` TEXT, `normalized_relabeled_name` TEXT, `case_sensitive_normalized_relabeled_name` TEXT, `is_installed` BOOLEAN NOT NULL, `first_installed_date` INTEGER, `installed_date` INTEGER, `uninstalled_date` INTEGER, `uninstall_count` INTEGER, PRIMARY KEY(`package_name`, `user_id`)"

    invoke-direct {v0, v3, v1, v4, v2}, Lio/branch/search/q3;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lio/branch/search/q3;->c:Lio/branch/search/q3;

    new-instance v3, Lio/branch/search/q3;

    sget-object v4, Lio/branch/search/l3;->h:Ljava/lang/String;

    const-string v5, "local_entities"

    invoke-direct {v3, v5, v2, v4}, Lio/branch/search/q3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/branch/search/q3;->d:Lio/branch/search/q3;

    new-instance v4, Lio/branch/search/q3;

    const/4 v5, 0x2

    const-string v6, "search_clicks"

    const-string v7, "`session_id` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `request_id` TEXT NOT NULL, `result_id` INTEGER NOT NULL, `package_name` TEXT NOT NULL, `entity_id` TEXT,PRIMARY KEY(`timestamp`)"

    invoke-direct {v4, v6, v5, v7}, Lio/branch/search/q3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/search/q3;->e:Lio/branch/search/q3;

    new-instance v6, Lio/branch/search/q3;

    const/4 v7, 0x3

    const-string v8, "app_clicks"

    const-string v9, "`session_id` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `request_id` TEXT NOT NULL, `package_name` TEXT NOT NULL,PRIMARY KEY(`timestamp`)"

    invoke-direct {v6, v8, v7, v9}, Lio/branch/search/q3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/branch/search/q3;->f:Lio/branch/search/q3;

    new-instance v8, Lio/branch/search/q3;

    const/4 v9, 0x4

    const-string v10, "app_usage_events"

    const-string v11, "`package_name` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `event_type` INTEGER NOT NULL, `class_name` TEXT, PRIMARY KEY(`package_name`, `timestamp`, `event_type`, `class_name`)"

    invoke-direct {v8, v10, v9, v11}, Lio/branch/search/q3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lio/branch/search/q3;->g:Lio/branch/search/q3;

    new-instance v10, Lio/branch/search/q3;

    const/4 v11, 0x5

    const-string v12, "app_usage_stats"

    const-string v13, "`package_name` TEXT NOT NULL, `screen_uptime` INTEGER NOT NULL, `last_usage_timestamp` INTEGER NOT NULL, PRIMARY KEY(`package_name`)"

    invoke-direct {v10, v12, v11, v13, v2}, Lio/branch/search/q3;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v10, Lio/branch/search/q3;->h:Lio/branch/search/q3;

    new-instance v12, Lio/branch/search/q3;

    sget-object v13, Lio/branch/search/f4;->f:Ljava/lang/String;

    const/4 v14, 0x6

    const-string v15, "unified_virtual_requests"

    invoke-direct {v12, v15, v14, v13}, Lio/branch/search/q3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/branch/search/q3;->i:Lio/branch/search/q3;

    new-instance v13, Lio/branch/search/q3;

    sget-object v15, Lio/branch/search/e4;->g:Ljava/lang/String;

    const/4 v14, 0x7

    const-string v11, "unified_impressions"

    invoke-direct {v13, v11, v14, v15}, Lio/branch/search/q3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lio/branch/search/q3;->j:Lio/branch/search/q3;

    new-instance v11, Lio/branch/search/q3;

    sget-object v15, Lio/branch/search/d4;->h:Ljava/lang/String;

    const/16 v14, 0x8

    const-string v9, "unified_entities"

    invoke-direct {v11, v9, v14, v15}, Lio/branch/search/q3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lio/branch/search/q3;->k:Lio/branch/search/q3;

    new-instance v9, Lio/branch/search/q3;

    const/16 v15, 0x9

    const-string v14, "tracking_status_history"

    const-string v7, "`status` INTEGER NOT NULL, `timestamp` INTEGER NOT NULL,PRIMARY KEY(`timestamp`)"

    invoke-direct {v9, v14, v15, v7}, Lio/branch/search/q3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lio/branch/search/q3;->l:Lio/branch/search/q3;

    const/16 v7, 0xa

    new-array v7, v7, [Lio/branch/search/q3;

    aput-object v0, v7, v1

    aput-object v3, v7, v2

    aput-object v4, v7, v5

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v13, v7, v0

    const/16 v0, 0x8

    aput-object v11, v7, v0

    aput-object v9, v7, v15

    sput-object v7, Lio/branch/search/q3;->m:[Lio/branch/search/q3;

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

    iput-object p3, p0, Lio/branch/search/q3;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/branch/search/q3;->b:Z

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

    iput-object p3, p0, Lio/branch/search/q3;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lio/branch/search/q3;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/q3;
    .locals 1

    const-class v0, Lio/branch/search/q3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/q3;

    return-object p0
.end method

.method public static values()[Lio/branch/search/q3;
    .locals 1

    sget-object v0, Lio/branch/search/q3;->m:[Lio/branch/search/q3;

    invoke-virtual {v0}, [Lio/branch/search/q3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/q3;

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

    iget-object p0, p0, Lio/branch/search/q3;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "`"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
