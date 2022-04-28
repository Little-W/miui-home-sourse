.class public Lcom/miui/maml/data/IndexedVariable;
.super Ljava/lang/Object;
.source "IndexedVariable.java"


# instance fields
.field protected mIndex:I

.field private mIsNumber:Z

.field protected mVars:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p3, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    .line 11
    iget-boolean p3, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 12
    iput-object p2, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getArr(I)Ljava/lang/Object;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getArrDouble(I)D
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->getArrDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getArrString(I)Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->getArrString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getDouble()D
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getIndex()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    return v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVariables()Lcom/miui/maml/data/Variables;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    return-object v0
.end method

.method public final getVersion()I
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    iget-boolean v2, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Variables;->getVer(IZ)I

    move-result v0

    return v0
.end method

.method public final isNull()Z
    .locals 4

    .line 61
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v3, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3}, Lcom/miui/maml/data/Variables;->existsDouble(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v3, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public final isNull(I)Z
    .locals 4

    .line 65
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v3, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3, p1}, Lcom/miui/maml/data/Variables;->existsArrItem(II)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v3, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3, p1}, Lcom/miui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public final set(D)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/maml/data/Variables;->put(ID)V

    return-void
.end method

.method public final set(Ljava/lang/Object;)Z
    .locals 2

    .line 20
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->putDouble(ILjava/lang/Object;)Z

    move-result p1

    return p1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setArr(ID)Z
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/miui/maml/data/Variables;->putArr(IID)Z

    move-result p1

    return p1
.end method

.method public final setArr(ILjava/lang/Object;)Z
    .locals 2

    .line 33
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/maml/data/Variables;->putArrDouble(IILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/maml/data/Variables;->putArr(IILjava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method
