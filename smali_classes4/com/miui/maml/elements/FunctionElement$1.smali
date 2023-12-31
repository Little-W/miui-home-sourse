.class Lcom/miui/maml/elements/FunctionElement$1;
.super Ljava/lang/Object;
.source "FunctionElement.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/FunctionElement;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/FunctionElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/FunctionElement;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/maml/elements/FunctionElement$1;->this$0:Lcom/miui/maml/elements/FunctionElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement$1;->this$0:Lcom/miui/maml/elements/FunctionElement;

    invoke-static {p1, v0}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p0, p0, Lcom/miui/maml/elements/FunctionElement$1;->this$0:Lcom/miui/maml/elements/FunctionElement;

    invoke-static {p0}, Lcom/miui/maml/elements/FunctionElement;->access$000(Lcom/miui/maml/elements/FunctionElement;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
