.class Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;
.super Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
.source "HprofWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/resource/hproflib/HprofWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HprofHeapDumpWriter"
.end annotation


# instance fields
.field private final mOrigLength:J

.field private final mTag:I

.field private final mTimestamp:I

.field final synthetic this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/hproflib/HprofWriter;IIJ)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    const/4 p1, 0x0

    .line 156
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)V

    .line 157
    iput p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->mTag:I

    .line 158
    iput p3, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->mTimestamp:I

    .line 159
    iput-wide p4, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->mOrigLength:J

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 2

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$200(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/OutputStream;

    move-result-object v0

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->mTag:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 338
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$200(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/OutputStream;

    move-result-object v0

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->mTimestamp:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 339
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$200(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 340
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$200(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 341
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 343
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V
    .locals 2

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 177
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 179
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p2}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$100(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)I

    move-result p2

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->skip(Ljava/io/OutputStream;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 182
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpClass(Lcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;I[Lcom/tencent/matrix/resource/hproflib/model/Field;[Lcom/tencent/matrix/resource/hproflib/model/Field;)V
    .locals 2

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 249
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 250
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 251
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p3}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 252
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p4}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 253
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p2}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$100(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x2

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->skip(Ljava/io/OutputStream;J)V

    .line 254
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p5}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 257
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEShort(Ljava/io/OutputStream;I)V

    .line 260
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    array-length p3, p6

    invoke-static {p1, p3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEShort(Ljava/io/OutputStream;I)V

    .line 261
    array-length p1, p6

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object p4, p6, p3

    .line 262
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p5}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p5

    iget-object v0, p4, Lcom/tencent/matrix/resource/hproflib/model/Field;->nameId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    invoke-static {p5, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeID(Ljava/io/OutputStream;Lcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 263
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p5}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p5

    iget v0, p4, Lcom/tencent/matrix/resource/hproflib/model/Field;->typeId:I

    invoke-virtual {p5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 264
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p5}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p5

    iget-object p4, p4, Lcom/tencent/matrix/resource/hproflib/model/Field;->staticValue:Ljava/lang/Object;

    invoke-static {p5, p4}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    array-length p3, p7

    invoke-static {p1, p3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEShort(Ljava/io/OutputStream;I)V

    .line 269
    array-length p1, p7

    :goto_1
    if-ge p2, p1, :cond_1

    aget-object p3, p7, p2

    .line 270
    iget-object p4, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p4}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p4

    iget-object p5, p3, Lcom/tencent/matrix/resource/hproflib/model/Field;->nameId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    invoke-static {p4, p5}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeID(Ljava/io/OutputStream;Lcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 271
    iget-object p4, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p4}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p4

    iget p3, p3, Lcom/tencent/matrix/resource/hproflib/model/Field;->typeId:I

    invoke-virtual {p4, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 274
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpInfo(ILcom/tencent/matrix/resource/hproflib/model/ID;)V
    .locals 2

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 167
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 169
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpInstance(Lcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;[B)V
    .locals 2

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 282
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 283
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 284
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p3}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 285
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    array-length p2, p4

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 286
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 288
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpJavaFrame(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V
    .locals 2

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 202
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 203
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 204
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 206
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpJniLocal(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V
    .locals 2

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 190
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 191
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 192
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 194
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpJniMonitor(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V
    .locals 2

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 326
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 327
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 328
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 330
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpNativeStack(Lcom/tencent/matrix/resource/hproflib/model/ID;I)V
    .locals 2

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 214
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 215
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 217
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpObjectArray(Lcom/tencent/matrix/resource/hproflib/model/ID;IILcom/tencent/matrix/resource/hproflib/model/ID;[B)V
    .locals 2

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 296
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 297
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 298
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 299
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p4}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 300
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$100(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)I

    move-result p1

    mul-int/2addr p3, p1

    .line 301
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p5, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 303
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpPrimitiveArray(ILcom/tencent/matrix/resource/hproflib/model/ID;III[B)V
    .locals 1

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 311
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 312
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 313
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 314
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 315
    invoke-static {p5}, Lcom/tencent/matrix/resource/hproflib/model/Type;->getType(I)Lcom/tencent/matrix/resource/hproflib/model/Type;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p2}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$100(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/matrix/resource/hproflib/model/Type;->getSize(I)I

    move-result p1

    mul-int/2addr p4, p1

    .line 316
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p6, p2, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 318
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpThreadBlock(Lcom/tencent/matrix/resource/hproflib/model/ID;I)V
    .locals 2

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 225
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 226
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 228
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpThreadObject(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V
    .locals 2

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 236
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 237
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 238
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 240
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
