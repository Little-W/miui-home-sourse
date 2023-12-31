.class Lcom/miui/maml/data/BaseFunctions$NullObjFunction;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullObjFunction"
.end annotation


# instance fields
.field private mObjName:Ljava/lang/String;

.field private mVarIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    invoke-direct {p0, v0}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    const/4 v0, -0x1

    .line 126
    iput v0, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    return-void
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 4

    const/4 v0, 0x0

    .line 134
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    const/4 v1, -0x1

    if-eq p1, v0, :cond_2

    .line 137
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 138
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    goto :goto_1

    .line 139
    :cond_1
    :goto_0
    iput v1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 144
    :cond_2
    :goto_1
    iget p0, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-ne p0, v1, :cond_3

    return-wide v2

    .line 147
    :cond_3
    invoke-virtual {p2, p0}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x0

    :goto_2
    return-wide v2
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    return-void
.end method
