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

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {p1}, Lcom/google/android/filament/RenderableManager;->access$000(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    .line 126
    new-instance p1, Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/filament/RenderableManager$Builder;->mFinalizer:Lcom/google/android/filament/RenderableManager$Builder$BuilderFinalizer;

    return-void
.end method


# virtual methods
.method public blendOrder(II)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 202
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->access$500(JII)V

    return-object p0
.end method

.method public boundingBox(Lcom/google/android/filament/Box;)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 10

    .line 215
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    .line 216
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

    .line 217
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

    .line 215
    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/RenderableManager;->access$600(JFFFFFF)V

    return-object p0
.end method

.method public build(Lcom/google/android/filament/Engine;I)V
    .locals 4
    .param p2    # I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param

    .line 438
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/android/filament/RenderableManager;->access$1900(JJI)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 439
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t create Renderable component for entity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", see log."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public castShadows(Z)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 300
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$1100(JZ)V

    return-object p0
.end method

.method public culling(Z)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 271
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$900(JZ)V

    return-object p0
.end method

.method public enableSkinningBuffers(Z)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 334
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$1400(JZ)V

    return-object p0
.end method

.method public geometry(ILcom/google/android/filament/RenderableManager$PrimitiveType;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 8

    .line 173
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-virtual {p2}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->getValue()I

    move-result v3

    .line 174
    invoke-virtual {p3}, Lcom/google/android/filament/VertexBuffer;->getNativeObject()J

    move-result-wide v4

    invoke-virtual {p4}, Lcom/google/android/filament/IndexBuffer;->getNativeObject()J

    move-result-wide v6

    move v2, p1

    .line 173
    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/RenderableManager;->access$300(JIIJJ)V

    return-object p0
.end method

.method public geometry(ILcom/google/android/filament/RenderableManager$PrimitiveType;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;II)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 11

    move-object v0, p0

    .line 162
    iget-wide v1, v0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-virtual {p2}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->getValue()I

    move-result v4

    invoke-virtual {p3}, Lcom/google/android/filament/VertexBuffer;->getNativeObject()J

    move-result-wide v5

    .line 163
    invoke-virtual {p4}, Lcom/google/android/filament/IndexBuffer;->getNativeObject()J

    move-result-wide v7

    move v3, p1

    move/from16 v9, p5

    move/from16 v10, p6

    .line 162
    invoke-static/range {v1 .. v10}, Lcom/google/android/filament/RenderableManager;->access$200(JIIJJII)V

    return-object v0
.end method

.method public geometry(ILcom/google/android/filament/RenderableManager$PrimitiveType;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;IIII)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 13

    move-object v0, p0

    .line 150
    iget-wide v1, v0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-virtual {p2}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->getValue()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/filament/VertexBuffer;->getNativeObject()J

    move-result-wide v5

    .line 151
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/filament/IndexBuffer;->getNativeObject()J

    move-result-wide v7

    move v3, p1

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    .line 150
    invoke-static/range {v1 .. v12}, Lcom/google/android/filament/RenderableManager;->access$100(JIIJJIIII)V

    return-object v0
.end method

.method public layerMask(II)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p2, 0xff

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->access$700(JII)V

    return-object p0
.end method

.method public lightChannel(IZ)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 283
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->access$1000(JIZ)V

    return-object p0
.end method

.method public material(ILcom/google/android/filament/MaterialInstance;)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 4

    .line 189
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-virtual {p2}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/filament/RenderableManager;->access$400(JIJ)V

    return-object p0
.end method

.method public morphing(I)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 424
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$1800(JI)V

    return-object p0
.end method

.method public priority(I)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$800(JI)V

    return-object p0
.end method

.method public receiveShadows(Z)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 309
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$1200(JZ)V

    return-object p0
.end method

.method public screenSpaceContactShadows(Z)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 320
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$1300(JZ)V

    return-object p0
.end method

.method public skinning(I)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 2

    .line 370
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->access$1600(JI)V

    return-object p0
.end method

.method public skinning(ILjava/nio/Buffer;)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 3

    .line 395
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/android/filament/RenderableManager;->access$1700(JILjava/nio/Buffer;I)I

    move-result p1

    if-ltz p1, :cond_0

    return-object p0

    .line 397
    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public skinning(Lcom/google/android/filament/SkinningBuffer;II)Lcom/google/android/filament/RenderableManager$Builder;
    .locals 6

    .line 363
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$Builder;->mNativeBuilder:J

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p1}, Lcom/google/android/filament/SkinningBuffer;->getNativeObject()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    move v4, p2

    move v5, p3

    .line 363
    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/RenderableManager;->access$1500(JJII)V

    return-object p0
.end method
