.class Lcom/miui/maml/ActionCommand$MultiCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/ActionCommand$MultiCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/ActionCommand$MultiCommand;

.field final synthetic val$screenElement:Lcom/miui/maml/elements/ScreenElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/ActionCommand$MultiCommand;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 0

    .line 3234
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$MultiCommand$1;->this$0:Lcom/miui/maml/ActionCommand$MultiCommand;

    iput-object p2, p0, Lcom/miui/maml/ActionCommand$MultiCommand$1;->val$screenElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 3236
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand$1;->val$screenElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-static {p1, v0}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3238
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand$1;->this$0:Lcom/miui/maml/ActionCommand$MultiCommand;

    iget-object v0, v0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
