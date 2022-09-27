.class public Lcom/miui/maml/elements/CanvasDrawerElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "CanvasDrawerElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "CanvasDrawer"


# instance fields
.field private mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

.field private mDrawCommands:Lcom/miui/maml/CommandTrigger;

.field private mHVar:Lcom/miui/maml/data/IndexedVariable;

.field private mWVar:Lcom/miui/maml/data/IndexedVariable;

.field private mXVar:Lcom/miui/maml/data/IndexedVariable;

.field private mYVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 32
    iget-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    const-string p2, "draw"

    invoke-virtual {p1, p2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lcom/miui/maml/CommandTrigger;

    if-nez p1, :cond_1

    const-string p1, "CanvasDrawer"

    const-string p2, "no draw commands."

    .line 36
    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/CanvasDrawerElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    .line 39
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "__x"

    const/4 v1, 0x1

    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 40
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "__y"

    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 41
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "__w"

    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    .line 42
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "__h"

    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    .line 43
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    const-string p2, "__objCanvas"

    invoke-virtual {p0}, Lcom/miui/maml/elements/CanvasDrawerElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/miui/maml/elements/CanvasDrawerElement;->getWidthRaw()F

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/miui/maml/elements/CanvasDrawerElement;->getHeightRaw()F

    move-result v1

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/CanvasDrawerElement;->getLeft(FF)F

    move-result v3

    .line 52
    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/CanvasDrawerElement;->getTop(FF)F

    move-result v2

    .line 53
    iget-object v4, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mXVar:Lcom/miui/maml/data/IndexedVariable;

    float-to-double v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 54
    iget-object v3, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mYVar:Lcom/miui/maml/data/IndexedVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 55
    iget-object v2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 56
    iget-object v0, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 57
    iget-object v0, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lcom/miui/maml/CommandTrigger;

    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 59
    iget-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
