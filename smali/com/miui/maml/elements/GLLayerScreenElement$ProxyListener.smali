.class Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;
.super Lcom/miui/maml/RendererController$EmptyListener;
.source "GLLayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/GLLayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/GLLayerScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Lcom/miui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$700(Lcom/miui/maml/elements/GLLayerScreenElement;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public forceUpdate()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/GLLayerScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    return-void
.end method

.method public tick(J)V
    .locals 0

    return-void
.end method

.method public triggerUpdate()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/GLLayerScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    return-void
.end method
