.class Lcom/miui/maml/ScreenElementRoot$InnerGroup;
.super Lcom/miui/maml/elements/ElementGroup;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerGroup"
.end annotation


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 760
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public final getRendererController()Lcom/miui/maml/RendererController;
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$InnerGroup;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    return-object v0
.end method
