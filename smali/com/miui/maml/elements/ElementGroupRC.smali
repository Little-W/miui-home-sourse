.class public abstract Lcom/miui/maml/elements/ElementGroupRC;
.super Lcom/miui/maml/elements/ElementGroup;
.source "ElementGroupRC.java"


# instance fields
.field protected mController:Lcom/miui/maml/RendererController;

.field private mFrameRate:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    const-string p2, "frameRate"

    const/4 v0, 0x0

    .line 17
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mFrameRate:F

    .line 19
    iget p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mFrameRate:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 20
    new-instance p1, Lcom/miui/maml/RendererController;

    invoke-direct {p1}, Lcom/miui/maml/RendererController;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 21
    iget-object p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroupRC;->onControllerCreated(Lcom/miui/maml/RendererController;)V

    .line 22
    iget-object p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {p1}, Lcom/miui/maml/RendererController;->init()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRendererController()Lcom/miui/maml/RendererController;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public init()V
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 29
    iget v0, p0, Lcom/miui/maml/elements/ElementGroupRC;->mFrameRate:F

    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ElementGroupRC;->requestFramerate(F)V

    return-void
.end method

.method protected abstract onControllerCreated(Lcom/miui/maml/RendererController;)V
.end method
