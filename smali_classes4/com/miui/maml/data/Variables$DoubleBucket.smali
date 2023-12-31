.class Lcom/miui/maml/data/Variables$DoubleBucket;
.super Lcom/miui/maml/data/Variables$BaseVarBucket;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleBucket"
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/data/Variables$DoubleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0}, Lcom/miui/maml/data/Variables$BaseVarBucket;-><init>(Lcom/miui/maml/data/Variables$1;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/data/Variables$1;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/miui/maml/data/Variables$DoubleBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized exists(I)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 78
    :catch_0
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized get(I)D
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/data/Variables$DoubleInfo;

    if-nez p1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-wide v0, p1, Lcom/miui/maml/data/Variables$DoubleInfo;->mValue:D
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 102
    :catch_0
    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized getVer(I)I
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/data/Variables$DoubleInfo;

    if-nez p1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget v0, p1, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I
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

    .line 111
    :catch_0
    monitor-exit p0

    return v0
.end method

.method protected onAddItem(I)V
    .locals 2

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final declared-synchronized put(IDI)V
    .locals 2

    monitor-enter p0

    if-gez p1, :cond_0

    .line 83
    monitor-exit p0

    return-void

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/Variables$DoubleInfo;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/miui/maml/data/Variables$DoubleInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1, p4}, Lcom/miui/maml/data/Variables$DoubleInfo;-><init>(DII)V

    .line 88
    iget-object p2, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0, p2, p3, p4}, Lcom/miui/maml/data/Variables$DoubleInfo;->setValue(DI)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 94
    :catch_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public reset()V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 117
    iget-object v2, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/data/Variables$DoubleInfo;

    if-eqz v2, :cond_0

    const-wide/16 v3, 0x0

    .line 119
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/Variables$DoubleInfo;->setValue(D)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
