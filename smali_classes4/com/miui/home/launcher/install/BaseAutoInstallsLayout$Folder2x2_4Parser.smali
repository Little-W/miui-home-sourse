.class Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$Folder2x2_4Parser;
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
    name = "Folder2x2_4Parser"
.end annotation


# instance fields
.field private final mBigFolderElements:Landroid/util/ArrayMap;
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

    .line 647
    invoke-static {p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$800(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$Folder2x2_4Parser;-><init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Landroid/util/ArrayMap;)V

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

    .line 650
    iput-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$Folder2x2_4Parser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput-object p2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$Folder2x2_4Parser;->mBigFolderElements:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "folderItems"

    .line 655
    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$400(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    iget-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$Folder2x2_4Parser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$500(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    const-string v1, "folder_2x2_4"

    .line 658
    invoke-static {p1, v1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    :cond_0
    const-string v1, "title"

    .line 661
    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$400(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    iget-object v3, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$Folder2x2_4Parser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {v3}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$500(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 665
    :cond_1
    invoke-static {p1, v1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 667
    iget-object v2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$Folder2x2_4Parser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1101f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 677
    :cond_2
    :goto_0
    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {p1, v1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "label"

    invoke-virtual {p3, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x15

    .line 679
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "itemType"

    invoke-virtual {p3, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x2

    .line 680
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "spanX"

    invoke-virtual {p3, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "spanY"

    invoke-virtual {p3, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    const-string v4, "favorites"

    .line 682
    invoke-static {p2, v4, v3, p3}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_3

    .line 684
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to add folder:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoInstalls"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0

    .line 688
    :cond_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    const-string v5, "profileId"

    .line 689
    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 691
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 692
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_4

    goto :goto_2

    :cond_4
    return-wide v3

    :cond_5
    :goto_2
    if-eq v8, v1, :cond_6

    goto :goto_1

    .line 696
    :cond_6
    invoke-virtual {p3}, Landroid/content/ContentValues;->clear()V

    .line 697
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 698
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "container"

    invoke-virtual {p3, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    add-int/lit8 v8, v0, 0x1

    .line 699
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v9, "cellX"

    invoke-virtual {p3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    iget-object v0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$Folder2x2_4Parser;->mBigFolderElements:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;

    if-eqz v0, :cond_7

    .line 703
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move v0, v8

    goto :goto_1

    .line 705
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid folder item "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
