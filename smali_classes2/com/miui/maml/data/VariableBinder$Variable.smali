.class public Lcom/miui/maml/data/VariableBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$TypedValue;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"


# instance fields
.field private mArrayIndex:Lcom/miui/maml/data/Expression;

.field protected mDefNumberValue:D

.field protected mDefStringValue:Ljava/lang/String;

.field protected mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Variables;)V
    .locals 1

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$TypedValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    iget-object p2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v0

    invoke-direct {p1, p2, p3, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 4

    .line 182
    invoke-direct {p0, p1}, Lcom/miui/maml/data/VariableBinder$TypedValue;-><init>(Lorg/w3c/dom/Element;)V

    const-string v0, "arrIndex"

    .line 183
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    .line 184
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, p2, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    const-string p2, "default"

    .line 185
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 188
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 189
    iput-wide v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    goto :goto_1

    .line 192
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 194
    :catch_0
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 195
    iput-wide v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getNumber()D
    .locals 5

    .line 239
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 241
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/maml/data/IndexedVariable;->getArrDouble(I)D

    move-result-wide v0

    return-wide v0

    .line 243
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    return-wide v0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 247
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v0, v3

    invoke-virtual {p0, v0}, Lcom/miui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/miui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0

    .line 249
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/miui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public set(D)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 203
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->setArr(ID)Z

    goto :goto_0

    .line 205
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :goto_0
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 4

    .line 210
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    .line 212
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :cond_0
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 218
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 221
    :catch_0
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_2

    .line 222
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int p1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->setArr(ID)Z

    goto :goto_1

    .line 224
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    goto :goto_1

    .line 227
    :cond_3
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 228
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/miui/maml/util/Utils;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_5

    .line 231
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_5
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
