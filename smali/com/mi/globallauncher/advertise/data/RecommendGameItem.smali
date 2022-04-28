.class public Lcom/mi/globallauncher/advertise/data/RecommendGameItem;
.super Ljava/lang/Object;
.source "RecommendGameItem.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private gameLink:Ljava/lang/String;

.field private gameLinkType:I

.field private icon:Ljava/lang/String;

.field private id:I

.field private index:I

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private tag:I

.field public unjson:Z


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    .line 10
    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    .line 12
    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    const-string v1, ""

    .line 14
    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    const-string v1, ""

    .line 16
    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    const-string v1, ""

    .line 20
    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    const-string v1, ""

    .line 22
    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    .line 24
    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->unjson:Z

    .line 43
    iput p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    .line 44
    iput p2, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    .line 45
    iput p3, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    .line 46
    iput-object p4, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->desc:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    .line 51
    iput p9, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    .line 52
    iput-object p10, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mi/globallauncher/advertise/data/RecommendGameItem;)V
    .locals 11

    .line 73
    iget v1, p1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    iget v2, p1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    iget v3, p1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    iget-object v4, p1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    iget-object v5, p1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    iget-object v6, p1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->desc:Ljava/lang/String;

    iget-object v7, p1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    iget-object v8, p1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    iget v9, p1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    iget-object v10, p1, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    .line 10
    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    .line 12
    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    const-string v1, ""

    .line 14
    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    const-string v1, ""

    .line 16
    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    const-string v1, ""

    .line 20
    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    const-string v1, ""

    .line 22
    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    .line 24
    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    const-string v1, ""

    .line 26
    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->unjson:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "id"

    .line 58
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    const-string v1, "tag"

    .line 59
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    const-string v1, "index"

    .line 60
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    const-string v1, "icon"

    .line 61
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    const-string v1, "name"

    .line 62
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    const-string v1, "desc"

    .line 63
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->desc:Ljava/lang/String;

    const-string v1, "packageName"

    .line 64
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    const-string v1, "score"

    .line 65
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    const-string v1, "gameLinkType"

    .line 66
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    const-string v1, "gameLink"

    .line 67
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    .line 69
    iput-boolean v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->unjson:Z

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getGameLink()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    return-object v0
.end method

.method public getGameLinkType()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->desc:Ljava/lang/String;

    return-void
.end method

.method public setGameLink(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    return-void
.end method

.method public setGameLinkType(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    return-void
.end method

.method public setTag(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    return-void
.end method
