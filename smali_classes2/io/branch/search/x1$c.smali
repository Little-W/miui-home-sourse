.class public Lio/branch/search/x1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/x1$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/x1$c;->a:Ljava/util/List;

    const v0, 0xf731400

    iput v0, p0, Lio/branch/search/x1$c;->b:I

    iput v0, p0, Lio/branch/search/x1$c;->c:I

    iput-object p1, p0, Lio/branch/search/x1$c;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/branch/search/x1$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/branch/search/x1$c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/x1$c;->a:Ljava/util/List;

    const v0, 0xf731400

    iput v0, p0, Lio/branch/search/x1$c;->b:I

    iput v0, p0, Lio/branch/search/x1$c;->c:I

    const-string v1, "actions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "request_id"

    const-string v3, "error"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/branch/search/x1$c;->d:Ljava/lang/String;

    const-string v2, "min_refresh_wait_millis"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lio/branch/search/x1$c;->b:I

    const-string v2, "max_refresh_wait_millis"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lio/branch/search/x1$c;->c:I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_a

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "IMAGE_PRELOAD"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v7

    goto :goto_1

    :sswitch_1
    const-string v6, "DELETE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v8

    goto :goto_1

    :sswitch_2
    const-string v6, "CREATE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v9

    goto :goto_1

    :sswitch_3
    const-string v6, "CLEAR_IMAGES"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v5, v10

    goto :goto_1

    :sswitch_4
    const-string v6, "UPDATE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v5, p1

    :goto_1
    if-eqz v5, :cond_9

    if-eq v5, v10, :cond_8

    if-eq v5, v9, :cond_7

    if-eq v5, v8, :cond_6

    if-ne v5, v7, :cond_5

    iget-object v3, p0, Lio/branch/search/x1$c;->a:Ljava/util/List;

    new-instance v4, Lio/branch/search/x1$g;

    invoke-direct {v4, v2}, Lio/branch/search/x1$g;-><init>(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object v3, p0, Lio/branch/search/x1$c;->a:Ljava/util/List;

    new-instance v4, Lio/branch/search/x1$f;

    invoke-direct {v4, v2}, Lio/branch/search/x1$f;-><init>(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lio/branch/search/x1$c;->a:Ljava/util/List;

    new-instance v4, Lio/branch/search/x1$e;

    invoke-direct {v4, v2}, Lio/branch/search/x1$e;-><init>(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lio/branch/search/x1$c;->a:Ljava/util/List;

    new-instance v3, Lio/branch/search/x1$d;

    invoke-direct {v3}, Lio/branch/search/x1$d;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lio/branch/search/x1$c;->a:Ljava/util/List;

    new-instance v4, Lio/branch/search/x1$l;

    invoke-direct {v4, v2}, Lio/branch/search/x1$l;-><init>(Lorg/json/JSONObject;)V

    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a6cd337 -> :sswitch_4
        0x1d0cd8ca -> :sswitch_3
        0x76f894fc -> :sswitch_2
        0x77f979ab -> :sswitch_1
        0x7d0ce6e5 -> :sswitch_0
    .end sparse-switch
.end method
