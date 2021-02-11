.class public Lcom/tencent/matrix/resource/hproflib/HprofReader;
.super Ljava/lang/Object;
.source "HprofReader.java"


# instance fields
.field private mIdSize:I

.field private final mStreamIn:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    .line 37
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    return-void
.end method

.method private acceptClassDump(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 283
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v2, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v1, v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v4

    .line 284
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v5

    .line 285
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v2, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v1, v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v6

    .line 286
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v2, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v1, v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v7

    .line 287
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v2, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    shl-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->skip(Ljava/io/InputStream;J)V

    .line 288
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v8

    .line 290
    iget v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    mul-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    .line 293
    iget-object v2, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEShort(Ljava/io/InputStream;)S

    move-result v2

    add-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    move v9, v1

    move v1, v3

    :goto_0
    if-ge v1, v2, :cond_0

    .line 296
    iget-object v10, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    const-wide/16 v11, 0x2

    invoke-static {v10, v11, v12}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->skip(Ljava/io/InputStream;J)V

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->skipValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEShort(Ljava/io/InputStream;)S

    move-result v1

    .line 302
    new-array v2, v1, [Lcom/tencent/matrix/resource/hproflib/model/Field;

    add-int/lit8 v9, v9, 0x2

    move v10, v9

    move v9, v3

    :goto_1
    if-ge v9, v1, :cond_2

    .line 305
    iget-object v11, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v12, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v11, v12}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v11

    .line 306
    iget-object v12, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 307
    invoke-static {v12}, Lcom/tencent/matrix/resource/hproflib/model/Type;->getType(I)Lcom/tencent/matrix/resource/hproflib/model/Type;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 311
    iget-object v14, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v15, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v14, v13, v15}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readValue(Ljava/io/InputStream;Lcom/tencent/matrix/resource/hproflib/model/Type;I)Ljava/lang/Object;

    move-result-object v14

    .line 312
    new-instance v15, Lcom/tencent/matrix/resource/hproflib/model/Field;

    invoke-direct {v15, v12, v11, v14}, Lcom/tencent/matrix/resource/hproflib/model/Field;-><init>(ILcom/tencent/matrix/resource/hproflib/model/ID;Ljava/lang/Object;)V

    aput-object v15, v2, v9

    .line 313
    iget v11, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v13, v11}, Lcom/tencent/matrix/resource/hproflib/model/Type;->getSize(I)I

    move-result v11

    add-int/2addr v12, v11

    add-int/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 309
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accept class failed, lost type def of typeId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_2
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEShort(Ljava/io/InputStream;)S

    move-result v1

    .line 318
    new-array v11, v1, [Lcom/tencent/matrix/resource/hproflib/model/Field;

    add-int/lit8 v10, v10, 0x2

    move v12, v10

    :goto_2
    if-ge v3, v1, :cond_3

    .line 321
    iget-object v9, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v10, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v9, v10}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v9

    .line 322
    iget-object v10, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 323
    new-instance v13, Lcom/tencent/matrix/resource/hproflib/model/Field;

    const/4 v14, 0x0

    invoke-direct {v13, v10, v9, v14}, Lcom/tencent/matrix/resource/hproflib/model/Field;-><init>(ILcom/tencent/matrix/resource/hproflib/model/ID;Ljava/lang/Object;)V

    aput-object v13, v11, v3

    .line 324
    iget v9, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v12, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v3, p1

    move-object v9, v2

    move-object v10, v11

    .line 327
    invoke-virtual/range {v3 .. v10}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpClass(Lcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;I[Lcom/tencent/matrix/resource/hproflib/model/Field;[Lcom/tencent/matrix/resource/hproflib/model/Field;)V

    return v12
.end method

.method private acceptHeader(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readNullTerminatedString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v1

    if-lez v1, :cond_0

    const v2, 0x3fffffff    # 1.9999999f

    if-ge v1, v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBELong(Ljava/io/InputStream;)J

    move-result-wide v2

    .line 53
    iput v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    .line 54
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitHeader(Ljava/lang/String;IJ)V

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad idSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private acceptHeapDumpInfo(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v0

    .line 239
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v1, v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v1

    .line 240
    invoke-virtual {p1, v0, v1}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpInfo(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 241
    iget p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private acceptHeapDumpRecord(IIJLcom/tencent/matrix/resource/hproflib/HprofVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {p1, p3, p4}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->skip(Ljava/io/InputStream;J)V

    return-void

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_3

    .line 141
    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    const-wide/16 v0, 0x1

    sub-long/2addr p3, v0

    const/16 p5, 0x90

    if-eq p2, p5, :cond_2

    const/16 p5, 0xc3

    if-eq p2, p5, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    .line 222
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "acceptHeapDumpRecord loop with unknown tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    .line 224
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes possibly remaining"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :pswitch_0
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {p5, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 146
    iget p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptHeapDumpInfo(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I

    move-result p2

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto :goto_0

    .line 215
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptJniMonitor(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I

    move-result p2

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto :goto_0

    .line 211
    :pswitch_3
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {p5, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 212
    iget p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto :goto_0

    .line 207
    :pswitch_4
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {p5, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 208
    iget p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 203
    :pswitch_5
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {p5, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 204
    iget p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 199
    :pswitch_6
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {p5, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 200
    iget p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 195
    :pswitch_7
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {p5, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 196
    iget p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 186
    :pswitch_8
    invoke-direct {p0, p2, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptPrimitiveArrayDump(ILcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I

    move-result p2

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 183
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptObjectArrayDump(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I

    move-result p2

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 180
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptInstanceDump(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I

    move-result p2

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 177
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptClassDump(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I

    move-result p2

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 174
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptThreadObject(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I

    move-result p2

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 170
    :pswitch_d
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {p5, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 171
    iget p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 167
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptThreadBlock(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I

    move-result p2

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 163
    :pswitch_f
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {p5, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 164
    iget p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 160
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptNativeStack(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I

    move-result p2

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 157
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptJavaFrame(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I

    move-result p2

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 154
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptJniLocal(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I

    move-result p2

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 149
    :pswitch_13
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {p5, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 150
    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    int-to-long v0, p5

    invoke-static {p2, v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->skip(Ljava/io/InputStream;J)V

    .line 151
    iget p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    shl-int/lit8 p2, p2, 0x1

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 189
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptPrimitiveArrayDump(ILcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I

    move-result p2

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 218
    :cond_2
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {p5, v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    .line 219
    iget p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    int-to-long v0, p2

    sub-long/2addr p3, v0

    goto/16 :goto_0

    .line 228
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitEnd()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x89
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private acceptInstanceDump(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v1

    .line 335
    iget-object v2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v3, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v2, v3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v2

    .line 336
    iget-object v3, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v3

    .line 337
    new-array v4, v3, [B

    .line 338
    iget-object v5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    int-to-long v6, v3

    const/4 v8, 0x0

    invoke-static {v5, v4, v8, v6, v7}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readFully(Ljava/io/InputStream;[BIJ)V

    .line 339
    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpInstance(Lcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;[B)V

    .line 340
    iget p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    add-int/lit8 v0, p1, 0x4

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v3

    return v0
.end method

.method private acceptJavaFrame(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v1

    .line 255
    iget-object v2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v2

    .line 256
    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpJavaFrame(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V

    .line 257
    iget p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private acceptJniLocal(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v1

    .line 247
    iget-object v2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v2

    .line 248
    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpJniLocal(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V

    .line 249
    iget p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private acceptJniMonitor(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v1

    .line 374
    iget-object v2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v2

    .line 375
    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpJniMonitor(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V

    .line 376
    iget p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private acceptLoadClassRecord(IJLcom/tencent/matrix/resource/hproflib/HprofVisitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v2

    .line 107
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v3

    .line 108
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v4

    .line 109
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v5

    move-object v1, p4

    move v6, p1

    move-wide v7, p2

    .line 110
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitLoadClassRecord(ILcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;IJ)V

    return-void
.end method

.method private acceptNativeStack(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v1

    .line 263
    invoke-virtual {p1, v0, v1}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpNativeStack(Lcom/tencent/matrix/resource/hproflib/model/ID;I)V

    .line 264
    iget p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private acceptObjectArrayDump(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v3

    .line 345
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v4

    .line 346
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v5

    .line 347
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v6

    .line 348
    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    mul-int/2addr v0, v5

    .line 349
    new-array v7, v0, [B

    .line 350
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    int-to-long v8, v0

    const/4 v2, 0x0

    invoke-static {v1, v7, v2, v8, v9}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readFully(Ljava/io/InputStream;[BIJ)V

    move-object v2, p1

    .line 351
    invoke-virtual/range {v2 .. v7}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpObjectArray(Lcom/tencent/matrix/resource/hproflib/model/ID;IILcom/tencent/matrix/resource/hproflib/model/ID;[B)V

    .line 352
    iget p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    add-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    return v1
.end method

.method private acceptPrimitiveArrayDump(ILcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v4

    .line 357
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v5

    .line 358
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v6

    .line 359
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 360
    invoke-static {v7}, Lcom/tencent/matrix/resource/hproflib/model/Type;->getType(I)Lcom/tencent/matrix/resource/hproflib/model/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-virtual {v0, v1}, Lcom/tencent/matrix/resource/hproflib/model/Type;->getSize(I)I

    move-result v0

    mul-int/2addr v0, v6

    .line 365
    new-array v8, v0, [B

    .line 366
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    const/4 v2, 0x0

    int-to-long v9, v0

    invoke-static {v1, v8, v2, v9, v10}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readFully(Ljava/io/InputStream;[BIJ)V

    move-object v2, p2

    move v3, p1

    .line 367
    invoke-virtual/range {v2 .. v8}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpPrimitiveArray(ILcom/tencent/matrix/resource/hproflib/model/ID;III[B)V

    .line 368
    iget p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v0

    return p1

    .line 362
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accept primitive array failed, lost type def of typeId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private acceptRecord(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 61
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v3

    .line 62
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v0

    sparse-switch v2, :sswitch_data_0

    move-object v1, p0

    move-object v6, p1

    .line 90
    invoke-direct/range {v1 .. v6}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptUnconcernedRecord(IIJLcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    goto :goto_0

    :sswitch_0
    move-object v1, p0

    move-object v6, p1

    .line 78
    invoke-direct/range {v1 .. v6}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptHeapDumpRecord(IIJLcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    goto :goto_0

    .line 74
    :sswitch_1
    invoke-direct {p0, v3, v4, v5, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptStackTraceRecord(IJLcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    goto :goto_0

    .line 71
    :sswitch_2
    invoke-direct {p0, v3, v4, v5, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptStackFrameRecord(IJLcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    goto :goto_0

    .line 68
    :sswitch_3
    invoke-direct {p0, v3, v4, v5, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptLoadClassRecord(IJLcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    goto :goto_0

    .line 65
    :sswitch_4
    invoke-direct {p0, v3, v4, v5, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptStringRecord(IJLcom/tencent/matrix/resource/hproflib/HprofVisitor;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0xc -> :sswitch_0
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method private acceptStackFrameRecord(IJLcom/tencent/matrix/resource/hproflib/HprofVisitor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 114
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v2, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v1, v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v4

    .line 115
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v2, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v1, v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v5

    .line 116
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v2, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v1, v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v6

    .line 117
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v2, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v1, v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v7

    .line 118
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v8

    .line 119
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v9

    move-object/from16 v3, p4

    move v10, p1

    move-wide v11, p2

    .line 120
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitStackFrameRecord(Lcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;IIIJ)V

    return-void
.end method

.method private acceptStackTraceRecord(IJLcom/tencent/matrix/resource/hproflib/HprofVisitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v2

    .line 125
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v3

    .line 126
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v0

    .line 127
    new-array v4, v0, [Lcom/tencent/matrix/resource/hproflib/model/ID;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 129
    iget-object v5, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v6, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v5, v6}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p4

    move v5, p1

    move-wide v6, p2

    .line 131
    invoke-virtual/range {v1 .. v7}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitStackTraceRecord(II[Lcom/tencent/matrix/resource/hproflib/model/ID;IJ)V

    return-void
.end method

.method private acceptStringRecord(IJLcom/tencent/matrix/resource/hproflib/HprofVisitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v3

    .line 101
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-static {v0, v1, v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readString(Ljava/io/InputStream;J)Ljava/lang/String;

    move-result-object v4

    move-object v2, p4

    move v5, p1

    move-wide v6, p2

    .line 102
    invoke-virtual/range {v2 .. v7}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitStringRecord(Lcom/tencent/matrix/resource/hproflib/model/ID;Ljava/lang/String;IJ)V

    return-void
.end method

.method private acceptThreadBlock(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v1

    .line 270
    invoke-virtual {p1, v0, v1}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpThreadBlock(Lcom/tencent/matrix/resource/hproflib/model/ID;I)V

    .line 271
    iget p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private acceptThreadObject(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    iget v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-static {v0, v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readID(Ljava/io/InputStream;I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v1

    .line 277
    iget-object v2, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readBEInt(Ljava/io/InputStream;)I

    move-result v2

    .line 278
    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpThreadObject(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V

    .line 279
    iget p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private acceptUnconcernedRecord(IIJLcom/tencent/matrix/resource/hproflib/HprofVisitor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p3

    .line 232
    new-array v6, v0, [B

    .line 233
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-static {v0, v6, v1, p3, p4}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->readFully(Ljava/io/InputStream;[BIJ)V

    move-object v1, p5

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .line 234
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitUnconcernedRecord(IIJ[B)V

    return-void
.end method

.method private skipValue()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 381
    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/model/Type;->getType(I)Lcom/tencent/matrix/resource/hproflib/model/Type;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 385
    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mIdSize:I

    invoke-virtual {v1, v0}, Lcom/tencent/matrix/resource/hproflib/model/Type;->getSize(I)I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofReader;->mStreamIn:Ljava/io/InputStream;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->skip(Ljava/io/InputStream;J)V

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 383
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure to skip type, cannot find type def of typeid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public accept(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptHeader(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->acceptRecord(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    .line 43
    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitEnd()V

    return-void
.end method
