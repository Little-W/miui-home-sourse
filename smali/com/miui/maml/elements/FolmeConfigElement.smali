.class public Lcom/miui/maml/elements/FolmeConfigElement;
.super Lcom/miui/maml/elements/ConfigElement;
.source "FolmeConfigElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeConfig"


# instance fields
.field private mConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 4

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    .line 33
    iget-object p2, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/FolmeConfigElement;->getConfigData(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 38
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 39
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v2, "Special"

    .line 40
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/maml/elements/FolmeConfigElement;->getConfigData(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getConfigData(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;
    .locals 3

    .line 109
    new-instance v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/FolmeConfigElement;Lcom/miui/maml/elements/FolmeConfigElement$1;)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/maml/elements/FolmeConfigElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "ease"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mEaseExp:[Lcom/miui/maml/data/Expression;

    .line 111
    invoke-virtual {p0}, Lcom/miui/maml/elements/FolmeConfigElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "fromSpeed"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mFromSpeedExp:Lcom/miui/maml/data/Expression;

    .line 112
    invoke-virtual {p0}, Lcom/miui/maml/elements/FolmeConfigElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "delay"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mDelayExp:Lcom/miui/maml/data/Expression;

    .line 113
    invoke-virtual {p0}, Lcom/miui/maml/elements/FolmeConfigElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "onBegin"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnBeginCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 114
    invoke-virtual {p0}, Lcom/miui/maml/elements/FolmeConfigElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "onComplete"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnCompleteCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 115
    invoke-virtual {p0}, Lcom/miui/maml/elements/FolmeConfigElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "onUpdate"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnUpdateCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 116
    invoke-virtual {p0}, Lcom/miui/maml/elements/FolmeConfigElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "property"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mPropertyExp:[Lcom/miui/maml/data/Expression;

    return-object v0
.end method

.method private getEaseFromExpressions([Lcom/miui/maml/data/Expression;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .locals 7

    if-eqz p1, :cond_2

    .line 88
    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 89
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    .line 90
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [F

    .line 91
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 93
    aget-object v4, p1, v2

    if-eqz v4, :cond_0

    add-int/lit8 v4, v2, -0x1

    .line 94
    aget-object v5, p1, v2

    invoke-virtual {v5}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x0

    .line 96
    aput v5, v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/miui/maml/data/Expression;",
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p2}, Landroidx/collection/ArraySet;->clear()V

    if-eqz p1, :cond_1

    .line 77
    array-length v0, p1

    if-lez v0, :cond_1

    .line 78
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 80
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 81
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected evaluateConfigValue()V
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    iget-object v0, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 52
    new-instance v2, Lcom/miui/maml/folme/ConfigValue;

    invoke-direct {v2}, Lcom/miui/maml/folme/ConfigValue;-><init>()V

    .line 53
    iget-object v3, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    .line 55
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mDelayExp:Lcom/miui/maml/data/Expression;

    if-eqz v4, :cond_0

    .line 56
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mDelayExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v4, v4

    iput-wide v4, v2, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    .line 59
    :cond_0
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mFromSpeedExp:Lcom/miui/maml/data/Expression;

    if-eqz v4, :cond_1

    .line 60
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mFromSpeedExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v4, v4

    long-to-float v4, v4

    iput v4, v2, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    const/4 v4, 0x1

    .line 61
    iput-boolean v4, v2, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    .line 64
    :cond_1
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mEaseExp:[Lcom/miui/maml/data/Expression;

    invoke-direct {p0, v4}, Lcom/miui/maml/elements/FolmeConfigElement;->getEaseFromExpressions([Lcom/miui/maml/data/Expression;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 66
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mPropertyExp:[Lcom/miui/maml/data/Expression;

    iget-object v5, v2, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/ArraySet;

    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/ArraySet;)V

    .line 67
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnBeginCallbackExp:[Lcom/miui/maml/data/Expression;

    iget-object v5, v2, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/ArraySet;

    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/ArraySet;)V

    .line 68
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnCompleteCallbackExp:[Lcom/miui/maml/data/Expression;

    iget-object v5, v2, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/ArraySet;

    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/ArraySet;)V

    .line 69
    iget-object v3, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnUpdateCallbackExp:[Lcom/miui/maml/data/Expression;

    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/ArraySet;

    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/ArraySet;)V

    .line 71
    iget-object v3, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
