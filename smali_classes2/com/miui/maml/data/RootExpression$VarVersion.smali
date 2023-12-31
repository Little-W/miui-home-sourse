.class public Lcom/miui/maml/data/RootExpression$VarVersion;
.super Ljava/lang/Object;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarVersion"
.end annotation


# instance fields
.field mIndex:I

.field private mIsNumber:Z

.field mVersion:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 19
    iput p2, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 20
    iput-boolean p3, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 28
    instance-of v0, p1, Lcom/miui/maml/data/RootExpression$VarVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 30
    iget-boolean v0, p1, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    iget-boolean v2, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    if-ne v0, v2, :cond_0

    iget p1, p1, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    iget p0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getVer(Lcom/miui/maml/data/Variables;)I
    .locals 1

    .line 36
    iget v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    iget-boolean p0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    invoke-virtual {p1, v0, p0}, Lcom/miui/maml/data/Variables;->getVer(IZ)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    iget p0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method
