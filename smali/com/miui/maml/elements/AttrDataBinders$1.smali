.class Lcom/miui/maml/elements/AttrDataBinders$1;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/AttrDataBinders;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/AttrDataBinders;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/AttrDataBinders;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$1;->this$0:Lcom/miui/maml/elements/AttrDataBinders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$1;->this$0:Lcom/miui/maml/elements/AttrDataBinders;

    invoke-static {v0}, Lcom/miui/maml/elements/AttrDataBinders;->access$000(Lcom/miui/maml/elements/AttrDataBinders;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v2, p0, Lcom/miui/maml/elements/AttrDataBinders$1;->this$0:Lcom/miui/maml/elements/AttrDataBinders;

    iget-object v2, v2, Lcom/miui/maml/elements/AttrDataBinders;->mVars:Lcom/miui/maml/data/ContextVariables;

    invoke-direct {v1, p1, v2}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AttrDataBinders"

    .line 45
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
