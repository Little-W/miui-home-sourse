.class public Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;
.super Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;
.source "UpgradeAppwidgetItemInfo.java"


# instance fields
.field public mPickerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p12}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;-><init>(IIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    iput-object p13, p0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mPickerId:Ljava/lang/String;

    return-void
.end method

.method private addAppwidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetHost;[JLjava/util/Queue;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/appwidget/AppWidgetHost;",
            "[J",
            "Ljava/util/Queue<",
            "Lcom/miui/home/launcher/upgradelayout/EmptyPosition;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 32
    iget-object v1, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mValues:Landroid/content/ContentValues;

    iget v2, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mSpanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "spanX"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    iget-object v1, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mValues:Landroid/content/ContentValues;

    iget v2, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mSpanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "spanY"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    iget-object v1, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mValues:Landroid/content/ContentValues;

    iget v2, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mItemFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "itemFlags"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 36
    iget-object v2, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mPickerId:Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->pickerID:Ljava/lang/String;

    const/16 v2, 0x3f3

    .line 37
    iput v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->addSource:I

    .line 38
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getExtraIntentParams()Landroid/content/Intent;

    move-result-object v1

    .line 39
    iget-object v2, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mValues:Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "intent"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v5, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mValues:Landroid/content/ContentValues;

    iget-object v6, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mPackageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mClassName:Ljava/lang/String;

    iget v9, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mSpanX:I

    iget v10, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mSpanY:I

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v11

    const/4 v13, 0x0

    move-object v4, p1

    move-object/from16 v8, p2

    move-object/from16 v12, p3

    .line 40
    invoke-static/range {v4 .. v13}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/os/Bundle;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 45
    iget v1, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mCellX:I

    :goto_0
    iget v2, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mCellX:I

    iget v3, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mSpanX:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 46
    iget v2, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mCellY:I

    :goto_1
    iget v3, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mCellY:I

    iget v4, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mSpanY:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 47
    new-instance v3, Lcom/miui/home/launcher/upgradelayout/EmptyPosition;

    iget-wide v4, v0, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->mScreen:J

    long-to-int v4, v4

    aget-wide v4, p4, v4

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/miui/home/launcher/upgradelayout/EmptyPosition;-><init>(IIJ)V

    move-object/from16 v4, p5

    .line 48
    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v4, p5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V
    .locals 6

    .line 27
    invoke-super {p0, p1}, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutItemInfo;->parse(Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;)V

    .line 28
    iget-object v1, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mAppwidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v4, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->mScreenIds:[J

    iget-object v5, p1, Lcom/miui/home/launcher/upgradelayout/UpgradeLayoutContext;->emptyPositionQueue:Ljava/util/Queue;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/upgradelayout/UpgradeAppwidgetItemInfo;->addAppwidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetHost;[JLjava/util/Queue;)V

    return-void
.end method
