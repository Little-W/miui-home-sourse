.class public Lcom/miui/maml/data/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/Variables$VarBucket;,
        Lcom/miui/maml/data/Variables$ValueInfo;,
        Lcom/miui/maml/data/Variables$DoubleBucket;,
        Lcom/miui/maml/data/Variables$BaseVarBucket;,
        Lcom/miui/maml/data/Variables$DoubleInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Variables"

.field public static final MAX_ARRAY_SIZE:I = 0x2710

.field public static final VARIABLE_TYPE_HIGH_PRIORITY:I = 0x1

.field public static final VARIABLE_TYPE_NORMAL:I


# instance fields
.field private mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

.field private mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/maml/data/Variables$VarBucket<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Lcom/miui/maml/data/Variables$DoubleBucket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/maml/data/Variables$DoubleBucket;-><init>(Lcom/miui/maml/data/Variables$1;)V

    iput-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    .line 240
    new-instance v0, Lcom/miui/maml/data/Variables$VarBucket;

    invoke-direct {v0, v1}, Lcom/miui/maml/data/Variables$VarBucket;-><init>(Lcom/miui/maml/data/Variables$1;)V

    iput-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    return-void
.end method

.method private static dbglog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Variables"

    .line 499
    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getArrInner(II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)TT;"
        }
    .end annotation

    .line 482
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getArrInner: designated object is not an array. index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_0
    invoke-static {v0, p2}, Lcom/miui/maml/data/Variables;->isIndexValid(Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getArrInner: designated array index is invalid. index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " arrIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_1
    aget-object p1, v0, p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 493
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getArrInner: designated index is invalid. index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " arrIndex:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getArrInner: designated object type is not correct. index:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static isIndexValid(Ljava/lang/Object;I)Z
    .locals 1

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 471
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method public static putValueToArr(Ljava/lang/Object;ID)Z
    .locals 5

    .line 444
    invoke-static {p0, p1}, Lcom/miui/maml/data/Variables;->isIndexValid(Ljava/lang/Object;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 445
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " designated array index is invalid. arrIndex:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    return v1

    .line 449
    :cond_0
    instance-of v0, p0, [D

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 450
    check-cast p0, [D

    aput-wide p2, p0, p1

    goto :goto_0

    .line 451
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 452
    check-cast p0, [B

    double-to-long p2, p2

    long-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    goto :goto_0

    .line 453
    :cond_2
    instance-of v0, p0, [C

    if-eqz v0, :cond_3

    .line 454
    check-cast p0, [C

    double-to-long p2, p2

    long-to-int p2, p2

    int-to-char p2, p2

    aput-char p2, p0, p1

    goto :goto_0

    .line 455
    :cond_3
    instance-of v0, p0, [F

    if-eqz v0, :cond_4

    .line 456
    check-cast p0, [F

    double-to-float p2, p2

    aput p2, p0, p1

    goto :goto_0

    .line 457
    :cond_4
    instance-of v0, p0, [I

    if-eqz v0, :cond_5

    .line 458
    check-cast p0, [I

    double-to-long p2, p2

    long-to-int p2, p2

    aput p2, p0, p1

    goto :goto_0

    .line 459
    :cond_5
    instance-of v0, p0, [J

    if-eqz v0, :cond_6

    .line 460
    check-cast p0, [J

    double-to-long p2, p2

    aput-wide p2, p0, p1

    goto :goto_0

    .line 461
    :cond_6
    instance-of v0, p0, [S

    if-eqz v0, :cond_7

    .line 462
    check-cast p0, [S

    double-to-long p2, p2

    long-to-int p2, p2

    int-to-short p2, p2

    aput-short p2, p0, p1

    goto :goto_0

    .line 463
    :cond_7
    instance-of v0, p0, [Z

    if-eqz v0, :cond_9

    .line 464
    check-cast p0, [Z

    const-wide/16 v3, 0x0

    cmpl-double p2, p2, v3

    if-lez p2, :cond_8

    move v1, v2

    :cond_8
    aput-boolean v1, p0, p1

    :cond_9
    :goto_0
    return v2
.end method


# virtual methods
.method public createArray(Ljava/lang/String;ILjava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    if-lez p2, :cond_2

    const/16 v1, 0x2710

    if-le p2, v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    .line 281
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 284
    :try_start_0
    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p3, "Variables"

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createArray failed: name= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  size="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public existsArrItem(II)Z
    .locals 1

    .line 263
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ltz p2, :cond_1

    .line 268
    :try_start_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method public existsDouble(I)Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$DoubleBucket;->exists(I)Z

    move-result p1

    return p1
.end method

.method public existsDouble(Ljava/lang/String;)Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$DoubleBucket;->exists(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public existsObj(Ljava/lang/String;)Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$VarBucket;->exists(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$VarBucket;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 342
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArr(II)Ljava/lang/Object;
    .locals 0

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrDouble(II)D
    .locals 4

    const-wide/16 v0, 0x0

    .line 376
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArrDouble: designated array does not exist. index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-static {v2, p2}, Lcom/miui/maml/data/Variables;->isIndexValid(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArrDouble: designated index is invalid. index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " arrIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_1
    instance-of v3, v2, [Z

    if-eqz v3, :cond_3

    .line 382
    check-cast v2, [Z

    aget-boolean p1, v2, p2

    if-eqz p1, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_2
    return-wide v0

    .line 384
    :cond_3
    invoke-static {v2, p2}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 387
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArrDouble: designated index is invalid. index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " arrIndex:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    :goto_0
    return-wide v0
.end method

.method public getArrString(II)Ljava/lang/String;
    .locals 0

    .line 393
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$DoubleBucket;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 354
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    .line 359
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 366
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVer(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 503
    iget-object p2, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables$DoubleBucket;->getVer(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables$VarBucket;->getVer(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final put(ID)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/miui/maml/data/Variables$DoubleBucket;->put(IDI)V

    return-void
.end method

.method public final put(ILjava/lang/Object;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;I)V

    return-void
.end method

.method public final put(Ljava/lang/String;D)V
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(ID)V

    return-void
.end method

.method public final put(Ljava/lang/String;DI)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/maml/data/Variables$DoubleBucket;->put(IDI)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;I)V

    return-void
.end method

.method public putArr(IID)Z
    .locals 2

    .line 430
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 432
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "putArr: designated array does not exist. index:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    return v1

    .line 436
    :cond_0
    invoke-static {v0, p2, p3, p4}, Lcom/miui/maml/data/Variables;->putValueToArr(Ljava/lang/Object;ID)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 437
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public putArr(IILjava/lang/Object;)Z
    .locals 2

    .line 398
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 400
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putArr: designated array does not exist. index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_0
    invoke-static {v0, p2}, Lcom/miui/maml/data/Variables;->isIndexValid(Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putArr: designated array index is invalid. index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " arrIndex:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_1
    aput-object p3, v0, p2

    .line 406
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 412
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putArr: designated array index is invalid. index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " arrIndex:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "putArr: designated object is not an object array. index:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public putArrDouble(IILjava/lang/Object;)Z
    .locals 2

    .line 418
    instance-of v0, p3, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 419
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/maml/data/Variables;->putArr(IID)Z

    move-result p1

    return p1

    .line 420
    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 422
    :try_start_0
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/miui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/maml/data/Variables;->putArr(IID)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final putDouble(ILjava/lang/Object;)Z
    .locals 4

    .line 313
    instance-of v0, p2, Ljava/lang/Number;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 314
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/maml/data/Variables;->put(ID)V

    return v1

    .line 316
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 317
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/maml/data/Variables;->put(ID)V

    return v1

    .line 319
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 321
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/maml/data/Variables;->put(ID)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final putNum(Ljava/lang/String;D)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public registerDoubleVariable(Ljava/lang/String;)I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$DoubleBucket;->registerVariable(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public registerVariable(Ljava/lang/String;)I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables$VarBucket;->registerVariable(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0}, Lcom/miui/maml/data/Variables$DoubleBucket;->reset()V

    .line 509
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    invoke-virtual {v0}, Lcom/miui/maml/data/Variables$VarBucket;->reset()V

    return-void
.end method
