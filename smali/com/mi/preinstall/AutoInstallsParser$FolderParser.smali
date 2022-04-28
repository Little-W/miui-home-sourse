.class Lcom/mi/preinstall/AutoInstallsParser$FolderParser;
.super Ljava/lang/Object;
.source "AutoInstallsParser.java"

# interfaces
.implements Lcom/mi/preinstall/AutoInstallsParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/preinstall/AutoInstallsParser;
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
            "Lcom/mi/preinstall/AutoInstallsParser$TagParser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mi/preinstall/AutoInstallsParser;


# direct methods
.method constructor <init>(Lcom/mi/preinstall/AutoInstallsParser;)V
    .locals 1

    .line 177
    invoke-static {p1}, Lcom/mi/preinstall/AutoInstallsParser;->access$400(Lcom/mi/preinstall/AutoInstallsParser;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mi/preinstall/AutoInstallsParser$FolderParser;-><init>(Lcom/mi/preinstall/AutoInstallsParser;Landroid/util/ArrayMap;)V

    return-void
.end method

.method constructor <init>(Lcom/mi/preinstall/AutoInstallsParser;Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mi/preinstall/AutoInstallsParser$TagParser;",
            ">;)V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/mi/preinstall/AutoInstallsParser$FolderParser;->this$0:Lcom/mi/preinstall/AutoInstallsParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/mi/preinstall/AutoInstallsParser$FolderParser;->mFolderElements:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 188
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 189
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 190
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/mi/preinstall/AutoInstallsParser$FolderParser;->mFolderElements:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/preinstall/AutoInstallsParser$TagParser;

    if-nez v1, :cond_3

    goto :goto_0

    .line 198
    :cond_3
    invoke-interface {v1, p1, p2}, Lcom/mi/preinstall/AutoInstallsParser$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;)V

    goto :goto_0
.end method
