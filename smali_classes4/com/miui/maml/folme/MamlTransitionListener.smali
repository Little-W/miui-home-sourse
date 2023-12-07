.class public Lcom/miui/maml/folme/MamlTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "MamlTransitionListener.java"


# instance fields
.field public mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/miui/maml/elements/FunctionElement;",
            ">;"
        }
    .end annotation
.end field

.field public mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/miui/maml/elements/FunctionElement;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

.field public mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/miui/maml/elements/FunctionElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 22
    iput-object p1, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/FunctionElement;

    .line 42
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

    iget-object p1, p1, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 48
    iget-object p0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/FunctionElement;

    .line 49
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    .line 27
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 28
    instance-of v1, v0, Lcom/miui/maml/folme/IAnimatedProperty;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/miui/maml/folme/IAnimatedProperty;

    iget-object v2, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

    iget-wide v3, p2, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    double-to-float v3, v3

    invoke-interface {v1, v2, v3}, Lcom/miui/maml/folme/IAnimatedProperty;->setVelocityValue(Ljava/lang/Object;F)V

    .line 31
    :cond_1
    iget-boolean p2, p2, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz p2, :cond_0

    .line 32
    iget-object p2, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

    iget-object p2, p2, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/FunctionElement;

    .line 36
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    goto :goto_1

    :cond_3
    return-void
.end method
