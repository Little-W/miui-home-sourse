.class public Lcom/xiaomi/analytics/LogEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/LogEvent$IdType;,
        Lcom/xiaomi/analytics/LogEvent$LogType;
    }
.end annotation


# instance fields
.field private mEventTime:J

.field private mExtra:Lorg/json/JSONObject;

.field private mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

.field private mLogContent:Lorg/json/JSONObject;

.field private mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogContent:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->mEventTime:J

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/analytics/LogEvent$IdType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogContent:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->mEventTime:J

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/analytics/LogEvent$LogType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogContent:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->mEventTime:J

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mLogContent:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->mEventTime:J

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    :cond_1
    return-void
.end method

.method public static create()Lcom/xiaomi/analytics/LogEvent;
    .locals 1

    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0}, Lcom/xiaomi/analytics/LogEvent;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;
    .locals 1

    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/LogEvent;-><init>(Lcom/xiaomi/analytics/LogEvent$IdType;)V

    return-object v0
.end method

.method public static create(Lcom/xiaomi/analytics/LogEvent$LogType;)Lcom/xiaomi/analytics/LogEvent;
    .locals 1

    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/LogEvent;-><init>(Lcom/xiaomi/analytics/LogEvent$LogType;)V

    return-object v0
.end method

.method public static create(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;
    .locals 1

    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/analytics/LogEvent;-><init>(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)V

    return-object v0
.end method


# virtual methods
.method public pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "v"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sessionId"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "configKey"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content"

    iget-object p2, p0, Lcom/xiaomi/analytics/LogEvent;->mLogContent:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "eventTime"

    iget-wide p2, p0, Lcom/xiaomi/analytics/LogEvent;->mEventTime:J

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "logType"

    iget-object p2, p0, Lcom/xiaomi/analytics/LogEvent;->mLogType:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {p2}, Lcom/xiaomi/analytics/LogEvent$LogType;->value()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "extra"

    iget-object p2, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "idType"

    iget-object p0, p0, Lcom/xiaomi/analytics/LogEvent;->mIdType:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-virtual {p0}, Lcom/xiaomi/analytics/LogEvent$IdType;->value()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LogEvent"

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pack e"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method setExtraInfo(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->mExtra:Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method setLogContent(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->mLogContent:Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method
