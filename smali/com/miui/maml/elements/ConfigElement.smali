.class public abstract Lcom/miui/maml/elements/ConfigElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "ConfigElement.java"


# static fields
.field protected static final ATTR_DELAY:Ljava/lang/String; = "delay"

.field protected static final ATTR_EASE:Ljava/lang/String; = "ease"

.field protected static final ATTR_FROM_SPEED:Ljava/lang/String; = "fromSpeed"

.field protected static final ATTR_ON_BEGIN:Ljava/lang/String; = "onBegin"

.field protected static final ATTR_ON_COMPLETE:Ljava/lang/String; = "onComplete"

.field protected static final ATTR_ON_UPDATE:Ljava/lang/String; = "onUpdate"

.field protected static final ATTR_PROPERTY:Ljava/lang/String; = "property"


# instance fields
.field protected mTempAnimConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/animation/base/AnimConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected mTempValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/folme/ConfigValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    return-void
.end method

.method private setupCallbacks(Ljava/util/Collection;Landroidx/collection/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/elements/FunctionElement;",
            ">;",
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 94
    invoke-virtual {p2}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/miui/maml/elements/ConfigElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    .line 96
    instance-of v1, v0, Lcom/miui/maml/elements/FunctionElement;

    if-eqz v1, :cond_0

    .line 97
    check-cast v0, Lcom/miui/maml/elements/FunctionElement;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected abstract evaluateConfigValue()V
.end method

.method public getAnimConfig(Lcom/miui/maml/folme/TransitionListenerWrapper;)[Lmiuix/animation/base/AnimConfig;
    .locals 7

    .line 48
    invoke-virtual {p1}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    new-array p1, v1, [Lmiuix/animation/base/AnimConfig;

    return-object p1

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 53
    invoke-virtual {p0}, Lcom/miui/maml/elements/ConfigElement;->evaluateConfigValue()V

    .line 54
    iget-object v2, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/folme/ConfigValue;

    const/4 v4, 0x0

    .line 56
    iget-object v5, v3, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/ArraySet;

    if-eqz v5, :cond_3

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v5, v3, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/ArraySet;

    invoke-virtual {v5}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 59
    invoke-static {v6}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 61
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    :cond_2
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lmiuix/animation/property/FloatProperty;

    invoke-direct {v5, v4}, Lmiuix/animation/base/AnimConfig;-><init>([Lmiuix/animation/property/FloatProperty;)V

    move-object v4, v5

    :cond_3
    if-nez v4, :cond_4

    .line 67
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 69
    :cond_4
    iget-object v5, v0, Lcom/miui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v6, v3, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/ArraySet;

    invoke-direct {p0, v5, v6}, Lcom/miui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Landroidx/collection/ArraySet;)V

    .line 70
    iget-object v5, v0, Lcom/miui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v6, v3, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/ArraySet;

    invoke-direct {p0, v5, v6}, Lcom/miui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Landroidx/collection/ArraySet;)V

    .line 71
    iget-object v5, v0, Lcom/miui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v6, v3, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/ArraySet;

    invoke-direct {p0, v5, v6}, Lcom/miui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Landroidx/collection/ArraySet;)V

    .line 73
    iget-boolean v5, v3, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    if-eqz v5, :cond_5

    .line 74
    iget v5, v3, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    .line 76
    :cond_5
    iget-object v5, v3, Lcom/miui/maml/folme/ConfigValue;->mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 77
    iget-wide v5, v3, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    invoke-virtual {v4, v5, v6}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    const/4 v3, 0x1

    .line 79
    new-array v3, v3, [Lmiuix/animation/listener/TransitionListener;

    aput-object p1, v3, v1

    invoke-virtual {v4, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 80
    iget-object v3, p0, Lcom/miui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 82
    :cond_6
    iget-object p1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmiuix/animation/base/AnimConfig;

    return-object p1
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
