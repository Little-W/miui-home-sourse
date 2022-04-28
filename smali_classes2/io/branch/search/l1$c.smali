.class public Lio/branch/search/l1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/l1;
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
            "Lio/branch/search/l1$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/l1$c;->a:Ljava/util/List;

    const v0, 0xf731400

    iput v0, p0, Lio/branch/search/l1$c;->b:I

    iput v0, p0, Lio/branch/search/l1$c;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/branch/search/l1$a;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/l1$c;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/l1$c;->a:Ljava/util/List;

    const v0, 0xf731400

    iput v0, p0, Lio/branch/search/l1$c;->b:I

    iput v0, p0, Lio/branch/search/l1$c;->c:I

    const-string v1, "actions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "min_refresh_wait_millis"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lio/branch/search/l1$c;->b:I

    const-string v2, "max_refresh_wait_millis"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lio/branch/search/l1$c;->c:I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "IMAGE_PRELOAD"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_1
    const-string v5, "DELETE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_2
    const-string v5, "CREATE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v5, "CLEAR_IMAGES"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    :sswitch_4
    const-string v5, "UPDATE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, p1

    goto :goto_2

    :goto_1
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "action"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v3, p0, Lio/branch/search/l1$c;->a:Ljava/util/List;

    new-instance v4, Lio/branch/search/l1$g;

    invoke-direct {v4, v2}, Lio/branch/search/l1$g;-><init>(Lorg/json/JSONObject;)V

    goto :goto_3

    :pswitch_1
    iget-object v3, p0, Lio/branch/search/l1$c;->a:Ljava/util/List;

    new-instance v4, Lio/branch/search/l1$f;

    invoke-direct {v4, v2}, Lio/branch/search/l1$f;-><init>(Lorg/json/JSONObject;)V

    goto :goto_3

    :pswitch_2
    iget-object v3, p0, Lio/branch/search/l1$c;->a:Ljava/util/List;

    new-instance v4, Lio/branch/search/l1$e;

    invoke-direct {v4, v2}, Lio/branch/search/l1$e;-><init>(Lorg/json/JSONObject;)V

    goto :goto_3

    :pswitch_3
    iget-object v2, p0, Lio/branch/search/l1$c;->a:Ljava/util/List;

    new-instance v3, Lio/branch/search/l1$d;

    invoke-direct {v3}, Lio/branch/search/l1$d;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_4
    iget-object v3, p0, Lio/branch/search/l1$c;->a:Ljava/util/List;

    new-instance v4, Lio/branch/search/l1$l;

    invoke-direct {v4, v2}, Lio/branch/search/l1$l;-><init>(Lorg/json/JSONObject;)V

    :goto_3
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a6cd337 -> :sswitch_4
        0x1d0cd8ca -> :sswitch_3
        0x76f894fc -> :sswitch_2
        0x77f979ab -> :sswitch_1
        0x7d0ce6e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
