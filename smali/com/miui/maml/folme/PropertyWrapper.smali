.class public Lcom/miui/maml/folme/PropertyWrapper;
.super Ljava/lang/Object;
.source "PropertyWrapper.java"


# instance fields
.field private mDefaultValue:D

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mInFolmeMode:Z

.field private mValue:Lcom/miui/maml/data/IndexedVariable;

.field private mVelocity:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 17
    iget-boolean p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz p4, :cond_0

    .line 18
    new-instance p4, Lcom/miui/maml/data/IndexedVariable;

    const/4 v0, 0x1

    invoke-direct {p4, p1, p2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    .line 19
    new-instance p4, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_v"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mVelocity:Lcom/miui/maml/data/IndexedVariable;

    .line 21
    :cond_0
    iput-object p3, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    .line 22
    iput-wide p5, p0, Lcom/miui/maml/folme/PropertyWrapper;->mDefaultValue:D

    return-void
.end method


# virtual methods
.method public getValue()D
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    return-wide v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mDefaultValue:D

    :goto_0
    return-wide v0
.end method

.method public getVelocity()D
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mVelocity:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init()V
    .locals 3

    .line 58
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/miui/maml/folme/PropertyWrapper;->mDefaultValue:D

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_1
    return-void
.end method

.method public setValue(D)V
    .locals 2

    .line 26
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/maml/data/Expression$NumberExpression;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/miui/maml/data/Expression$NumberExpression;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Expression$NumberExpression;->setValue(D)V

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/miui/maml/data/Expression$NumberExpression;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/data/Expression$NumberExpression;-><init>(D)V

    iput-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    :goto_0
    return-void
.end method

.method public setVelocity(D)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mVelocity:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    return-void
.end method
