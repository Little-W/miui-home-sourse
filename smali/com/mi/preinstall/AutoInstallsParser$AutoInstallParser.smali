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

    .line 119
    iput-object p1, p0, Lcom/mi/preinstall/AutoInstallsParser$AutoInstallParser;->this$0:Lcom/mi/preinstall/AutoInstallsParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/preinstall/AutoInstallsParser;Lcom/mi/preinstall/AutoInstallsParser$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/mi/preinstall/AutoInstallsParser$AutoInstallParser;-><init>(Lcom/mi/preinstall/AutoInstallsParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    .line 122
    invoke-static {p1, v0}, Lcom/mi/preinstall/AutoInstallsParser;->access$200(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
