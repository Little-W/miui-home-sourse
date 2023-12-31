.class public Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;
.super Ljava/lang/Object;
.source "UpgradeLayoutItemInfo.java"

# interfaces
.implements Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutNode;


# instance fields
.field public mCellX:I

.field public mCellY:I

.field public mClassName:Ljava/lang/String;

.field public mContainer:J

.field public mIsRetained:Z

.field public mItemFlags:I

.field public mPackageName:Ljava/lang/String;

.field public mScreen:J

.field public mSpanX:I

.field public mSpanY:I

.field public mTitle:Ljava/lang/String;

.field protected mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(IIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mIsRetained:Z

    .line 26
    iput p1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mCellX:I

    .line 27
    iput p2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mCellY:I

    .line 28
    iput p3, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mSpanX:I

    .line 29
    iput p4, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mSpanY:I

    .line 30
    iput-wide p5, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mScreen:J

    .line 31
    iput-wide p7, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mContainer:J

    .line 32
    iput-object p9, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mTitle:Ljava/lang/String;

    .line 33
    iput-object p10, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mClassName:Ljava/lang/String;

    .line 34
    iput-object p11, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mPackageName:Ljava/lang/String;

    .line 35
    iput p12, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mItemFlags:I

    return-void
.end method

.method private fillCommonContentValues([J)V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mValues:Landroid/content/ContentValues;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "profileId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mValues:Landroid/content/ContentValues;

    iget v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mCellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mValues:Landroid/content/ContentValues;

    iget v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mCellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mValues:Landroid/content/ContentValues;

    iget-wide v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mContainer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    iget-wide v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mContainer:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mScreen:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mValues:Landroid/content/ContentValues;

    long-to-int v0, v0

    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "screen"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V
    .locals 1

    .line 41
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mValues:Landroid/content/ContentValues;

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->updateCellX()V

    .line 43
    iget-object p1, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mScreenIds:[J

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->fillCommonContentValues([J)V

    return-void
.end method

.method protected updateCellX()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mCellX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mSpanX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->mCellX:I

    return-void
.end method
