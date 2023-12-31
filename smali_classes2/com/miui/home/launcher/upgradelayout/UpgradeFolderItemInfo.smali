.class public Lcom/miui/home/launcher/upgradelayout/UpgradeFolderItemInfo;
.super Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;
.source "UpgradeFolderItemInfo.java"


# direct methods
.method public constructor <init>(IIIIJLjava/lang/String;)V
    .locals 13

    const-wide/16 v7, -0x64

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v9, p7

    .line 21
    invoke-direct/range {v0 .. v12}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;-><init>(IIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private addFolder(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V
    .locals 6

    .line 32
    iget-object v0, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderItemInfo;->mValues:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderItemInfo;->mTitle:Ljava/lang/String;

    const/16 v3, 0x15

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;III)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->newFolderId:J

    return-void
.end method

.method private updateOldToolsFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 5

    const-string p0, "com.miui.home:string/new_default_folder_title_tools"

    .line 38
    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->queryIdByTitle(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 40
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110382

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "title"

    invoke-virtual {p0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "label"

    invoke-virtual {p0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "favorites"

    const-string v1, "_id=?"

    invoke-virtual {p1, v0, p0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V

    .line 27
    iget-object v0, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderItemInfo;->updateOldToolsFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderItemInfo;->addFolder(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V

    return-void
.end method
