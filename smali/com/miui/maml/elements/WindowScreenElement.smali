.class public Lcom/miui/maml/elements/WindowScreenElement;
.super Lcom/miui/maml/elements/ElementGroupRC;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;,
        Lcom/miui/maml/elements/WindowScreenElement$WindowView;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Window"


# instance fields
.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

.field private mViewAdded:Z

.field private mWindowContext:Landroid/content/Context;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroupRC;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 28
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowContext:Landroid/content/Context;

    .line 30
    new-instance p1, Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/miui/maml/elements/WindowScreenElement$WindowView;-><init>(Lcom/miui/maml/elements/WindowScreenElement;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    .line 31
    iget-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowManager:Landroid/view/WindowManager;

    .line 32
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p1, v0, p2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 33
    iget-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, 0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p2, 0x100

    .line 34
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/WindowScreenElement;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/maml/elements/WindowScreenElement;->addView()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/WindowScreenElement;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/maml/elements/WindowScreenElement;->removeView()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/WindowScreenElement;)Lcom/miui/maml/elements/WindowScreenElement$WindowView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    return-object p0
.end method

.method private final addView()V
    .locals 3

    .line 64
    iget-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mViewAdded:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    iget-object v2, p0, Lcom/miui/maml/elements/WindowScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mViewAdded:Z

    :cond_0
    return-void
.end method

.method private final removeView()V
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/maml/elements/WindowScreenElement;->mView:Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/miui/maml/elements/WindowScreenElement;->mViewAdded:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroupRC;->init()V

    .line 40
    invoke-virtual {p0}, Lcom/miui/maml/elements/WindowScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/miui/maml/elements/WindowScreenElement;->addView()V

    :cond_0
    return-void
.end method

.method protected onControllerCreated(Lcom/miui/maml/RendererController;)V
    .locals 2

    .line 137
    new-instance v0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/WindowScreenElement;Lcom/miui/maml/elements/WindowScreenElement$1;)V

    invoke-virtual {p1, v0}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/miui/maml/elements/WindowScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/elements/WindowScreenElement$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/WindowScreenElement$1;-><init>(Lcom/miui/maml/elements/WindowScreenElement;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
