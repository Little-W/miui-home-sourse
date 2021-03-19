.class public Lcom/miui/maml/data/RootExpression;
.super Lcom/miui/maml/data/Expression;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/RootExpression$VarVersionVisitor;,
        Lcom/miui/maml/data/RootExpression$VarVersion;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RootExression"


# instance fields
.field private mAlwaysEvaluate:Z

.field private mDoubleValue:D

.field private mExp:Lcom/miui/maml/data/Expression;

.field private mIsNumInit:Z

.field private mIsStrInit:Z

.field private mStringValue:Ljava/lang/String;

.field private mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

.field private mVars:Lcom/miui/maml/data/Variables;

.field private mVersionSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/maml/data/RootExpression$VarVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsNumInit:Z

    .line 71
    iput-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsStrInit:Z

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 81
    iput-object p1, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    .line 82
    iput-object p2, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/maml/data/RootExpression;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    return p1
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .locals 0

    return-void
.end method

.method public addVarVersion(Lcom/miui/maml/data/RootExpression$VarVersion;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public evaluate()D
    .locals 6

    .line 91
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsNumInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/maml/data/RootExpression;->mDoubleValue:D

    .line 93
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v0, p0}, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lcom/miui/maml/data/RootExpression;)V

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 95
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v0, v2}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 96
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/maml/data/RootExpression$VarVersion;

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 100
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/miui/maml/data/RootExpression;->mIsNumInit:Z

    goto :goto_3

    .line 106
    :cond_2
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    if-eqz v0, :cond_5

    move v0, v2

    .line 112
    :goto_1
    iget-object v3, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 113
    aget-object v3, v3, v2

    if-eqz v3, :cond_4

    .line 115
    iget-object v4, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lcom/miui/maml/data/RootExpression$VarVersion;->getVer(Lcom/miui/maml/data/Variables;)I

    move-result v4

    .line 116
    iget v5, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v5, v4, :cond_4

    .line 118
    iput v4, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    move v0, v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 125
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/data/RootExpression;->mDoubleValue:D

    .line 128
    :cond_7
    :goto_3
    iget-wide v0, p0, Lcom/miui/maml/data/RootExpression;->mDoubleValue:D

    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 6

    .line 133
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsStrInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v0, p0}, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lcom/miui/maml/data/RootExpression;)V

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 137
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v0, v2}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 138
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/maml/data/RootExpression$VarVersion;

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 139
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 141
    :cond_0
    iput-boolean v1, p0, Lcom/miui/maml/data/RootExpression;->mIsStrInit:Z

    goto :goto_2

    .line 145
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    if-eqz v0, :cond_4

    move v0, v2

    .line 149
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 150
    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    .line 152
    iget-object v4, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lcom/miui/maml/data/RootExpression$VarVersion;->getVer(Lcom/miui/maml/data/Variables;)I

    move-result v4

    .line 153
    iget v5, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v5, v4, :cond_3

    .line 155
    iput v4, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    move v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 162
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 165
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    move-result v0

    return v0
.end method
