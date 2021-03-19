.class public Lcom/miui/maml/elements/VariableElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "VariableElement.java"


# static fields
.field public static final LENGTH_SUFFIX:Ljava/lang/String; = ".length"

.field private static final LOG_TAG:Ljava/lang/String; = "VariableElement"

.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lcom/miui/maml/animation/VariableAnimation;

.field private mArraySize:I

.field private mArrayValues:[Lcom/miui/maml/data/Expression;

.field private mConst:Z

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mInited:Z

.field private mLengthVar:Lcom/miui/maml/data/IndexedVariable;

.field private mOldValue:D

.field private mOldVar:Lcom/miui/maml/data/IndexedVariable;

.field private mThreshold:D

.field private mTrigger:Lcom/miui/maml/CommandTrigger;

.field private mType:Lcom/miui/maml/data/VariableType;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 5

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/miui/maml/elements/VariableElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "expression"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mExpression:Lcom/miui/maml/data/Expression;

    .line 59
    invoke-virtual {p0}, Lcom/miui/maml/elements/VariableElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "index"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mIndexExpression:Lcom/miui/maml/data/Expression;

    const-string v0, "threshold"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 60
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/miui/maml/elements/VariableElement;->mThreshold:D

    const-string v0, "type"

    .line 61
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    const-string v0, "const"

    .line 62
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mConst:Z

    const-string v0, "size"

    const/4 v1, 0x0

    .line 63
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    .line 65
    invoke-virtual {p0}, Lcom/miui/maml/elements/VariableElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    .line 66
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    iget-object v3, p0, Lcom/miui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v4}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 67
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "old_value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v4}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mOldVar:Lcom/miui/maml/data/IndexedVariable;

    .line 70
    invoke-static {p1, p2}, Lcom/miui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 72
    iget-object p2, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {p2}, Lcom/miui/maml/data/VariableType;->isArray()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "values"

    .line 73
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 75
    iget-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_0

    .line 76
    array-length p1, p1

    iput p1, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    .line 78
    :cond_0
    iget p1, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    if-lez p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    iget p2, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    iget-object v2, v2, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v2}, Lcom/miui/maml/data/Variables;->createArray(Ljava/lang/String;ILjava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "VariableElement"

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to create array:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput v1, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    goto :goto_0

    :cond_1
    const-string p1, "VariableElement"

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "array size is 0:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    :goto_0
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".length"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 88
    iget-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    iget p2, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    int-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_3
    return-void
.end method

.method private getDouble(ZI)D
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mAnimation:Lcom/miui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/miui/maml/animation/VariableAnimation;->getValue()D

    move-result-wide p1

    return-wide p1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    return-wide p1

    :cond_1
    if-eqz p1, :cond_2

    .line 261
    iget-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->getArrDouble(I)D

    move-result-wide p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p1}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private onValueChange(D)V
    .locals 4

    .line 266
    iget-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mInited:Z

    if-nez v0, :cond_0

    .line 267
    iput-wide p1, p0, Lcom/miui/maml/elements/VariableElement;->mOldValue:D

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/maml/elements/VariableElement;->mOldValue:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/maml/elements/VariableElement;->mThreshold:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mOldVar:Lcom/miui/maml/data/IndexedVariable;

    iget-wide v1, p0, Lcom/miui/maml/elements/VariableElement;->mOldValue:D

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 271
    iput-wide p1, p0, Lcom/miui/maml/elements/VariableElement;->mOldValue:D

    .line 272
    iget-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    :cond_1
    return-void
.end method

.method private update()V
    .locals 5

    .line 187
    sget-object v0, Lcom/miui/maml/elements/VariableElement$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 235
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isNumberArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 236
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mIndexExpression:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    .line 238
    invoke-direct {p0, v1, v0}, Lcom/miui/maml/elements/VariableElement;->getDouble(ZI)D

    move-result-wide v1

    .line 239
    iget-object v3, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 240
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/VariableElement;->onValueChange(D)V

    goto/16 :goto_4

    .line 228
    :pswitch_0
    invoke-direct {p0, v1, v1}, Lcom/miui/maml/elements/VariableElement;->getDouble(ZI)D

    move-result-wide v0

    .line 229
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 230
    invoke-direct {p0, v0, v1}, Lcom/miui/maml/elements/VariableElement;->onValueChange(D)V

    goto/16 :goto_4

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mIndexExpression:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mIndexExpression:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    .line 205
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v0, v2}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 207
    iget-object v3, p0, Lcom/miui/maml/elements/VariableElement;->mOldVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v3, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 208
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2, v1, v0}, Lcom/miui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_6

    .line 210
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->perform()V

    goto/16 :goto_4

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_6

    .line 214
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v0

    .line 215
    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 216
    check-cast v0, [Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    array-length v2, v2

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 219
    iget-object v3, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_4

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_6

    .line 190
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 193
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mOldVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_6

    .line 196
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->perform()V

    goto :goto_4

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_6

    .line 242
    array-length v0, v0

    .line 243
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v2}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v2

    :goto_2
    if-ge v1, v0, :cond_5

    .line 245
    iget-object v3, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    aget-object v3, v3, v1

    if-nez v3, :cond_4

    const-wide/16 v3, 0x0

    goto :goto_3

    .line 246
    :cond_4
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    :goto_3
    invoke-static {v2, v1, v3, v4}, Lcom/miui/maml/data/Variables;->putValueToArr(Ljava/lang/Object;ID)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected doTick(J)V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mConst:Z

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    .line 113
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 179
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    .line 180
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->finish()V

    :cond_0
    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mInited:Z

    return-void
.end method

.method public init()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 119
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mInited:Z

    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .locals 1

    const-string v0, "VariableAnimation"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance p1, Lcom/miui/maml/animation/VariableAnimation;

    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mAnimation:Lcom/miui/maml/animation/VariableAnimation;

    return-object p1

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    move-result-object p1

    return-object p1
.end method

.method protected onSetAnimBefore()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mAnimation:Lcom/miui/maml/animation/VariableAnimation;

    return-void
.end method

.method protected onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .locals 1

    .line 134
    instance-of v0, p1, Lcom/miui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 135
    check-cast p1, Lcom/miui/maml/animation/VariableAnimation;

    iput-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mAnimation:Lcom/miui/maml/animation/VariableAnimation;

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 165
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 166
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->pause()V

    :cond_0
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 148
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 0

    .line 141
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 142
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    return-void
.end method

.method public reset(J)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 160
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 172
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 173
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->resume()V

    :cond_0
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 0

    .line 153
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 154
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    return-void
.end method
