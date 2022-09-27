.class public Lcom/google/android/filament/MorphTargetBuffer;
.super Ljava/lang/Object;
.source "MorphTargetBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/MorphTargetBuffer$Builder;
    }
.end annotation


# instance fields
.field private mNativeObject:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/google/android/filament/MorphTargetBuffer;->mNativeObject:J

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/filament/MorphTargetBuffer$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/MorphTargetBuffer;-><init>(J)V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 26
    invoke-static {}, Lcom/google/android/filament/MorphTargetBuffer;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(JI)V
    .locals 0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/MorphTargetBuffer;->nBuilderVertexCount(JI)V

    return-void
.end method

.method static synthetic access$200(JI)V
    .locals 0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/MorphTargetBuffer;->nBuilderCount(JI)V

    return-void
.end method

.method static synthetic access$300(JJ)J
    .locals 0

    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/MorphTargetBuffer;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(J)V
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcom/google/android/filament/MorphTargetBuffer;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderCount(JI)V
.end method

.method private static native nBuilderVertexCount(JI)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetCount(J)I
.end method

.method private static native nGetVertexCount(J)I
.end method

.method private static native nSetPositionsAt(JJI[FI)I
.end method

.method private static native nSetTangentsAt(JJI[SI)I
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 164
    iput-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->mNativeObject:J

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/MorphTargetBuffer;->nGetCount(J)I

    move-result v0

    return v0
.end method

.method public getNativeObject()J
    .locals 4

    .line 157
    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed MorphTargetBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVertexCount()I
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/MorphTargetBuffer;->nGetVertexCount(J)I

    move-result v0

    return v0
.end method

.method public setPositionsAt(Lcom/google/android/filament/Engine;I[FI)V
    .locals 7

    .line 117
    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->mNativeObject:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MorphTargetBuffer;->nSetPositionsAt(JJI[FI)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public setTangentsAt(Lcom/google/android/filament/Engine;I[SI)V
    .locals 7

    .line 135
    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->mNativeObject:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MorphTargetBuffer;->nSetTangentsAt(JJI[SI)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 138
    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method
