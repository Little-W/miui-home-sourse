.class Lcom/miui/maml/util/ConfigFile$4;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/util/ConfigFile;


# direct methods
.method constructor <init>(Lcom/miui/maml/util/ConfigFile;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$4;->this$0:Lcom/miui/maml/util/ConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile$4;->this$0:Lcom/miui/maml/util/ConfigFile;

    new-instance v1, Lcom/miui/maml/util/ConfigFile$Gadget;

    const-string v2, "path"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x"

    const/4 v4, 0x0

    .line 406
    invoke-static {p1, v3, v4}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "y"

    .line 407
    invoke-static {p1, v5, v4}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lcom/miui/maml/util/ConfigFile$Gadget;-><init>(Ljava/lang/String;II)V

    .line 405
    invoke-virtual {v0, v1}, Lcom/miui/maml/util/ConfigFile;->putGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V

    :cond_0
    return-void
.end method
