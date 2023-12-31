.class Lcom/miui/maml/StylesManager$1;
.super Ljava/lang/Object;
.source "StylesManager.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/StylesManager;-><init>(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/StylesManager;


# direct methods
.method constructor <init>(Lcom/miui/maml/StylesManager;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/miui/maml/StylesManager$1;->this$0:Lcom/miui/maml/StylesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 21
    new-instance v0, Lcom/miui/maml/StylesManager$Style;

    iget-object v1, p0, Lcom/miui/maml/StylesManager$1;->this$0:Lcom/miui/maml/StylesManager;

    invoke-direct {v0, v1, p1}, Lcom/miui/maml/StylesManager$Style;-><init>(Lcom/miui/maml/StylesManager;Lorg/w3c/dom/Element;)V

    .line 22
    iget-object p0, p0, Lcom/miui/maml/StylesManager$1;->this$0:Lcom/miui/maml/StylesManager;

    invoke-static {p0}, Lcom/miui/maml/StylesManager;->access$000(Lcom/miui/maml/StylesManager;)Ljava/util/HashMap;

    move-result-object p0

    iget-object p1, v0, Lcom/miui/maml/StylesManager$Style;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
