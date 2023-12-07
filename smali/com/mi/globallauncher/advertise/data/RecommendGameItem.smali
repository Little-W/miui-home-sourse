.class public Lcom/mi/globallauncher/advertise/data/RecommendGameItem;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    const-string v1, ""

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->unjson:Z

    iput p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    iput p2, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    iput p3, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    iput-object p4, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    iput-object p5, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->desc:Ljava/lang/String;

    iput-object p7, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    iput-object p8, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    iput p9, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    iput-object p10, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mi/globallauncher/advertise/data/RecommendGameItem;)V
    .locals 11

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    const-string v1, ""

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    iput v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->unjson:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    const-string v1, "tag"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    const-string v1, "index"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    const-string v1, "icon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    const-string v1, "desc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->desc:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    const-string v1, "score"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    const-string v1, "gameLinkType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    const-string v1, "gameLink"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->unjson:Z

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getGameLink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    return-object p0
.end method

.method public getGameLinkType()I
    .locals 0

    iget p0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    return p0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getScore()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    return-object p0
.end method

.method public getTag()I
    .locals 0

    iget p0, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    return p0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->desc:Ljava/lang/String;

    return-void
.end method

.method public setGameLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLink:Ljava/lang/String;

    return-void
.end method

.method public setGameLinkType(I)V
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->gameLinkType:I

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->id:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->index:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->score:Ljava/lang/String;

    return-void
.end method

.method public setTag(I)V
    .locals 0

    iput p1, p0, Lcom/mi/globallauncher/advertise/data/RecommendGameItem;->tag:I

    return-void
.end method
