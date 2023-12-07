.class Lcom/mi/preinstall/AutoInstallsParser$PendingWidgetParser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/preinstall/AutoInstallsParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/preinstall/AutoInstallsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/preinstall/AutoInstallsParser;


# direct methods
.method private constructor <init>(Lcom/mi/preinstall/AutoInstallsParser;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/preinstall/AutoInstallsParser$PendingWidgetParser;->this$0:Lcom/mi/preinstall/AutoInstallsParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/preinstall/AutoInstallsParser;Lcom/mi/preinstall/AutoInstallsParser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/preinstall/AutoInstallsParser$PendingWidgetParser;-><init>(Lcom/mi/preinstall/AutoInstallsParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;)V
    .locals 1
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
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/mi/preinstall/AutoInstallsParser;->access$200(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mi/preinstall/AutoInstallsParser$PendingWidgetParser;->this$0:Lcom/mi/preinstall/AutoInstallsParser;

    invoke-static {p0}, Lcom/mi/preinstall/AutoInstallsParser;->access$300(Lcom/mi/preinstall/AutoInstallsParser;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/mi/preinstall/AutoInstallParserHelp;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
