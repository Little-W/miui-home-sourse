.class public Lcom/tencent/matrix/report/Issue;
.super Ljava/lang/Object;
.source "Issue.java"


# instance fields
.field private content:Lorg/json/JSONObject;

.field private key:Ljava/lang/String;

.field private plugin:Lcom/tencent/matrix/plugin/Plugin;

.field private tag:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/tencent/matrix/report/Issue;->content:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getContent()Lorg/json/JSONObject;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tencent/matrix/report/Issue;->content:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/tencent/matrix/report/Issue;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/tencent/matrix/report/Issue;->type:I

    return v0
.end method

.method public setPlugin(Lcom/tencent/matrix/plugin/Plugin;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tencent/matrix/report/Issue;->plugin:Lcom/tencent/matrix/plugin/Plugin;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tencent/matrix/report/Issue;->tag:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 64
    iget-object v1, p0, Lcom/tencent/matrix/report/Issue;->content:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "tag[%s]type[%d];key[%s];content[%s]"

    const/4 v2, 0x4

    .line 65
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/matrix/report/Issue;->tag:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/matrix/report/Issue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/matrix/report/Issue;->key:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
