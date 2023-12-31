.class public Lcom/miui/maml/elements/AnimConfigElement;
.super Lcom/miui/maml/elements/ConfigElement;
.source "AnimConfigElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/AnimConfigElement$ConfigData;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimConfig"


# instance fields
.field private mConfigs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/AnimConfigElement$ConfigData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 5

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 25
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    iget-boolean p2, p0, Lcom/miui/maml/elements/AnimConfigElement;->mHasName:Z

    if-eqz p2, :cond_1

    .line 45
    iget-object p2, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/maml/elements/AnimConfigElement;->mName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 47
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 49
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 50
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 51
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Special"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "name"

    .line 52
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/maml/elements/AnimConfigElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/elements/AnimConfigElement$ConfigData;
    .locals 7

    .line 163
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimConfigElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/AnimConfigElement;Lcom/miui/maml/elements/AnimConfigElement$1;)V

    .line 165
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 166
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 168
    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 169
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 172
    invoke-direct {p0, v1, p2, v5, v6}, Lcom/miui/maml/elements/AnimConfigElement;->updateConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/maml/data/IndexedVariable;",
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 154
    instance-of p1, p0, [Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 155
    check-cast p0, [Ljava/lang/String;

    .line 156
    array-length p1, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    .line 157
    invoke-virtual {p2, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getEase(Lcom/miui/maml/data/IndexedVariable;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .locals 7

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_2

    .line 131
    instance-of v0, p1, [D

    if-eqz v0, :cond_2

    .line 132
    check-cast p1, [D

    .line 133
    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 134
    aget-wide v0, p1, v0

    double-to-int v0, v0

    .line 135
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [F

    .line 136
    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_1

    add-int/lit8 v4, v2, -0x1

    .line 139
    aget-wide v5, p1, v2

    double-to-float v5, v5

    aput v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object p0
.end method

.method private removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V
    .locals 2

    .line 298
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "onUpdate"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string p0, "delay"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_2
    const-string p0, "fromSpeed"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string p0, "ease"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string p0, "property"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_5
    const-string p0, "onBegin"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_6
    const-string p0, "onComplete"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_2

    .line 352
    :pswitch_0
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_1

    .line 353
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 354
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 356
    :cond_1
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_6

    .line 357
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 358
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    goto/16 :goto_2

    .line 342
    :pswitch_1
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_2

    .line 343
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 344
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 346
    :cond_2
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_6

    .line 347
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 348
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_2

    .line 332
    :pswitch_2
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_3

    .line 333
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 334
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 336
    :cond_3
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_6

    .line 337
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 338
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_2

    .line 322
    :pswitch_3
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_4

    .line 323
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 324
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 326
    :cond_4
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_6

    .line 327
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 328
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_2

    .line 312
    :pswitch_4
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_5

    .line 313
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, p2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 314
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 316
    :cond_5
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_6

    .line 317
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 318
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_2

    .line 306
    :pswitch_5
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_6

    .line 307
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 308
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_2

    .line 300
    :pswitch_6
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_6

    .line 301
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 302
    iput-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    :cond_6
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ea0abc8 -> :sswitch_6
        -0x50a5b1f6 -> :sswitch_5
        -0x3b32222b -> :sswitch_4
        0x2f63ee -> :sswitch_3
        0x42432bd -> :sswitch_2
        0x5b0b983 -> :sswitch_1
        0x5cf50f88 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V
    .locals 6

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 185
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimConfigElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    .line 187
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "onUpdate"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "delay"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "fromSpeed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "ease"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "property"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "onBegin"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "onComplete"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p3, -0x1

    :goto_1
    const-string v0, ".length"

    const/4 v3, 0x0

    packed-switch p3, :pswitch_data_0

    return-void

    .line 250
    :pswitch_0
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_1

    .line 251
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, p0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 253
    :cond_1
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_2

    .line 254
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 256
    :cond_2
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 257
    iget-object v3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    goto/16 :goto_2

    .line 239
    :pswitch_1
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_3

    .line 240
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, p0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 242
    :cond_3
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_4

    .line 243
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 245
    :cond_4
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 246
    iget-object v3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_2

    .line 228
    :pswitch_2
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_5

    .line 229
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, p0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 231
    :cond_5
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_6

    .line 232
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    .line 234
    :cond_6
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    .line 235
    iget-object v3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_2

    .line 217
    :pswitch_3
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_7

    .line 218
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, p0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 220
    :cond_7
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_8

    .line 221
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    .line 223
    :cond_8
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    .line 224
    iget-object v3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    :goto_2
    move-object p1, p0

    move p0, v1

    move v2, p0

    goto :goto_4

    .line 205
    :pswitch_4
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_9

    .line 206
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, p0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 208
    :cond_9
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_a

    .line 209
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    .line 212
    :cond_a
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    .line 213
    iget-object v3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    move-object p1, p0

    move p0, v2

    move v2, v1

    goto :goto_4

    .line 197
    :pswitch_5
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_b

    .line 198
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, p0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    .line 201
    :cond_b
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_3

    .line 189
    :pswitch_6
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_c

    .line 190
    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, p0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    .line 193
    :cond_c
    iget-object p0, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    :goto_3
    move-object p1, p0

    move p0, v1

    .line 264
    :goto_4
    array-length p2, p4

    if-lez p2, :cond_12

    if-eqz v2, :cond_d

    .line 268
    aget-object p0, p4, v1

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_7

    :cond_d
    if-eqz p0, :cond_f

    .line 270
    new-array p0, p2, [D

    :goto_5
    if-ge v1, p2, :cond_11

    .line 272
    aget-object p3, p4, v1

    if-eqz p3, :cond_e

    .line 273
    aget-object p3, p4, v1

    invoke-virtual {p3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    aput-wide v4, p0, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 278
    :cond_f
    new-array p0, p2, [Ljava/lang/String;

    :goto_6
    if-ge v1, p2, :cond_11

    .line 280
    aget-object p3, p4, v1

    if-eqz p3, :cond_10

    .line 281
    aget-object p3, p4, v1

    invoke-virtual {p3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 290
    :cond_11
    :goto_7
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    if-eqz v3, :cond_12

    int-to-double p0, p2

    .line 293
    invoke-virtual {v3, p0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_12
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ea0abc8 -> :sswitch_6
        -0x50a5b1f6 -> :sswitch_5
        -0x3b32222b -> :sswitch_4
        0x2f63ee -> :sswitch_3
        0x42432bd -> :sswitch_2
        0x5b0b983 -> :sswitch_1
        0x5cf50f88 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearConfigData()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    const-string v2, "fromSpeed"

    .line 81
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "delay"

    .line 82
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "ease"

    .line 83
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "property"

    .line 84
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "onUpdate"

    .line 85
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "onBegin"

    .line 86
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "onComplete"

    .line 87
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method protected evaluateConfigValue()V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    .line 96
    new-instance v2, Lcom/miui/maml/folme/ConfigValue;

    invoke-direct {v2}, Lcom/miui/maml/folme/ConfigValue;-><init>()V

    .line 97
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v3}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v3

    double-to-long v3, v3

    iput-wide v3, v2, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    .line 101
    :cond_0
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v3}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v3

    double-to-long v3, v3

    long-to-float v3, v3

    iput v3, v2, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    const/4 v3, 0x1

    .line 103
    iput-boolean v3, v2, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    .line 106
    :cond_1
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p0, v3}, Lcom/miui/maml/elements/AnimConfigElement;->getEase(Lcom/miui/maml/data/IndexedVariable;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/maml/folme/ConfigValue;->mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 110
    :cond_2
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/ArraySet;

    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V

    .line 114
    :cond_3
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_4

    .line 115
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/ArraySet;

    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V

    .line 118
    :cond_4
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_5

    .line 119
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/ArraySet;

    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V

    .line 122
    :cond_5
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_6

    .line 123
    iget-object v1, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    iget-object v3, v2, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/ArraySet;

    invoke-direct {p0, v1, v3}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V

    .line 125
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/elements/AnimConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-void
.end method

.method public removeConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    if-eqz p1, :cond_0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateConfigData(Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/AnimConfigElement;Lcom/miui/maml/elements/AnimConfigElement$1;)V

    .line 67
    iget-object v1, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/maml/elements/AnimConfigElement;->updateConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V

    return-void
.end method
