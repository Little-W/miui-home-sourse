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

    .line 224
    iput-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    invoke-direct {p0}, Lcom/miui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Lcom/miui/maml/elements/ViewHolderScreenElement$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public forceUpdate()V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    iget-object p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    return-void
.end method

.method public tick(J)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTickChildren(J)V

    return-void
.end method

.method public triggerUpdate()V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    iget-object p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    return-void
.end method
