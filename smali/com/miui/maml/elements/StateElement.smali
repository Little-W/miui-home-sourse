.class public abstract Lcom/miui/maml/elements/StateElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "StateElement.java"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public abstract getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;
.end method

.method public abstract getProperties()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tick(J)V
    .locals 0

    return-void
.end method
