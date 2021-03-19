.class Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;
.super Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
.source "HprofBufferShrinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    invoke-direct {p0, p2}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)V

    return-void
.end method


# virtual methods
.method public visitHeapDumpInstance(Lcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;[B)V
    .locals 6

    .line 260
    :try_start_0
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$700(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$700(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 263
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 264
    iget-object p3, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object p3, p3, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p3}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$900(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)[Lcom/tencent/matrix/resource/hproflib/model/Field;

    move-result-object p3

    array-length p4, p3

    move-object v1, v0

    move-object v2, v1

    move v0, p2

    :goto_0
    if-ge v0, p4, :cond_4

    aget-object v3, p3, v0

    .line 265
    iget-object v4, v3, Lcom/tencent/matrix/resource/hproflib/model/Field;->nameId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    .line 266
    iget v5, v3, Lcom/tencent/matrix/resource/hproflib/model/Field;->typeId:I

    invoke-static {v5}, Lcom/tencent/matrix/resource/hproflib/model/Type;->getType(I)Lcom/tencent/matrix/resource/hproflib/model/Type;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 270
    iget-object v3, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object v3, v3, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v3}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$300(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object v1, v1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)I

    move-result v1

    invoke-static {p1, v5, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readValue(Ljava/io/InputStream;Lcom/tencent/matrix/resource/hproflib/model/Type;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/matrix/resource/hproflib/model/ID;

    goto :goto_1

    .line 272
    :cond_0
    iget-object v3, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object v3, v3, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v3}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$400(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    iget-object v2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object v2, v2, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)I

    move-result v2

    invoke-static {p1, v5, v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readValue(Ljava/io/InputStream;Lcom/tencent/matrix/resource/hproflib/model/Type;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_4

    .line 275
    :cond_2
    iget-object v3, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object v3, v3, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v3}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)I

    move-result v3

    invoke-static {p1, v5, v3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->skipValue(Ljava/io/InputStream;Lcom/tencent/matrix/resource/hproflib/model/Type;I)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "visit bmp instance failed, lost type def of typeId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v3, Lcom/tencent/matrix/resource/hproflib/model/Field;->typeId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_4
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V

    if-eqz v2, :cond_5

    .line 281
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const/4 p2, 0x1

    :cond_6
    if-eqz v1, :cond_b

    if-eqz p2, :cond_b

    .line 282
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$100(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 283
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1100(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 285
    :cond_7
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$800(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$800(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 287
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 288
    iget-object p3, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object p3, p3, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p3}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1000(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)[Lcom/tencent/matrix/resource/hproflib/model/Field;

    move-result-object p3

    array-length p4, p3

    :goto_2
    if-ge p2, p4, :cond_a

    aget-object v1, p3, p2

    .line 289
    iget-object v2, v1, Lcom/tencent/matrix/resource/hproflib/model/Field;->nameId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    .line 290
    iget v3, v1, Lcom/tencent/matrix/resource/hproflib/model/Field;->typeId:I

    invoke-static {v3}, Lcom/tencent/matrix/resource/hproflib/model/Type;->getType(I)Lcom/tencent/matrix/resource/hproflib/model/Type;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 294
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object v1, v1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$600(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 295
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object v0, v0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)I

    move-result v0

    invoke-static {p1, v3, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readValue(Ljava/io/InputStream;Lcom/tencent/matrix/resource/hproflib/model/Type;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/matrix/resource/hproflib/model/ID;

    goto :goto_3

    :cond_8
    if-nez v0, :cond_a

    .line 297
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object v1, v1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$000(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)I

    move-result v1

    invoke-static {p1, v3, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->skipValue(Ljava/io/InputStream;Lcom/tencent/matrix/resource/hproflib/model/Type;I)I

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 292
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "visit string instance failed, lost type def of typeId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v1, Lcom/tencent/matrix/resource/hproflib/model/Field;->typeId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_a
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V

    if-eqz v0, :cond_b

    .line 303
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$100(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 304
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1200(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_4
    return-void

    :catch_0
    move-exception p1

    .line 308
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitHeapDumpPrimitiveArray(ILcom/tencent/matrix/resource/hproflib/model/ID;III[B)V
    .locals 0

    .line 314
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1300(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
