.class public Lcom/google/android/filament/SkinningBuffer;
.super Ljava/lang/Object;
.source "SkinningBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/SkinningBuffer$Builder;
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
    iput-wide p1, p0, Lcom/google/android/filament/SkinningBuffer;->mNativeObject:J

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/filament/SkinningBuffer$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/SkinningBuffer;-><init>(J)V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 26
    invoke-static {}, Lcom/google/android/filament/SkinningBuffer;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(JI)V
    .locals 0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/SkinningBuffer;->nBuilderBoneCount(JI)V

    return-void
.end method

.method static synthetic access$200(JZ)V
    .locals 0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/SkinningBuffer;->nBuilderInitialize(JZ)V

    return-void
.end method

.method static synthetic access$300(JJ)J
    .locals 0

    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/SkinningBuffer;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(J)V
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcom/google/android/filament/SkinningBuffer;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBoneCount(JI)V
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderInitialize(JZ)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetBoneCount(J)I
.end method

.method private static native nSetBonesAsMatrices(JJLjava/nio/Buffer;III)I
.end method

.method private static native nSetBonesAsQuaternions(JJLjava/nio/Buffer;III)I
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 165
    iput-wide v0, p0, Lcom/google/android/filament/SkinningBuffer;->mNativeObject:J

    return-void
.end method

.method public getBoneCount()I
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/google/android/filament/SkinningBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/SkinningBuffer;->nGetBoneCount(J)I

    move-result v0

    return v0
.end method

.method public getNativeObject()J
    .locals 4

    .line 158
    iget-wide v0, p0, Lcom/google/android/filament/SkinningBuffer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed IndexBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBonesAsMatrices(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;II)V
    .locals 8

    .line 123
    iget-wide v0, p0, Lcom/google/android/filament/SkinningBuffer;->mNativeObject:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    .line 124
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    move-object v4, p2

    move v6, p3

    move v7, p4

    .line 123
    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/SkinningBuffer;->nSetBonesAsMatrices(JJLjava/nio/Buffer;III)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public setBonesAsQuaternions(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;II)V
    .locals 8

    .line 143
    iget-wide v0, p0, Lcom/google/android/filament/SkinningBuffer;->mNativeObject:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    .line 144
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    move-object v4, p2

    move v6, p3

    move v7, p4

    .line 143
    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/SkinningBuffer;->nSetBonesAsQuaternions(JJLjava/nio/Buffer;III)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method
