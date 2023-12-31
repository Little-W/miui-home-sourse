.class Lcom/miui/maml/util/ConfigFile$1;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/util/ConfigFile;->loadDefaultSettings(Lorg/w3c/dom/Element;)V
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

    .line 258
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 261
    new-instance v0, Lcom/miui/maml/util/ConfigFile$1$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$1$1;-><init>(Lcom/miui/maml/util/ConfigFile$1;)V

    const/4 p0, 0x0

    invoke-static {p1, p0, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method
