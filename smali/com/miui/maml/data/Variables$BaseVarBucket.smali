.class abstract Lcom/miui/maml/data/Variables$BaseVarBucket;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseVarBucket"
.end annotation


# instance fields
.field private mIndices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/data/Variables$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/miui/maml/data/Variables$BaseVarBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public exists(Ljava/lang/String;)Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract onAddItem(I)V
.end method

.method public declared-synchronized registerVariable(Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 41
    iget v0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget v1, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/maml/data/Variables$BaseVarBucket;->onAddItem(I)V

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    if-ne v1, v2, :cond_1

    .line 46
    iget v1, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    .line 47
    :cond_1
    invoke-static {}, Lcom/miui/maml/data/Variables;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Variables"

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerVariable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  index:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
