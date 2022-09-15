.class public Lcom/market/sdk/utils/Connection$Parameter;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/utils/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameter"
.end annotation


# instance fields
.field private params:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/market/sdk/utils/Connection;


# direct methods
.method public constructor <init>(Lcom/market/sdk/utils/Connection;)V
    .locals 1

    const/4 v0, 0x1

    .line 418
    invoke-direct {p0, p1, v0}, Lcom/market/sdk/utils/Connection$Parameter;-><init>(Lcom/market/sdk/utils/Connection;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/market/sdk/utils/Connection;Z)V
    .locals 1

    .line 421
    iput-object p1, p0, Lcom/market/sdk/utils/Connection$Parameter;->this$0:Lcom/market/sdk/utils/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/market/sdk/utils/Connection$Parameter;->params:Ljava/util/TreeMap;

    if-eqz p2, :cond_0

    .line 425
    iput-object p0, p1, Lcom/market/sdk/utils/Connection;->mParameter:Lcom/market/sdk/utils/Connection$Parameter;

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/Connection$Parameter;
    .locals 1

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/market/sdk/utils/Connection$Parameter;->params:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public add(Ljava/lang/String;Z)Lcom/market/sdk/utils/Connection$Parameter;
    .locals 1

    if-eqz p2, :cond_0

    .line 439
    iget-object p2, p0, Lcom/market/sdk/utils/Connection$Parameter;->params:Ljava/util/TreeMap;

    const-string/jumbo v0, "true"

    invoke-virtual {p2, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 441
    :cond_0
    iget-object p2, p0, Lcom/market/sdk/utils/Connection$Parameter;->params:Ljava/util/TreeMap;

    const-string v0, "false"

    invoke-virtual {p2, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/market/sdk/utils/Connection$Parameter;->params:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getParams()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/market/sdk/utils/Connection$Parameter;->params:Ljava/util/TreeMap;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/market/sdk/utils/Connection$Parameter;->params:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 455
    iget-object v0, p0, Lcom/market/sdk/utils/Connection$Parameter;->params:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    iget-object v1, p0, Lcom/market/sdk/utils/Connection$Parameter;->params:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 460
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 461
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :try_start_0
    iget-object v3, p0, Lcom/market/sdk/utils/Connection$Parameter;->params:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "&"

    .line 466
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
