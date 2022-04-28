.class Lcom/mi/preinstall/AutoInstallsParser$AutoInstallParser;
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
    name = "AutoInstallParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/preinstall/AutoInstallsParser;


# direct methods
.method private constructor <init>(Lcom/mi/preinstall/AutoInstallsParser;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/mi/preinstall/AutoInstallsParser$AutoInstallParser;->this$0:Lcom/mi/preinstall/AutoInstallsParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/preinstall/AutoInstallsParser;Lcom/mi/preinstall/AutoInstallsParser$1;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/mi/preinstall/AutoInstallsParser$AutoInstallParser;-><init>(Lcom/mi/preinstall/AutoInstallsParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;)V
    .locals 2
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

    .line 154
    invoke-static {p1, v0}, Lcom/mi/preinstall/AutoInstallsParser;->access$200(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuiFolder"

    .line 155
    invoke-static {p1, v1}, Lcom/mi/preinstall/AutoInstallsParser;->access$200(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
