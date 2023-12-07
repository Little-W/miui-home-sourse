.class Lcom/google/firebase/crashlytics/internal/common/CLSUUID;
.super Ljava/lang/Object;


# static fields
.field private static _clsId:Ljava/lang/String;

.field private static final _sequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->_sequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/IdManager;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->populateTime([B)V

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->populateSequenceNumber([B)V

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->populatePID([B)V

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->getCrashlyticsInstallId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->hexify([B)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v4, 0x10

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const/16 v5, 0x14

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v1, v4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const-string p0, "%s%s%s%s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->_clsId:Ljava/lang/String;

    return-void
.end method

.method private static convertLongToFourByteBuffer(J)[B
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static convertLongToTwoByteBuffer(J)[B
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int p0, p0

    int-to-short p0, p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private populatePID([B)V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->shortValue()S

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->convertLongToTwoByteBuffer(J)[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x8

    aput-byte v0, p1, v1

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    const/16 v0, 0x9

    aput-byte p0, p1, v0

    return-void
.end method

.method private populateSequenceNumber([B)V
    .locals 2

    sget-object p0, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->_sequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->convertLongToTwoByteBuffer(J)[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x6

    aput-byte v0, p1, v1

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    const/4 v0, 0x7

    aput-byte p0, p1, v0

    return-void
.end method

.method private populateTime([B)V
    .locals 6

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    rem-long/2addr v0, v2

    invoke-static {v4, v5}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->convertLongToFourByteBuffer(J)[B

    move-result-object p0

    const/4 v2, 0x0

    aget-byte v3, p0, v2

    aput-byte v3, p1, v2

    const/4 v3, 0x1

    aget-byte v4, p0, v3

    aput-byte v4, p1, v3

    const/4 v4, 0x2

    aget-byte v5, p0, v4

    aput-byte v5, p1, v4

    const/4 v4, 0x3

    aget-byte p0, p0, v4

    aput-byte p0, p1, v4

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->convertLongToTwoByteBuffer(J)[B

    move-result-object p0

    aget-byte v0, p0, v2

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    aget-byte p0, p0, v3

    const/4 v0, 0x5

    aput-byte p0, p1, v0

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/google/firebase/crashlytics/internal/common/CLSUUID;->_clsId:Ljava/lang/String;

    return-object p0
.end method
