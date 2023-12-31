.class Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;
.super Ljava/lang/Object;
.source "BaseAutoInstallsLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$1;)V
    .locals 0

    .line 457
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "spanY"

    const-string v4, "spanX"

    const-string v5, "packageName"

    .line 462
    invoke-static {v1, v5}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "className"

    .line 463
    invoke-static {v1, v6}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 464
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v10, "AutoInstalls"

    if-nez v7, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v7, -0x1

    .line 473
    :try_start_0
    invoke-static {v1, v4}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 474
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v12

    .line 473
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :try_start_1
    invoke-static {v1, v3}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 476
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v13

    .line 475
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v11, v7

    :catch_1
    move v12, v7

    .line 479
    :goto_0
    iget-object v13, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object v13, v13, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 480
    iget-object v0, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$600(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/appwidget/AppWidgetHost;

    move-result-object v7

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v6

    move v4, v11

    move v5, v12

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$700(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;IILandroid/appwidget/AppWidgetHost;)J

    move-result-wide v0

    return-wide v0

    .line 484
    :cond_1
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 485
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    .line 487
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/4 v8, 0x3

    if-ne v15, v8, :cond_4

    .line 488
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v14, :cond_2

    goto/16 :goto_3

    .line 505
    :cond_2
    iget-object v1, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object v1, v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    iget-object v1, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object v4, v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object v7, v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    .line 507
    invoke-static {v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$600(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/appwidget/AppWidgetHost;

    move-result-object v8

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v5

    move-object v3, v6

    move v5, v11

    move v6, v12

    move-object v9, v13

    .line 506
    invoke-static/range {v0 .. v9}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/os/Bundle;)J

    move-result-wide v0

    return-wide v0

    .line 510
    :cond_3
    :try_start_2
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 512
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 513
    invoke-virtual {v1, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v5, "appWidgetId"

    .line 514
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "intent"

    const/4 v6, 0x0

    .line 515
    invoke-virtual {v1, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemFlags"

    const/16 v5, 0x8

    .line 516
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "itemType"

    const/4 v5, 0x4

    .line 517
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "appWidgetProvider"

    .line 520
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "favorites"

    const/4 v1, 0x0

    move-object/from16 v8, p2

    .line 521
    invoke-static {v8, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    return-wide v0

    :catch_2
    move-exception v0

    const-string v1, "Problem allocating appWidgetId"

    .line 523
    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const-wide/16 v1, -0x1

    return-wide v1

    :cond_4
    :goto_3
    move-object/from16 v8, p2

    const/4 v9, 0x2

    if-eq v15, v9, :cond_5

    goto/16 :goto_1

    .line 493
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v15, "extra"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "key"

    .line 494
    invoke-static {v1, v9}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v15, "value"

    .line 495
    invoke-static {v1, v15}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v9, :cond_6

    if-eqz v15, :cond_6

    .line 497
    invoke-virtual {v13, v9, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 499
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Widget extras must have a key and value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Widgets can contain only extras"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    const-string v0, "Skipping invalid <appwidget> with no component"

    .line 465
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
