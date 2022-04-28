.class public Lcom/miui/maml/elements/GLLayerScreenElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "GLLayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;,
        Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML GLLayerScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "GLLayer"


# instance fields
.field private mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

.field private mHVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOnSurfaceChangeCommands:Lcom/miui/maml/CommandTrigger;

.field private mOnSurfaceCreateCommands:Lcom/miui/maml/CommandTrigger;

.field private mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

.field private mView:Landroid/opengl/GLSurfaceView;

.field private mViewVar:Lcom/miui/maml/data/IndexedVariable;

.field private mWVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lcom/miui/maml/CommandTrigger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lcom/miui/maml/CommandTrigger;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/maml/elements/GLLayerScreenElement;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 43
    new-instance p1, Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 44
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p1, v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 45
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x100

    .line 46
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 47
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V

    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 48
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mController:Lcom/miui/maml/RendererController;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 52
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    const-string v2, "create"

    invoke-virtual {p1, v2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lcom/miui/maml/CommandTrigger;

    .line 54
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    const-string v2, "change"

    invoke-virtual {p1, v2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lcom/miui/maml/CommandTrigger;

    .line 55
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    const-string v2, "draw"

    invoke-virtual {p1, v2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

    if-nez p1, :cond_2

    const-string p1, "GLLayerScreenElement"

    const-string v2, "no draw commands."

    .line 58
    invoke-static {p1, v2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/GLLayerScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    .line 61
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    const-string v3, "__objGLCanvas"

    invoke-direct {v2, v3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v2, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 62
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    const-string v3, "__objGLView"

    invoke-direct {v2, v3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v2, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mViewVar:Lcom/miui/maml/data/IndexedVariable;

    .line 63
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "__w"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    .line 64
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const-string v2, "__h"

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/GLLayerScreenElement;->doTickSelf(J)V

    .line 132
    invoke-virtual {p0}, Lcom/miui/maml/elements/GLLayerScreenElement;->updateView()V

    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mViewVar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 138
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->init()V

    return-void
.end method

.method protected onControllerCreated(Lcom/miui/maml/RendererController;)V
    .locals 2

    .line 126
    new-instance v0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V

    invoke-virtual {p1, v0}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

    return-void
.end method
