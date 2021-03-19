.class Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;
.super Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
.source "HprofBufferShrinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;->visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;

    invoke-direct {p0, p2}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)V

    return-void
.end method

.method private modifyIdInBuffer([BILcom/tencent/matrix/resource/hproflib/model/ID;)V
    .locals 0

    .line 387
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 388
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 389
    invoke-virtual {p3}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public visitHeapDumpInstance(Lcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;[B)V
    .locals 9

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;

    iget-object v0, v0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$700(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 359
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 360
    iget-object v2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;

    iget-object v2, v2, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$900(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)[Lcom/tencent/matrix/resource/hproflib/model/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    .line 361
    iget-object v7, v6, Lcom/tencent/matrix/resource/hproflib/model/Field;->nameId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    .line 362
    iget v8, v6, Lcom/tencent/matrix/resource/hproflib/model/Field;->typeId:I

    invoke-static {v8}, Lcom/tencent/matrix/resource/hproflib/model/Type;->getType(I)Lcom/tencent/matrix/resource/hproflib/model/Type;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 366
    iget-object v6, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;

    iget-object v6, v6, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v6}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$300(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 367
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;

    iget-object v0, v0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)I

    move-result v0

    invoke-static {v1, v8, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readValue(Ljava/io/InputStream;Lcom/tencent/matrix/resource/hproflib/model/Type;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/matrix/resource/hproflib/model/ID;

    goto :goto_1

    .line 370
    :cond_0
    iget-object v6, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;

    iget-object v6, v6, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v6}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)I

    move-result v6

    invoke-static {v1, v8, v6}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->skipValue(Ljava/io/InputStream;Lcom/tencent/matrix/resource/hproflib/model/Type;I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 364
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "visit instance failed, lost type def of typeId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v6, Lcom/tencent/matrix/resource/hproflib/model/Field;->typeId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 374
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;

    iget-object v1, v1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1400(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/matrix/resource/hproflib/model/ID;

    if-eqz v1, :cond_3

    .line 375
    invoke-virtual {v0, v1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;

    iget-object v2, v2, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$100(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 376
    invoke-direct {p0, p4, v5, v1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;->modifyIdInBuffer([BILcom/tencent/matrix/resource/hproflib/model/ID;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpInstance(Lcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;[B)V

    return-void

    :catch_0
    move-exception p1

    .line 381
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpPrimitiveArray(ILcom/tencent/matrix/resource/hproflib/model/ID;III[B)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;

    iget-object v0, v0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1400(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/matrix/resource/hproflib/model/ID;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p2, v0}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;

    iget-object v0, v0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1200(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 401
    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpPrimitiveArray(ILcom/tencent/matrix/resource/hproflib/model/ID;III[B)V

    return-void
.end method
