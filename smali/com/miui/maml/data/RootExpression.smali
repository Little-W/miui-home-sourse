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

.field private mIsJsonArrayInit:Z

.field private mIsJsonObjectInit:Z

.field private mIsNumInit:Z

.field private mIsStrInit:Z

.field private mJsonArrayValue:Lorg/json/JSONArray;

.field private mJsonObjectValue:Lorg/json/JSONObject;

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

    .line 89
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsNumInit:Z

    .line 77
    iput-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsStrInit:Z

    .line 78
    iput-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsJsonObjectInit:Z

    .line 79
    iput-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsJsonArrayInit:Z

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 90
    iput-object p1, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    .line 91
    iput-object p2, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/maml/data/RootExpression;Z)Z
    .locals 0

    .line 9
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

    .line 95
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public evaluate()D
    .locals 6

    .line 100
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsNumInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/maml/data/RootExpression;->mDoubleValue:D

    .line 102
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v0, p0}, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lcom/miui/maml/data/RootExpression;)V

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 104
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v0, v2}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 105
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/maml/data/RootExpression$VarVersion;

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 109
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 112
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/miui/maml/data/RootExpression;->mIsNumInit:Z

    goto :goto_3

    .line 115
    :cond_2
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    if-eqz v0, :cond_5

    move v0, v2

    .line 121
    :goto_1
    iget-object v3, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 122
    aget-object v3, v3, v2

    if-eqz v3, :cond_4

    .line 124
    iget-object v4, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lcom/miui/maml/data/RootExpression$VarVersion;->getVer(Lcom/miui/maml/data/Variables;)I

    move-result v4

    .line 125
    iget v5, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v5, v4, :cond_4

    .line 127
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

    .line 134
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/data/RootExpression;->mDoubleValue:D

    .line 137
    :cond_7
    :goto_3
    iget-wide v0, p0, Lcom/miui/maml/data/RootExpression;->mDoubleValue:D

    return-wide v0
.end method

.method public evaluateJsonArray()Lorg/json/JSONArray;
    .locals 6

    .line 216
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsJsonArrayInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mJsonArrayValue:Lorg/json/JSONArray;

    .line 218
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v0, p0}, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lcom/miui/maml/data/RootExpression;)V

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 220
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v0, v2}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 221
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/maml/data/RootExpression$VarVersion;

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 222
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 224
    :cond_0
    iput-boolean v1, p0, Lcom/miui/maml/data/RootExpression;->mIsJsonArrayInit:Z

    goto :goto_2

    .line 228
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    if-eqz v0, :cond_4

    move v0, v2

    .line 232
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 233
    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    .line 235
    iget-object v4, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lcom/miui/maml/data/RootExpression$VarVersion;->getVer(Lcom/miui/maml/data/Variables;)I

    move-result v4

    .line 236
    iget v5, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v5, v4, :cond_3

    .line 238
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

    .line 245
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mJsonArrayValue:Lorg/json/JSONArray;

    .line 248
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mJsonArrayValue:Lorg/json/JSONArray;

    return-object v0
.end method

.method public evaluateJsonObject()Lorg/json/JSONObject;
    .locals 6

    .line 179
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsJsonObjectInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mJsonObjectValue:Lorg/json/JSONObject;

    .line 181
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v0, p0}, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lcom/miui/maml/data/RootExpression;)V

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 183
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v0, v2}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 184
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/maml/data/RootExpression$VarVersion;

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 185
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 187
    :cond_0
    iput-boolean v1, p0, Lcom/miui/maml/data/RootExpression;->mIsJsonObjectInit:Z

    goto :goto_2

    .line 191
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    if-eqz v0, :cond_4

    move v0, v2

    .line 195
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 196
    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    .line 198
    iget-object v4, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lcom/miui/maml/data/RootExpression$VarVersion;->getVer(Lcom/miui/maml/data/Variables;)I

    move-result v4

    .line 199
    iget v5, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v5, v4, :cond_3

    .line 201
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

    .line 208
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mJsonObjectValue:Lorg/json/JSONObject;

    .line 211
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mJsonObjectValue:Lorg/json/JSONObject;

    return-object v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 6

    .line 142
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsStrInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v0, p0}, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lcom/miui/maml/data/RootExpression;)V

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 146
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v0, v2}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 147
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/maml/data/RootExpression$VarVersion;

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 148
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    :cond_0
    iput-boolean v1, p0, Lcom/miui/maml/data/RootExpression;->mIsStrInit:Z

    goto :goto_2

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    if-eqz v0, :cond_4

    move v0, v2

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 159
    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    .line 161
    iget-object v4, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lcom/miui/maml/data/RootExpression$VarVersion;->getVer(Lcom/miui/maml/data/Variables;)I

    move-result v4

    .line 162
    iget v5, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v5, v4, :cond_3

    .line 164
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

    .line 171
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 174
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    move-result v0

    return v0
.end method
