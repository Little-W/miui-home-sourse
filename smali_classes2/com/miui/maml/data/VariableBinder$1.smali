.class Lcom/miui/maml/data/VariableBinder$1;
.super Ljava/lang/Object;
.source "VariableBinder.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/VariableBinder;


# direct methods
.method constructor <init>(Lcom/miui/maml/data/VariableBinder;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder$1;->this$0:Lcom/miui/maml/data/VariableBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$1;->this$0:Lcom/miui/maml/data/VariableBinder;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 280
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder$1;->this$0:Lcom/miui/maml/data/VariableBinder;

    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
