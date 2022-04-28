.class Lcom/miui/maml/elements/ScreenElement$1;
.super Ljava/lang/Object;
.source "ScreenElement.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/ScreenElement;->loadAnimations(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/ScreenElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 177
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Animation"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v1, v0, p1}, Lcom/miui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
