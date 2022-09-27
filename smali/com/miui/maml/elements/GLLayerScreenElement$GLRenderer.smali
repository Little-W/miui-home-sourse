.class Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;
.super Ljava/lang/Object;
.source "GLLayerScreenElement.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/GLLayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/GLLayerScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 93
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 94
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    iget-object p1, p1, Lcom/miui/maml/elements/GLLayerScreenElement;->mController:Lcom/miui/maml/RendererController;

    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    iget-object p1, p1, Lcom/miui/maml/elements/GLLayerScreenElement;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {p1}, Lcom/miui/maml/RendererController;->doneRender()V

    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$400(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    int-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 83
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$500(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    int-to-double p2, p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 84
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 85
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 71
    iget-object p2, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p2}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p2}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 74
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
