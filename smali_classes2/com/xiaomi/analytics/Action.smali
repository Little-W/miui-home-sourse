.class public abstract Lcom/xiaomi/analytics/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field protected static final ACTION:Ljava/lang/String; = "_action_"

.field protected static final CATEGORY:Ljava/lang/String; = "_category_"

.field protected static final EVENT_ID:Ljava/lang/String; = "_event_id_"

.field protected static final LABEL:Ljava/lang/String; = "_label_"

.field protected static final VALUE:Ljava/lang/String; = "_value_"

.field private static sKeywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContent:Lorg/json/JSONObject;

.field private mExtra:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    .line 28
    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_event_id_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_category_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_action_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_label_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_value_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Action;->mExtra:Lorg/json/JSONObject;

    return-void
.end method

.method private ensureKey(Ljava/lang/String;)V
    .locals 2

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/xiaomi/analytics/Action;->sKeywords:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is built-in, please pick another key."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method addContent(Ljava/lang/String;I)V
    .locals 1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Action"

    .line 69
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "addContent int value e"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method addContent(Ljava/lang/String;J)V
    .locals 1

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Action"

    .line 79
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "addContent long value e"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method addContent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Action"

    .line 89
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "addContent Object value e"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method addContent(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-direct {p0, v1}, Lcom/xiaomi/analytics/Action;->ensureKey(Ljava/lang/String;)V

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Action"

    .line 103
    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "addContent e"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected addEventId(Ljava/lang/String;)Lcom/xiaomi/analytics/Action;
    .locals 1

    const-string v0, "_event_id_"

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/analytics/Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method addExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/analytics/Action;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Action"

    .line 113
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "addExtra e"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public addParam(Ljava/lang/String;I)Lcom/xiaomi/analytics/Action;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->ensureKey(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/analytics/Action;->addContent(Ljava/lang/String;I)V

    return-object p0
.end method

.method public addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->ensureKey(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/analytics/Action;->addContent(Ljava/lang/String;J)V

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->ensureKey(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/analytics/Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/analytics/Action;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/Action;->ensureKey(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/analytics/Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method final getContent()Lorg/json/JSONObject;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/xiaomi/analytics/Action;->mContent:Lorg/json/JSONObject;

    return-object p0
.end method

.method final getExtra()Lorg/json/JSONObject;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/xiaomi/analytics/Action;->mExtra:Lorg/json/JSONObject;

    return-object p0
.end method
