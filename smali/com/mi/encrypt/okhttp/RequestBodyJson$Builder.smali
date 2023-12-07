.class public Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/encrypt/okhttp/RequestBodyJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;

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

.field private plainBody:[B

.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->headers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->multiMapHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lcom/mi/encrypt/okhttp/RequestBodyJson;
    .locals 5

    new-instance v0, Lcom/mi/encrypt/okhttp/RequestBodyJson;

    iget-object v1, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->plainBody:[B

    iget-object v3, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->query:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/encrypt/okhttp/RequestBodyJson;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/mi/encrypt/okhttp/RequestBodyJson$1;)V

    invoke-static {v0}, Lcom/mi/encrypt/okhttp/RequestBodyJson;->access$100(Lcom/mi/encrypt/okhttp/RequestBodyJson;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->multiMapHeaders:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->method:Ljava/lang/String;

    return-void
.end method

.method public setMultiMapHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->multiMapHeaders:Ljava/util/Map;

    return-void
.end method

.method public setPlainBody([B)V
    .locals 0

    iput-object p1, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->plainBody:[B

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->query:Ljava/lang/String;

    return-void
.end method
