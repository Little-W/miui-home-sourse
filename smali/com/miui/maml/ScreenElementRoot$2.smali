.class Lcom/miui/maml/ScreenElementRoot$2;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"

# interfaces
.implements Lcom/miui/maml/elements/ScreenElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/ScreenElementRoot;->traverseElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$2;->this$0:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 2

    .line 828
    instance-of v0, p1, Lcom/miui/maml/elements/FramerateController;

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 832
    move-object v1, p1

    check-cast v1, Lcom/miui/maml/elements/FramerateController;

    invoke-virtual {v0, v1}, Lcom/miui/maml/RendererController;->addFramerateController(Lcom/miui/maml/elements/FramerateController;)V

    .line 837
    :cond_0
    instance-of v0, p1, Lcom/miui/maml/elements/ElementGroupRC;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_2

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$2;->this$0:Lcom/miui/maml/ScreenElementRoot;

    invoke-static {v0}, Lcom/miui/maml/ScreenElementRoot;->access$000(Lcom/miui/maml/ScreenElementRoot;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
