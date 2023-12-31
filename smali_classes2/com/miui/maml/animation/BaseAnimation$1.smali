.class Lcom/miui/maml/animation/BaseAnimation$1;
.super Ljava/lang/Object;
.source "BaseAnimation.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/animation/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/animation/BaseAnimation;


# direct methods
.method constructor <init>(Lcom/miui/maml/animation/BaseAnimation;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/miui/maml/animation/BaseAnimation$1;->this$0:Lcom/miui/maml/animation/BaseAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$1;->this$0:Lcom/miui/maml/animation/BaseAnimation;

    iget-object v0, v0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation$1;->this$0:Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {p0, p0, p1}, Lcom/miui/maml/animation/BaseAnimation;->onCreateItem(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
