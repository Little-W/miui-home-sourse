.class public Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;
.super Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;
.source "UpgradeMamlItemInfo.java"


# instance fields
.field public mPickerId:Ljava/lang/String;

.field public mProductId:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mVersionCode:I


# direct methods
.method public constructor <init>(IIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v13, p0

    const-wide/16 v7, -0x64

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v9, p7

    move-object/from16 v11, p13

    move/from16 v12, p11

    .line 23
    invoke-direct/range {v0 .. v12}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;-><init>(IIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p8

    .line 24
    iput-object v0, v13, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mProductId:Ljava/lang/String;

    move-object/from16 v0, p9

    .line 25
    iput-object v0, v13, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mUri:Ljava/lang/String;

    move/from16 v0, p10

    .line 26
    iput v0, v13, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mVersionCode:I

    move-object/from16 v0, p12

    .line 27
    iput-object v0, v13, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mPickerId:Ljava/lang/String;

    return-void
.end method

.method private addMamlWidget(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mValues:Landroid/content/ContentValues;

    iget v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mSpanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mValues:Landroid/content/ContentValues;

    iget v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mSpanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mValues:Landroid/content/ContentValues;

    iget v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mItemFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "itemFlags"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mValues:Landroid/content/ContentValues;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "itemType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mValues:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mProductId:Ljava/lang/String;

    const-string v2, "product_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mValues:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mTitle:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mProductId:Ljava/lang/String;

    iget v3, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mVersionCode:I

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->installMaMlFromExternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0}, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->getMamlInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResPath(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 47
    iget-object p0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mValues:Landroid/content/ContentValues;

    const-string v1, "favorites"

    invoke-static {p1, v1, v0, p0}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private getMamlInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
    .locals 4

    .line 51
    new-instance v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    .line 52
    iget v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mSpanX:I

    iput v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    .line 53
    iget v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mSpanY:I

    iput v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    .line 54
    iget-object v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mProductId:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mPickerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->pickerID:Ljava/lang/String;

    const/16 v1, 0x3f3

    .line 56
    iput v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->addSource:I

    .line 57
    iget v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mVersionCode:I

    iput v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    .line 58
    iget-object v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->allocMaMlWidgetId()I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    .line 61
    iget-object v1, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getExtraIntentParams()Landroid/content/Intent;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mValues:Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "intent"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->mValues:Landroid/content/ContentValues;

    iget v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V

    .line 33
    iget-object p1, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeMamlItemInfo;->addMamlWidget(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
