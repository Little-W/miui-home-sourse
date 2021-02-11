.class public Lcom/tencent/matrix/resource/hproflib/HprofWriter;
.super Lcom/tencent/matrix/resource/hproflib/HprofVisitor;
.source "HprofWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;
    }
.end annotation


# instance fields
.field private final mHeapDumpOut:Ljava/io/ByteArrayOutputStream;

.field private mIdSize:I

.field private final mStreamOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mIdSize:I

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mHeapDumpOut:Ljava/io/ByteArrayOutputStream;

    .line 40
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/ByteArrayOutputStream;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mHeapDumpOut:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mIdSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/tencent/matrix/resource/hproflib/HprofWriter;)Ljava/io/OutputStream;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    return-object p0
.end method


# virtual methods
.method public visitEnd()V
    .locals 2

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visitHeader(Ljava/lang/String;IJ)V
    .locals 1

    if-lez p2, :cond_0

    const v0, 0x3fffffff    # 1.9999999f

    if-ge p2, v0, :cond_0

    .line 49
    :try_start_0
    iput p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mIdSize:I

    .line 50
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {v0, p1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeNullTerminatedString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 52
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {p1, p3, p4}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBELong(Ljava/io/OutputStream;J)V

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bad idSize: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;

    move-result-object p1

    return-object p1
.end method

.method public visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;
    .locals 7

    .line 123
    :try_start_0
    new-instance v6, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/matrix/resource/hproflib/HprofWriter$HprofHeapDumpWriter;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofWriter;IIJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p1

    .line 125
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitLoadClassRecord(ILcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;IJ)V
    .locals 2

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 75
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {v0, p5}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 76
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    long-to-int p6, p6

    invoke-static {p5, p6}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 77
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {p5, p1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 78
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {p2}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 79
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {p1, p3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 80
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {p4}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 82
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitStackFrameRecord(Lcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;IIIJ)V
    .locals 2

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 90
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {v0, p7}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 91
    iget-object p7, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    long-to-int p8, p8

    invoke-static {p7, p8}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 92
    iget-object p7, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/io/OutputStream;->write([B)V

    .line 93
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {p2}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 94
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {p3}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 95
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {p4}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 96
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {p1, p5}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 97
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {p1, p6}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 99
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitStackTraceRecord(II[Lcom/tencent/matrix/resource/hproflib/model/ID;IJ)V
    .locals 2

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 107
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {v0, p4}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 108
    iget-object p4, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    long-to-int p5, p5

    invoke-static {p4, p5}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 109
    iget-object p4, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {p4, p1}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 110
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 111
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    array-length p2, p3

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 112
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p4, p3, p2

    .line 113
    iget-object p5, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {p4}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 116
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitStringRecord(Lcom/tencent/matrix/resource/hproflib/model/ID;Ljava/lang/String;IJ)V
    .locals 2

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 62
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {v0, p3}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 63
    iget-object p3, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    long-to-int p4, p4

    invoke-static {p3, p4}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 64
    iget-object p3, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 65
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public visitUnconcernedRecord(IIJ[B)V
    .locals 1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 133
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 134
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    long-to-int p2, p3

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/utils/IOUtil;->writeBEInt(Ljava/io/OutputStream;I)V

    .line 135
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofWriter;->mStreamOut:Ljava/io/OutputStream;

    const/4 p3, 0x0

    invoke-virtual {p1, p5, p3, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 137
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
