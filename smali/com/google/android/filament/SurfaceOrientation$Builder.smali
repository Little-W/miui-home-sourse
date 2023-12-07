.class public Lcom/google/android/filament/SurfaceOrientation$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/SurfaceOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mNormals:Ljava/nio/Buffer;

.field private mNormalsStride:I

.field private mPositions:Ljava/nio/Buffer;

.field private mPositionsStride:I

.field private mTangents:Ljava/nio/Buffer;

.field private mTangentsStride:I

.field private mTexCoords:Ljava/nio/Buffer;

.field private mTexCoordsStride:I

.field private mTriangleCount:I

.field private mTrianglesUint16:Ljava/nio/Buffer;

.field private mTrianglesUint32:Ljava/nio/Buffer;

.field private mVertexCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/filament/SurfaceOrientation;
    .locals 5

    invoke-static {}, Lcom/google/android/filament/SurfaceOrientation;->access$000()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mVertexCount:I

    invoke-static {v0, v1, v2}, Lcom/google/android/filament/SurfaceOrientation;->access$100(JI)V

    iget v2, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTriangleCount:I

    invoke-static {v0, v1, v2}, Lcom/google/android/filament/SurfaceOrientation;->access$200(JI)V

    iget-object v2, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mNormals:Ljava/nio/Buffer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget v4, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mNormalsStride:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/filament/SurfaceOrientation;->access$300(JLjava/nio/Buffer;II)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTangents:Ljava/nio/Buffer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget v4, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTangentsStride:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/filament/SurfaceOrientation;->access$400(JLjava/nio/Buffer;II)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTexCoords:Ljava/nio/Buffer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget v4, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTexCoordsStride:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/filament/SurfaceOrientation;->access$500(JLjava/nio/Buffer;II)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mPositions:Ljava/nio/Buffer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget v4, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mPositionsStride:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/filament/SurfaceOrientation;->access$600(JLjava/nio/Buffer;II)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTrianglesUint16:Ljava/nio/Buffer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/SurfaceOrientation;->access$700(JLjava/nio/Buffer;I)V

    :cond_4
    iget-object p0, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTrianglesUint32:Ljava/nio/Buffer;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/google/android/filament/SurfaceOrientation;->access$800(JLjava/nio/Buffer;I)V

    :cond_5
    invoke-static {v0, v1}, Lcom/google/android/filament/SurfaceOrientation;->access$900(J)J

    move-result-wide v2

    invoke-static {v0, v1}, Lcom/google/android/filament/SurfaceOrientation;->access$1000(J)V

    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/google/android/filament/SurfaceOrientation;

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/filament/SurfaceOrientation;-><init>(JLcom/google/android/filament/SurfaceOrientation$1;)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not create SurfaceOrientation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public normals(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mNormals:Ljava/nio/Buffer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mNormalsStride:I

    return-object p0
.end method

.method public positions(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mPositions:Ljava/nio/Buffer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mPositionsStride:I

    return-object p0
.end method

.method public tangents(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTangents:Ljava/nio/Buffer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTangentsStride:I

    return-object p0
.end method

.method public triangleCount(I)Lcom/google/android/filament/SurfaceOrientation$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTriangleCount:I

    return-object p0
.end method

.method public triangles_uint16(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTrianglesUint16:Ljava/nio/Buffer;

    return-object p0
.end method

.method public triangles_uint32(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTrianglesUint32:Ljava/nio/Buffer;

    return-object p0
.end method

.method public uvs(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTexCoords:Ljava/nio/Buffer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mTexCoordsStride:I

    return-object p0
.end method

.method public vertexCount(I)Lcom/google/android/filament/SurfaceOrientation$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$Builder;->mVertexCount:I

    return-object p0
.end method
