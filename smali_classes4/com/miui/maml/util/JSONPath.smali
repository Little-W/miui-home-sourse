.class public Lcom/miui/maml/util/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JSONPath"


# instance fields
.field private mRoot:Lorg/json/JSONObject;

.field private mRootArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/miui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/miui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "/"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/miui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const/4 p0, 0x0

    move-object v2, v0

    move v0, p0

    .line 52
    :goto_1
    :try_start_0
    array-length v3, p1

    if-ge v0, v3, :cond_a

    .line 53
    aget-object v3, p1, v0

    .line 54
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const-string v4, "["

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    add-int/lit8 v6, v4, 0x1

    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 62
    invoke-virtual {v3, p0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move v6, v5

    .line 65
    :goto_2
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 66
    check-cast v2, Lorg/json/JSONObject;

    .line 67
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    :cond_5
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_7

    .line 71
    move-object v3, v2

    check-cast v3, Lorg/json/JSONArray;

    if-ne v6, v5, :cond_6

    goto :goto_5

    .line 75
    :cond_6
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_9

    .line 78
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    :goto_4
    return-object v1

    :cond_a
    :goto_5
    return-object v2

    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JSONPath"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
