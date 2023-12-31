.class public Lcom/miui/home/launcher/upgradelayout/UpgradeDesktopFavoriteInfo;
.super Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;
.source "UpgradeDesktopFavoriteInfo.java"


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p8}, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeFavoriteInfo;->parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V

    return-void
.end method

.method protected updateEmptyPositionQueue(Ljava/util/Queue;[JZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/miui/home/launcher/upgradelayout/EmptyPosition;",
            ">;[JZ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 19
    new-instance p3, Lcom/miui/home/launcher/upgradelayout/EmptyPosition;

    iget v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeDesktopFavoriteInfo;->mCellX:I

    iget v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeDesktopFavoriteInfo;->mCellY:I

    iget-wide v2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeDesktopFavoriteInfo;->mScreen:J

    long-to-int p0, v2

    aget-wide v2, p2, p0

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/miui/home/launcher/upgradelayout/EmptyPosition;-><init>(IIJ)V

    .line 20
    invoke-interface {p1, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected updateValues(Ljava/util/Queue;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/miui/home/launcher/upgradelayout/EmptyPosition;",
            ">;J)V"
        }
    .end annotation

    return-void
.end method
