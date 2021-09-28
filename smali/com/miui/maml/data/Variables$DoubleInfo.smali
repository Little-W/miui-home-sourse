.class Lcom/miui/maml/data/Variables$DoubleInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleInfo"
.end annotation


# instance fields
.field mValue:D

.field mVarType:I

.field mVersion:I


# direct methods
.method public constructor <init>(DII)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mValue:D

    .line 29
    iput p3, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    iput p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVarType:I

    return-void
.end method


# virtual methods
.method public setValue(D)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/data/Variables$DoubleInfo;->setValue(DI)V

    return-void
.end method

.method public setValue(DI)V
    .locals 1

    .line 39
    iget v0, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVarType:I

    if-le p3, v0, :cond_0

    .line 40
    iput p3, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVarType:I

    .line 42
    :cond_0
    iget v0, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVarType:I

    if-ne p3, v0, :cond_1

    .line 43
    iput-wide p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mValue:D

    .line 44
    iget p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    :cond_1
    return-void
.end method
