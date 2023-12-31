.class Lcom/miui/maml/elements/VariableArrayElement$2;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/VariableArrayElement;

.field final synthetic val$vars:Lcom/miui/maml/data/Variables;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement$2;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$2;->val$vars:Lcom/miui/maml/data/Variables;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$2;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    invoke-static {v0}, Lcom/miui/maml/elements/VariableArrayElement;->access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/elements/VariableArrayElement$Item;

    iget-object v2, p0, Lcom/miui/maml/elements/VariableArrayElement$2;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement$2;->val$vars:Lcom/miui/maml/data/Variables;

    invoke-direct {v1, v2, p0, p1}, Lcom/miui/maml/elements/VariableArrayElement$Item;-><init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
