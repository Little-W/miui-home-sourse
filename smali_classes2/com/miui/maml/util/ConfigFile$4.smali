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

    .line 397
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$4;->this$0:Lcom/miui/maml/util/ConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 401
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$4;->this$0:Lcom/miui/maml/util/ConfigFile;

    new-instance v0, Lcom/miui/maml/util/ConfigFile$Gadget;

    const-string v1, "path"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "x"

    .line 402
    invoke-static {p1, v3, v2}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "y"

    .line 403
    invoke-static {p1, v4, v2}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    invoke-direct {v0, v1, v3, p1}, Lcom/miui/maml/util/ConfigFile$Gadget;-><init>(Ljava/lang/String;II)V

    .line 401
    invoke-virtual {p0, v0}, Lcom/miui/maml/util/ConfigFile;->putGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V

    :cond_0
    return-void
.end method
