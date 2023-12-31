.class public Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;
.super Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;
.source "UpgradeFolderFavoriteInfo.java"


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p8}, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillEmptyPosition(Lcom/miui/home/launcher/upgradelayout/EmptyPosition;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;->mValues:Landroid/content/ContentValues;

    iget v1, p1, Lcom/miui/home/launcher/upgradelayout/EmptyPosition;->mCellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;->mValues:Landroid/content/ContentValues;

    iget v1, p1, Lcom/miui/home/launcher/upgradelayout/EmptyPosition;->mCellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;->mValues:Landroid/content/ContentValues;

    iget-wide v1, p1, Lcom/miui/home/launcher/upgradelayout/EmptyPosition;->mScreen:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "screen"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;->mValues:Landroid/content/ContentValues;

    const/16 p1, -0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "container"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V

    return-void
.end method

.method protected updateEmptyPositionQueue(Ljava/util/Queue;[JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/miui/home/launcher/upgradelayout/EmptyPosition;",
            ">;[JZ)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 39
    iget-object p2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;->mValues:Landroid/content/ContentValues;

    const-string p3, "screen"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;->mScreen:J

    cmp-long p0, p2, v0

    if-eqz p0, :cond_0

    .line 40
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected updateValues(Ljava/util/Queue;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/miui/home/launcher/upgradelayout/EmptyPosition;",
            ">;J)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "container"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    iget-object p2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;->mValues:Landroid/content/ContentValues;

    iget-wide v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;->mScreen:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "screen"

    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 23
    invoke-interface {p1}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/upgradelayout/EmptyPosition;

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderFavoriteInfo;->fillEmptyPosition(Lcom/miui/home/launcher/upgradelayout/EmptyPosition;)V

    :cond_0
    return-void
.end method
