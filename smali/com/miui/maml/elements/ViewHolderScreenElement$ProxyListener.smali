.class Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;
.super Lcom/miui/maml/RendererController$EmptyListener;
.source "ViewHolderScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ViewHolderScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/ViewHolderScreenElement;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    invoke-direct {p0}, Lcom/miui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Lcom/miui/maml/elements/ViewHolderScreenElement$1;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public forceUpdate()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    return-void
.end method

.method public tick(J)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTickChildren(J)V

    return-void
.end method

.method public triggerUpdate()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    return-void
.end method
