.class Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;
.super Lcom/miui/maml/RendererController$EmptyListener;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/WindowScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WindowScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-direct {p0}, Lcom/miui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;Lcom/miui/maml/elements/WindowScreenElement$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/WindowScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-static {p0}, Lcom/miui/maml/elements/WindowScreenElement;->access$200(Lcom/miui/maml/elements/WindowScreenElement;)Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->postInvalidate()V

    return-void
.end method

.method public forceUpdate()V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/WindowScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/WindowScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public tick(J)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/WindowScreenElement;->doTick(J)V

    return-void
.end method

.method public triggerUpdate()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    return-void
.end method
