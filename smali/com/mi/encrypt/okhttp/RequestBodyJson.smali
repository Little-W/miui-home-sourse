.class public Lcom/mi/encrypt/okhttp/RequestBodyJson;
.super Ljava/lang/Object;
.source "RequestBodyJson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;
    }
.end annotation


# instance fields
.field private final method:Ljava/lang/String;

.field private multiMapHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final plainBody:[B

.field private final query:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->multiMapHeaders:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->method:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->plainBody:[B

    .line 27
    iput-object p3, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->query:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/mi/encrypt/okhttp/RequestBodyJson$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/mi/encrypt/okhttp/RequestBodyJson;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mi/encrypt/okhttp/RequestBodyJson;)Ljava/util/Map;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->multiMapHeaders:Ljava/util/Map;

    return-object p0
.end method

.method private getHeaders()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->multiMapHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 46
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 47
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 50
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->plainBody:[B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    .line 33
    iget-object v3, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->method:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "query"

    .line 34
    iget-object v3, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->query:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "headers"

    .line 35
    invoke-direct {p0}, Lcom/mi/encrypt/okhttp/RequestBodyJson;->getHeaders()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "body"

    .line 36
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
