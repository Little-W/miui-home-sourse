.class Lcom/miui/maml/data/Variables$VarBucket;
.super Lcom/miui/maml/data/Variables$BaseVarBucket;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarBucket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/maml/data/Variables$BaseVarBucket;"
    }
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/data/Variables$ValueInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, v0}, Lcom/miui/maml/data/Variables$BaseVarBucket;-><init>(Lcom/miui/maml/data/Variables$1;)V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/data/Variables$1;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/miui/maml/data/Variables$VarBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/data/Variables$ValueInfo;

    if-nez p1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p1, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 213
    :catch_0
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getVer(I)I
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/data/Variables$ValueInfo;

    if-nez p1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget v0, p1, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 222
    :catch_0
    monitor-exit p0

    return v0
.end method

.method protected onAddItem(I)V
    .locals 2

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final declared-synchronized put(ILjava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;I)V"
        }
    .end annotation

    monitor-enter p0

    if-gez p1, :cond_0

    .line 193
    monitor-exit p0

    return-void

    .line 196
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/Variables$ValueInfo;

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Lcom/miui/maml/data/Variables$ValueInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p3}, Lcom/miui/maml/data/Variables$ValueInfo;-><init>(Ljava/lang/Object;II)V

    .line 199
    iget-object p2, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/miui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 205
    :catch_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public reset()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 228
    iget-object v2, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/data/Variables$ValueInfo;

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {v2}, Lcom/miui/maml/data/Variables$ValueInfo;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
