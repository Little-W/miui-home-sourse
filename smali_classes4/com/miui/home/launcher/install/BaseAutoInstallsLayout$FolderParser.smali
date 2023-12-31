.class Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;
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
    name = "FolderParser"
.end annotation


# instance fields
.field private final mFolderElements:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)V
    .locals 1

    .line 571
    invoke-static {p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$800(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Landroid/util/ArrayMap;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;",
            ">;)V"
        }
    .end annotation

    .line 574
    iput-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput-object p2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->mFolderElements:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v1, 0x0

    const-string v4, "folderItems"

    move-object/from16 v5, p1

    .line 580
    invoke-static {v5, v4, v1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$400(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 582
    iget-object v5, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {v5}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$500(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    const-string v5, "folder"

    .line 583
    invoke-static {v4, v5}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    const-string v5, "title"

    .line 586
    invoke-static {v4, v5, v1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$400(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    .line 588
    iget-object v7, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {v7}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$500(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 590
    :cond_1
    invoke-static {v4, v5}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 591
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 592
    iget-object v6, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object v6, v6, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1101f4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_2
    :goto_1
    const-string v7, "Russia"

    .line 597
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "com.miui.home:string/russia_preinstall_folder_name"

    goto :goto_2

    :cond_3
    move-object v7, v6

    .line 601
    :goto_2
    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {v4, v5}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "label"

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 603
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "itemType"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x1

    .line 604
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "spanX"

    invoke-virtual {v3, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "spanY"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x0

    const-string v8, "favorites"

    .line 606
    invoke-static {v2, v8, v7, v3}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v7, 0x0

    cmp-long v7, v10, v7

    if-gez v7, :cond_4

    const-string v0, "AutoInstalls"

    const-string v1, "Unable to add folder"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0

    .line 612
    :cond_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    const-string v8, "profileId"

    .line 613
    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_3
    move v9, v1

    .line 615
    :goto_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v14, 0x3

    if-ne v1, v14, :cond_6

    .line 616
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v7, :cond_5

    goto :goto_5

    .line 634
    :cond_5
    iget-object v0, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    move-object v1, v4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v6

    move-wide v5, v10

    move v7, v9

    move-wide v8, v12

    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->handMarketAutoInstall(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;JIJ)V

    return-wide v10

    :cond_6
    :goto_5
    if-eq v1, v5, :cond_7

    goto :goto_4

    .line 620
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    .line 621
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 622
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v14, "container"

    invoke-virtual {v3, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    add-int/lit8 v1, v9, 0x1

    .line 623
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v14, "cellX"

    invoke-virtual {v3, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    iget-object v9, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->mFolderElements:Landroid/util/ArrayMap;

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;

    if-eqz v9, :cond_8

    .line 627
    invoke-interface {v9, v4, v2, v3}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    goto :goto_3

    .line 629
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid folder item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
