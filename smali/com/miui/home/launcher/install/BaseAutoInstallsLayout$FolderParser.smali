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

    .line 564
    invoke-static {p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$1000(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/util/ArrayMap;

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

    .line 567
    iput-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->mFolderElements:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v1, "folderItems"

    const/4 v2, 0x0

    move-object v5, p1

    .line 573
    invoke-static {p1, v1, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$500(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    iget-object v5, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {v5}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$600(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const-string v5, "folder"

    .line 576
    invoke-static {v1, v5}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$1100(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    move-object v5, v1

    :cond_0
    const-string v1, "title"

    .line 579
    invoke-static {v5, v1, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$500(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    iget-object v6, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {v6}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$600(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_1
    const-string v1, "title"

    .line 583
    invoke-static {v5, v1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 585
    iget-object v1, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object v1, v1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f1001e1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_2
    move-object v6, v1

    :goto_0
    const-string v1, "Russia"

    .line 590
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.miui.home:string/russia_preinstall_folder_name"

    goto :goto_1

    :cond_3
    move-object v1, v6

    :goto_1
    const-string v7, "title"

    .line 594
    invoke-virtual {v4, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "label"

    const-string v7, "title"

    .line 595
    invoke-static {v5, v7}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemType"

    const/4 v7, 0x2

    .line 596
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanX"

    const/4 v8, 0x1

    .line 597
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanY"

    .line 598
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "favorites"

    const/4 v8, 0x0

    .line 599
    invoke-static {v3, v1, v8, v4}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    const-wide/16 v8, 0x0

    cmp-long v1, v11, v8

    if-gez v1, :cond_4

    const-string v1, "AutoInstalls"

    const-string v2, "Unable to add folder"

    .line 601
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, -0x1

    return-wide v1

    .line 605
    :cond_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    const-string v8, "profileId"

    .line 606
    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move v8, v2

    .line 608
    :goto_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v13, 0x3

    if-ne v2, v13, :cond_6

    .line 609
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v1, :cond_5

    goto :goto_3

    .line 627
    :cond_5
    iget-object v1, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    move-object v2, v5

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v6

    move-wide v6, v11

    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->handMarketAutoInstall(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;JIJ)V

    return-wide v11

    :cond_6
    :goto_3
    if-eq v2, v7, :cond_7

    goto :goto_2

    .line 613
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    const-string v2, "profileId"

    .line 614
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "container"

    .line 615
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "cellX"

    add-int/lit8 v13, v8, 0x1

    .line 616
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    iget-object v2, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$FolderParser;->mFolderElements:Landroid/util/ArrayMap;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;

    if-eqz v2, :cond_8

    .line 620
    invoke-interface {v2, v5, v3, v4}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move v8, v13

    goto :goto_2

    .line 622
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid folder item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
