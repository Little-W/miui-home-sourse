.class public Lcom/miui/launcher/views/AwesomeGadgetView;
.super Lmiui/maml/MiAdvancedView;
.source "AwesomeGadgetView.java"


# instance fields
.field private mClickableArea:Lmiui/maml/elements/ButtonScreenElement;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/launcher/views/AwesomeGadgetView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/miui/launcher/views/AwesomeGadgetView;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string p2, "clickable_area"

    invoke-virtual {p1, p2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object p1

    check-cast p1, Lmiui/maml/elements/ButtonScreenElement;

    iput-object p1, p0, Lcom/miui/launcher/views/AwesomeGadgetView;->mClickableArea:Lmiui/maml/elements/ButtonScreenElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/miui/launcher/views/AwesomeGadgetView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/miui/launcher/views/AwesomeGadgetView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .line 36
    iget-boolean v1, p0, Lcom/miui/launcher/views/AwesomeGadgetView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v1, v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/miui/launcher/views/AwesomeGadgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 38
    iput-boolean v0, p0, Lcom/miui/launcher/views/AwesomeGadgetView;->mNeedDisallowInterceptTouchEvent:Z

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/miui/launcher/views/AwesomeGadgetView;->mClickableArea:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/ButtonScreenElement;->touched(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/miui/launcher/views/AwesomeGadgetView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
