.class public Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;
.super Ljava/lang/Object;
.source "HprofBufferShrinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;,
        Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;,
        Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;
    }
.end annotation


# instance fields
.field private mBitmapClassNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

.field private final mBmpBufferIdToDeduplicatedIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/matrix/resource/hproflib/model/ID;",
            "Lcom/tencent/matrix/resource/hproflib/model/ID;",
            ">;"
        }
    .end annotation
.end field

.field private final mBmpBufferIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/matrix/resource/hproflib/model/ID;",
            ">;"
        }
    .end annotation
.end field

.field private mBmpClassId:Lcom/tencent/matrix/resource/hproflib/model/ID;

.field private mBmpClassInstanceFields:[Lcom/tencent/matrix/resource/hproflib/model/Field;

.field private final mBufferIdToElementDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/matrix/resource/hproflib/model/ID;",
            "[B>;"
        }
    .end annotation
.end field

.field private mIdSize:I

.field private mMBufferFieldNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

.field private mMRecycledFieldNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

.field private mNullBufferId:Lcom/tencent/matrix/resource/hproflib/model/ID;

.field private mStringClassId:Lcom/tencent/matrix/resource/hproflib/model/ID;

.field private mStringClassInstanceFields:[Lcom/tencent/matrix/resource/hproflib/model/Field;

.field private mStringClassNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

.field private final mStringValueIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/matrix/resource/hproflib/model/ID;",
            ">;"
        }
    .end annotation
.end field

.field private mValueFieldNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBmpBufferIds:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBufferIdToElementDataMap:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBmpBufferIdToDeduplicatedIdMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mStringValueIds:Ljava/util/Set;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBitmapClassNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    .line 63
    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBmpClassId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    .line 64
    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mMBufferFieldNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    .line 65
    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mMRecycledFieldNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    .line 67
    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mStringClassNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    .line 68
    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mStringClassId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    .line 69
    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mValueFieldNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mIdSize:I

    .line 72
    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mNullBufferId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    .line 73
    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBmpClassInstanceFields:[Lcom/tencent/matrix/resource/hproflib/model/Field;

    .line 74
    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mStringClassInstanceFields:[Lcom/tencent/matrix/resource/hproflib/model/Field;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mIdSize:I

    return p0
.end method

.method static synthetic access$002(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mIdSize:I

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mNullBufferId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)[Lcom/tencent/matrix/resource/hproflib/model/Field;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mStringClassInstanceFields:[Lcom/tencent/matrix/resource/hproflib/model/Field;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;[Lcom/tencent/matrix/resource/hproflib/model/Field;)[Lcom/tencent/matrix/resource/hproflib/model/Field;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mStringClassInstanceFields:[Lcom/tencent/matrix/resource/hproflib/model/Field;

    return-object p1
.end method

.method static synthetic access$102(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mNullBufferId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Set;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBmpBufferIds:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Set;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mStringValueIds:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Map;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBufferIdToElementDataMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Map;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBmpBufferIdToDeduplicatedIdMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBitmapClassNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBitmapClassNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mMBufferFieldNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mMBufferFieldNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mMRecycledFieldNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p0
.end method

.method static synthetic access$402(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mMRecycledFieldNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mStringClassNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mStringClassNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mValueFieldNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p0
.end method

.method static synthetic access$602(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mValueFieldNameStringId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBmpClassId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p0
.end method

.method static synthetic access$702(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBmpClassId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p1
.end method

.method static synthetic access$800(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mStringClassId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p0
.end method

.method static synthetic access$802(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mStringClassId:Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)[Lcom/tencent/matrix/resource/hproflib/model/Field;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBmpClassInstanceFields:[Lcom/tencent/matrix/resource/hproflib/model/Field;

    return-object p0
.end method

.method static synthetic access$902(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;[Lcom/tencent/matrix/resource/hproflib/model/Field;)[Lcom/tencent/matrix/resource/hproflib/model/Field;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->mBmpClassInstanceFields:[Lcom/tencent/matrix/resource/hproflib/model/Field;

    return-object p1
.end method


# virtual methods
.method public shrink(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 169
    :try_start_1
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :try_start_2
    new-instance p2, Lcom/tencent/matrix/resource/hproflib/HprofReader;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Lcom/tencent/matrix/resource/hproflib/HprofReader;-><init>(Ljava/io/InputStream;)V

    .line 171
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;

    invoke-direct {v0, p0}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)V

    invoke-virtual {p2, v0}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->accept(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    .line 173
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 174
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;

    invoke-direct {v0, p0}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)V

    invoke-virtual {p2, v0}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->accept(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    .line 176
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 177
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;

    new-instance v2, Lcom/tencent/matrix/resource/hproflib/HprofWriter;

    invoke-direct {v2, p1}, Lcom/tencent/matrix/resource/hproflib/HprofWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, p0, v2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/HprofWriter;)V

    invoke-virtual {p2, v0}, Lcom/tencent/matrix/resource/hproflib/HprofReader;->accept(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 188
    :catch_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    :goto_0
    if-eqz p1, :cond_0

    .line 181
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_0
    if-eqz v1, :cond_1

    .line 188
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 193
    :catch_3
    :cond_1
    throw p2
.end method
