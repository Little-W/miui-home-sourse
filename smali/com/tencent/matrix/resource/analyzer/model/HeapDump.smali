.class public Lcom/tencent/matrix/resource/analyzer/model/HeapDump;
.super Ljava/lang/Object;
.source "HeapDump.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mActivityName:Ljava/lang/String;

.field private final mHprofFile:Ljava/io/File;

.field private final mRefKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "hprofFile"

    .line 39
    invoke-static {p1, v0}, Lcom/tencent/matrix/resource/common/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/tencent/matrix/resource/analyzer/model/HeapDump;->mHprofFile:Ljava/io/File;

    const-string p1, "refKey"

    .line 40
    invoke-static {p2, p1}, Lcom/tencent/matrix/resource/common/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/matrix/resource/analyzer/model/HeapDump;->mRefKey:Ljava/lang/String;

    const-string p1, "activityName"

    .line 41
    invoke-static {p3, p1}, Lcom/tencent/matrix/resource/common/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/matrix/resource/analyzer/model/HeapDump;->mActivityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tencent/matrix/resource/analyzer/model/HeapDump;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getHprofFile()Ljava/io/File;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tencent/matrix/resource/analyzer/model/HeapDump;->mHprofFile:Ljava/io/File;

    return-object v0
.end method

.method public getReferenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tencent/matrix/resource/analyzer/model/HeapDump;->mRefKey:Ljava/lang/String;

    return-object v0
.end method
