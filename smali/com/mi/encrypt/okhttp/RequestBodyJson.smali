.class public Lcom/mi/encrypt/okhttp/RequestBodyJson;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->multiMapHeaders:Ljava/util/Map;

    iput-object p1, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->method:Ljava/lang/String;

    iput-object p2, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->plainBody:[B

    iput-object p3, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->query:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/mi/encrypt/okhttp/RequestBodyJson$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mi/encrypt/okhttp/RequestBodyJson;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mi/encrypt/okhttp/RequestBodyJson;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->multiMapHeaders:Ljava/util/Map;

    return-object p0
.end method

.method private getHeaders()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->multiMapHeaders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

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

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->plainBody:[B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->method:Ljava/lang/String;

    const-string v3, "method"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson;->query:Ljava/lang/String;

    const-string v3, "query"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/mi/encrypt/okhttp/RequestBodyJson;->getHeaders()Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "headers"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "body"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
