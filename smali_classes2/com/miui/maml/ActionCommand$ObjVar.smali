.class Lcom/miui/maml/ActionCommand$ObjVar;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjVar"
.end annotation


# instance fields
.field private mIndex:I

.field private mIndexArr:Lcom/miui/maml/data/Expression;

.field private mVars:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;)V
    .locals 3

    .line 2786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2787
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mVars:Lcom/miui/maml/data/Variables;

    const/16 v0, 0x5b

    .line 2789
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 2792
    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    .line 2793
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2794
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mIndexArr:Lcom/miui/maml/data/Expression;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-object p1, v1

    .line 2798
    :catch_1
    :cond_0
    :goto_0
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mIndex:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 2802
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2803
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mIndexArr:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_0

    .line 2804
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 2806
    :try_start_0
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v0
.end method
