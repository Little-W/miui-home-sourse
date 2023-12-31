.class public Lcom/google/android/filament/RenderableManager$Builder;
.super Ljava/lang/Object;
.source "RenderableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/RenderableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;
    }
.end annotation


# instance fields
.field private final mFinalizer:Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;

.field private final mNativeBuilder:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1}, Lcom/google/android/filament/RenderableManager;->access$000(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    .line 120
    new-instance p1, Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/filament/RenderableManager$Builder;->mFinalizer:Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public blendOrder(II)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->access$500(JII)V

    return-object p0
.end method

.method public boundingBox(Lcom/google/android/filament/Box;)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 10

    .line 209
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    .line 210
    invoke-virtual {p1}, Lcom/google/android/filament/Box;->getCenter()[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->getCenter()[F

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->getCenter()[F

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    .line 211
    invoke-virtual {p1}, Lcom/google/android/filament/Box;->getHalfExtent()[F

    move-result-object v8

    aget v8, v8, v3

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->getHalfExtent()[F

    move-result-object v3

    aget v9, v3, v5

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->getHalfExtent()[F

    move-result-object p1

    aget v7, p1, v7

    move v3, v4

    move v4, v6

    move v5, v8

    move v6, v9

    .line 209
    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/RenderableManager;->access$600(JFFFFFF)V

    return-object p0
.end method

.method public build(Lcom/google/android/filament/Engine;I)V
    .locals 2

    .line 353
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->access$1600(JJI)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 354
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t create Renderable component for entity "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", see log."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public castShadows(Z)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 274
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$1000(JZ)V

    return-object p0
.end method

.method public culling(Z)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 265
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$900(JZ)V

    return-object p0
.end method

.method public geometry(ILcom/google/android/filament/RenderableManager$PrimitiveType;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 8

    .line 167
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-virtual {p2}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->getValue()I

    move-result v3

    .line 168
    invoke-virtual {p3}, Lcom/google/android/filament/VertexBuffer;->getNativeObject()J

    move-result-wide v4

    invoke-virtual {p4}, Lcom/google/android/filament/IndexBuffer;->getNativeObject()J

    move-result-wide v6

    move v2, p1

    .line 167
    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/RenderableManager;->access$300(JIIJJ)V

    return-object p0
.end method

.method public geometry(ILcom/google/android/filament/RenderableManager$PrimitiveType;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;II)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 11

    move-object v0, p0

    .line 156
    iget-wide v1, v0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-virtual {p2}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->getValue()I

    move-result v4

    invoke-virtual {p3}, Lcom/google/android/filament/VertexBuffer;->getNativeObject()J

    move-result-wide v5

    .line 157
    invoke-virtual {p4}, Lcom/google/android/filament/IndexBuffer;->getNativeObject()J

    move-result-wide v7

    move v3, p1

    move/from16 v9, p5

    move/from16 v10, p6

    .line 156
    invoke-static/range {v1 .. v10}, Lcom/google/android/filament/RenderableManager;->access$200(JIIJJII)V

    return-object v0
.end method

.method public geometry(ILcom/google/android/filament/RenderableManager$PrimitiveType;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;IIII)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 13

    move-object v0, p0

    .line 144
    iget-wide v1, v0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-virtual {p2}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->getValue()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/filament/VertexBuffer;->getNativeObject()J

    move-result-wide v5

    .line 145
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/filament/IndexBuffer;->getNativeObject()J

    move-result-wide v7

    move v3, p1

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    .line 144
    invoke-static/range {v1 .. v12}, Lcom/google/android/filament/RenderableManager;->access$100(JIIJJIIII)V

    return-object v0
.end method

.method public layerMask(II)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 232
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p2, 0xff

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->access$700(JII)V

    return-object p0
.end method

.method public material(ILcom/google/android/filament/MaterialInstance;)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 4

    .line 183
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-virtual {p2}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/filament/RenderableManager;->access$400(JIJ)V

    return-object p0
.end method

.method public morphing(Z)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 339
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$1500(JZ)V

    return-object p0
.end method

.method public priority(I)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 253
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$800(JI)V

    return-object p0
.end method

.method public receiveShadows(Z)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 283
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$1100(JZ)V

    return-object p0
.end method

.method public screenSpaceContactShadows(Z)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 294
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$1200(JZ)V

    return-object p0
.end method

.method public skinning(I)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 300
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$1300(JI)V

    return-object p0
.end method

.method public skinning(ILjava/nio/Buffer;)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 3

    .line 321
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/android/filament/RenderableManager;->access$1400(JILjava/nio/Buffer;I)I

    move-result p1

    if-ltz p1, :cond_0

    return-object p0

    .line 323
    :cond_0
    new-instance p0, Ljava/nio/BufferOverflowException;

    invoke-direct {p0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p0
.end method
