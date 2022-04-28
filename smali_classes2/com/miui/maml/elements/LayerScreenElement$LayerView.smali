.class Lcom/miui/maml/elements/LayerScreenElement$LayerView;
.super Landroid/view/View;
.source "LayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/LayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayerView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/LayerScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/LayerScreenElement;Landroid/content/Context;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/miui/maml/elements/LayerScreenElement$LayerView;->this$0:Lcom/miui/maml/elements/LayerScreenElement;

    .line 25
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/miui/maml/elements/LayerScreenElement$LayerView;->this$0:Lcom/miui/maml/elements/LayerScreenElement;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/LayerScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 36
    iget-object p1, p0, Lcom/miui/maml/elements/LayerScreenElement$LayerView;->this$0:Lcom/miui/maml/elements/LayerScreenElement;

    iget-object p1, p1, Lcom/miui/maml/elements/LayerScreenElement;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {p1}, Lcom/miui/maml/RendererController;->doneRender()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/LayerScreenElement$LayerView;->this$0:Lcom/miui/maml/elements/LayerScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/LayerScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
