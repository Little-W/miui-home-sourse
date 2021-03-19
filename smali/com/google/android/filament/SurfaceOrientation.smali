.class public Lcom/google/android/filament/SurfaceOrientation;
.super Ljava/lang/Object;
.source "SurfaceOrientation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/SurfaceOrientation$Builder;
    }
.end annotation


# instance fields
.field private mNativeObject:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/google/android/filament/SurfaceOrientation;->mNativeObject:J

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/filament/SurfaceOrientation$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/SurfaceOrientation;-><init>(J)V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 27
    invoke-static {}, Lcom/google/android/filament/SurfaceOrientation;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(JI)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderVertexCount(JI)V

    return-void
.end method

.method static synthetic access$1000(J)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/google/android/filament/SurfaceOrientation;->nDestroyBuilder(J)V

    return-void
.end method

.method static synthetic access$200(JI)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderTriangleCount(JI)V

    return-void
.end method

.method static synthetic access$300(JLjava/nio/Buffer;II)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderNormals(JLjava/nio/Buffer;II)V

    return-void
.end method

.method static synthetic access$400(JLjava/nio/Buffer;II)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderTangents(JLjava/nio/Buffer;II)V

    return-void
.end method

.method static synthetic access$500(JLjava/nio/Buffer;II)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderUVs(JLjava/nio/Buffer;II)V

    return-void
.end method

.method static synthetic access$600(JLjava/nio/Buffer;II)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderPositions(JLjava/nio/Buffer;II)V

    return-void
.end method

.method static synthetic access$700(JLjava/nio/Buffer;I)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderTriangles16(JLjava/nio/Buffer;I)V

    return-void
.end method

.method static synthetic access$800(JLjava/nio/Buffer;I)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderTriangles32(JLjava/nio/Buffer;I)V

    return-void
.end method

.method static synthetic access$900(J)J
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderBuild(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static native nBuilderBuild(J)J
.end method

.method private static native nBuilderNormals(JLjava/nio/Buffer;II)V
.end method

.method private static native nBuilderPositions(JLjava/nio/Buffer;II)V
.end method

.method private static native nBuilderTangents(JLjava/nio/Buffer;II)V
.end method

.method private static native nBuilderTriangleCount(JI)V
.end method

.method private static native nBuilderTriangles16(JLjava/nio/Buffer;I)V
.end method

.method private static native nBuilderTriangles32(JLjava/nio/Buffer;I)V
.end method

.method private static native nBuilderUVs(JLjava/nio/Buffer;II)V
.end method

.method private static native nBuilderVertexCount(JI)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroy(J)V
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetQuatsAsFloat(JLjava/nio/Buffer;I)V
.end method

.method private static native nGetQuatsAsHalf(JLjava/nio/Buffer;I)V
.end method

.method private static native nGetQuatsAsShort(JLjava/nio/Buffer;I)V
.end method

.method private static native nGetVertexCount(J)I
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/SurfaceOrientation;->nDestroy(J)V

    const-wide/16 v0, 0x0

    .line 204
    iput-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->mNativeObject:J

    return-void
.end method

.method public getNativeObject()J
    .locals 4

    .line 176
    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed SurfaceOrientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQuatsAsFloat(Ljava/nio/Buffer;)V
    .locals 3

    .line 189
    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->mNativeObject:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/SurfaceOrientation;->nGetQuatsAsFloat(JLjava/nio/Buffer;I)V

    return-void
.end method

.method public getQuatsAsHalf(Ljava/nio/Buffer;)V
    .locals 3

    .line 194
    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->mNativeObject:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/SurfaceOrientation;->nGetQuatsAsHalf(JLjava/nio/Buffer;I)V

    return-void
.end method

.method public getQuatsAsShort(Ljava/nio/Buffer;)V
    .locals 3

    .line 199
    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->mNativeObject:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/SurfaceOrientation;->nGetQuatsAsShort(JLjava/nio/Buffer;I)V

    return-void
.end method

.method public getVertexCount()I
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/SurfaceOrientation;->nGetVertexCount(J)I

    move-result v0

    return v0
.end method
