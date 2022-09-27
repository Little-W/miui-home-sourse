.class public final Lcom/miui/maml/elements/filament/MeshLoaderKt;
.super Ljava/lang/Object;
.source "MeshLoader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeshLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeshLoader.kt\ncom/miui/maml/elements/filament/MeshLoaderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,343:1\n1#2:344\n*E\n"
.end annotation


# static fields
.field private static final FILAMESH_FILE_IDENTIFIER:Ljava/lang/String; = "FILAMESH"

.field private static final HEADER_FLAG_COMPRESSED:J = 0x4L

.field private static final HEADER_FLAG_INTERLEAVED:J = 0x1L

.field private static final HEADER_FLAG_SNORM16_UV:J = 0x2L

.field private static final MAX_UINT32:J = 0xffffffffL


# direct methods
.method private static final createIndexBuffer(Lcom/google/android/filament/Engine;Lcom/miui/maml/elements/filament/Header;Ljava/nio/ByteBuffer;)Lcom/google/android/filament/IndexBuffer;
    .locals 4

    .line 261
    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/Header;->getIndices16Bit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->USHORT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    goto :goto_0

    .line 264
    :cond_0
    sget-object v0, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->UINT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    .line 267
    :goto_0
    new-instance v1, Lcom/google/android/filament/IndexBuffer$Builder;

    invoke-direct {v1}, Lcom/google/android/filament/IndexBuffer$Builder;-><init>()V

    .line 268
    invoke-virtual {v1, v0}, Lcom/google/android/filament/IndexBuffer$Builder;->bufferType(Lcom/google/android/filament/IndexBuffer$Builder$IndexType;)Lcom/google/android/filament/IndexBuffer$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/Header;->getTotalIndices()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/filament/IndexBuffer$Builder;->indexCount(I)Lcom/google/android/filament/IndexBuffer$Builder;

    move-result-object p1

    .line 270
    invoke-virtual {p1, p0}, Lcom/google/android/filament/IndexBuffer$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndexBuffer;

    move-result-object p1

    const-string v0, "IndexBuffer.Builder()\n  \u2026           .build(engine)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    check-cast p2, Ljava/nio/Buffer;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/filament/IndexBuffer;->setBuffer(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    return-object p1
.end method

.method private static final createRenderable(Lcom/google/android/filament/Engine;Lcom/miui/maml/elements/filament/Header;Lcom/google/android/filament/IndexBuffer;Lcom/google/android/filament/VertexBuffer;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/filament/Engine;",
            "Lcom/miui/maml/elements/filament/Header;",
            "Lcom/google/android/filament/IndexBuffer;",
            "Lcom/google/android/filament/VertexBuffer;",
            "Ljava/util/List<",
            "Lcom/miui/maml/elements/filament/Part;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/google/android/filament/MaterialInstance;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    .line 321
    new-instance v2, Lcom/google/android/filament/RenderableManager$Builder;

    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/Header;->getParts()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v2, v3}, Lcom/google/android/filament/RenderableManager$Builder;-><init>(I)V

    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/Header;->getAabb()Lcom/google/android/filament/Box;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/filament/RenderableManager$Builder;->boundingBox(Lcom/google/android/filament/Box;)Lcom/google/android/filament/RenderableManager$Builder;

    move-result-object v2

    const-string v3, "RenderableManager.Builde\u2026.boundingBox(header.aabb)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/Header;->getParts()J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x0

    move v13, v4

    :goto_0
    if-ge v13, v3, :cond_1

    .line 325
    sget-object v6, Lcom/google/android/filament/RenderableManager$PrimitiveType;->TRIANGLES:Lcom/google/android/filament/RenderableManager$PrimitiveType;

    .line 328
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/filament/Part;

    invoke-virtual {v4}, Lcom/miui/maml/elements/filament/Part;->getOffset()J

    move-result-wide v4

    long-to-int v9, v4

    .line 329
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/filament/Part;

    invoke-virtual {v4}, Lcom/miui/maml/elements/filament/Part;->getMinIndex()J

    move-result-wide v4

    long-to-int v10, v4

    .line 330
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/filament/Part;

    invoke-virtual {v4}, Lcom/miui/maml/elements/filament/Part;->getMaxIndex()J

    move-result-wide v4

    long-to-int v11, v4

    .line 331
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/filament/Part;

    invoke-virtual {v4}, Lcom/miui/maml/elements/filament/Part;->getIndexCount()J

    move-result-wide v4

    long-to-int v12, v4

    move-object v4, v2

    move v5, v13

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    .line 324
    invoke-virtual/range {v4 .. v12}, Lcom/google/android/filament/RenderableManager$Builder;->geometry(ILcom/google/android/filament/RenderableManager$PrimitiveType;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;IIII)Lcom/google/android/filament/RenderableManager$Builder;

    .line 335
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/filament/Part;

    invoke-virtual {v4}, Lcom/miui/maml/elements/filament/Part;->getMaterialID()J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v5, p5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/filament/MaterialInstance;

    if-eqz v4, :cond_0

    .line 337
    invoke-virtual {v2, v13, v4}, Lcom/google/android/filament/RenderableManager$Builder;->material(ILcom/google/android/filament/MaterialInstance;)Lcom/google/android/filament/RenderableManager$Builder;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "DefaultMaterial"

    .line 338
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v2, v13, v4}, Lcom/google/android/filament/RenderableManager$Builder;->material(ILcom/google/android/filament/MaterialInstance;)Lcom/google/android/filament/RenderableManager$Builder;

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 341
    :cond_1
    invoke-static {}, Lcom/google/android/filament/EntityManager;->get()Lcom/google/android/filament/EntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/EntityManager;->create()I

    move-result v0

    move-object v1, p0

    invoke-virtual {v2, p0, v0}, Lcom/google/android/filament/RenderableManager$Builder;->build(Lcom/google/android/filament/Engine;I)V

    return v0
.end method

.method private static final createVertexBuffer(Lcom/google/android/filament/Engine;Lcom/miui/maml/elements/filament/Header;Ljava/nio/ByteBuffer;)Lcom/google/android/filament/VertexBuffer;
    .locals 16

    move-object/from16 v0, p0

    .line 277
    invoke-static/range {p1 .. p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->uvNormalized(Lcom/miui/maml/elements/filament/Header;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->HALF2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    goto :goto_0

    .line 280
    :cond_0
    sget-object v1, Lcom/google/android/filament/VertexBuffer$AttributeType;->SHORT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    .line 283
    :goto_0
    new-instance v2, Lcom/google/android/filament/VertexBuffer$Builder;

    invoke-direct {v2}, Lcom/google/android/filament/VertexBuffer$Builder;-><init>()V

    const/4 v3, 0x1

    .line 284
    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$Builder;->bufferCount(I)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v2

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getTotalVertices()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$Builder;->vertexCount(I)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v2

    .line 288
    sget-object v3, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->COLOR:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$Builder;->normalized(Lcom/google/android/filament/VertexBuffer$VertexAttribute;)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v2

    .line 291
    sget-object v3, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->TANGENTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$Builder;->normalized(Lcom/google/android/filament/VertexBuffer$VertexAttribute;)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v4

    .line 292
    sget-object v5, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/filament/VertexBuffer$AttributeType;->HALF4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getPosOffset()J

    move-result-wide v2

    long-to-int v8, v2

    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getPositionStride()J

    move-result-wide v2

    long-to-int v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/filament/VertexBuffer$Builder;->attribute(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;II)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v10

    .line 293
    sget-object v11, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->TANGENTS:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v12, 0x0

    sget-object v13, Lcom/google/android/filament/VertexBuffer$AttributeType;->SHORT4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getTangentOffset()J

    move-result-wide v2

    long-to-int v14, v2

    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getTangentStride()J

    move-result-wide v2

    long-to-int v15, v2

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/filament/VertexBuffer$Builder;->attribute(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;II)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v2

    .line 294
    sget-object v3, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->COLOR:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/filament/VertexBuffer$AttributeType;->UBYTE4:Lcom/google/android/filament/VertexBuffer$AttributeType;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getColorOffset()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getColorStride()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/filament/VertexBuffer$Builder;->attribute(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;II)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v2

    .line 298
    sget-object v3, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getUv0Offset()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getUv0Stride()J

    move-result-wide v7

    long-to-int v7, v7

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/filament/VertexBuffer$Builder;->attribute(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;II)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v2

    .line 301
    sget-object v3, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-static/range {p1 .. p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->uvNormalized(Lcom/miui/maml/elements/filament/Header;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/VertexBuffer$Builder;->normalized(Lcom/google/android/filament/VertexBuffer$VertexAttribute;Z)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v8

    const-string v2, "VertexBuffer.Builder()\n \u2026V0, uvNormalized(header))"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getUv1Offset()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getUv1Stride()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 305
    sget-object v3, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getUv1Offset()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/maml/elements/filament/Header;->getUv1Stride()J

    move-result-wide v9

    long-to-int v7, v9

    move-object v2, v8

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/filament/VertexBuffer$Builder;->attribute(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;II)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v1

    .line 306
    sget-object v2, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV1:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-static/range {p1 .. p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->uvNormalized(Lcom/miui/maml/elements/filament/Header;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/VertexBuffer$Builder;->normalized(Lcom/google/android/filament/VertexBuffer$VertexAttribute;Z)Lcom/google/android/filament/VertexBuffer$Builder;

    .line 309
    :cond_1
    invoke-virtual {v8, v0}, Lcom/google/android/filament/VertexBuffer$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/VertexBuffer;

    move-result-object v1

    const-string v2, "vertexBufferBuilder.build(engine)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v3, p2

    check-cast v3, Ljava/nio/Buffer;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/filament/VertexBuffer;->setBufferAt(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;)V

    return-object v1
.end method

.method public static final destroyMesh(Lcom/google/android/filament/Engine;Lcom/miui/maml/elements/filament/Mesh;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mesh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/Mesh;->getRenderable()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/Engine;->destroyEntity(I)V

    .line 42
    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/Mesh;->getIndexBuffer()Lcom/google/android/filament/IndexBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/Engine;->destroyIndexBuffer(Lcom/google/android/filament/IndexBuffer;)V

    .line 43
    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/Mesh;->getVertexBuffer()Lcom/google/android/filament/VertexBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/Engine;->destroyVertexBuffer(Lcom/google/android/filament/VertexBuffer;)V

    .line 44
    invoke-static {}, Lcom/google/android/filament/EntityManager;->get()Lcom/google/android/filament/EntityManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/Mesh;->getRenderable()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/filament/EntityManager;->destroy(I)V

    return-void
.end method

.method private static synthetic getHEADER_FLAG_COMPRESSED$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getHEADER_FLAG_INTERLEAVED$annotations()V
    .locals 0

    return-void
.end method

.method public static final loadDefaultMesh(Lcom/google/android/filament/MaterialInstance;Lcom/google/android/filament/Engine;)Lcom/miui/maml/elements/filament/Mesh;
    .locals 14

    const-string v0, "material"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/google/android/filament/VertexBuffer$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/VertexBuffer$Builder;-><init>()V

    const/4 v1, 0x4

    .line 71
    invoke-virtual {v0, v1}, Lcom/google/android/filament/VertexBuffer$Builder;->vertexCount(I)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/filament/VertexBuffer$Builder;->bufferCount(I)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v2

    .line 73
    sget-object v3, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    sget-object v5, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/filament/VertexBuffer$Builder;->attribute(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;II)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v8

    .line 74
    sget-object v9, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    sget-object v11, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v10, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x10

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/filament/VertexBuffer$Builder;->attribute(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;II)Lcom/google/android/filament/VertexBuffer$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p1}, Lcom/google/android/filament/VertexBuffer$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/VertexBuffer;

    move-result-object v0

    const-string v2, "VertexBuffer.Builder()\n \u2026           .build(engine)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v2, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;->INSTANCE:Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;

    const/16 v3, 0x40

    .line 86
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 87
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v4, "ByteBuffer.allocateDirec\u2026(ByteOrder.nativeOrder())"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v4, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5, v5}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;-><init>(FFFF)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;->invoke(Ljava/nio/ByteBuffer;Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 89
    new-instance v4, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v5, v6, v5}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;-><init>(FFFF)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;->invoke(Ljava/nio/ByteBuffer;Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 90
    new-instance v4, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;

    invoke-direct {v4, v5, v6, v5, v6}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;-><init>(FFFF)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;->invoke(Ljava/nio/ByteBuffer;Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 91
    new-instance v4, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;

    invoke-direct {v4, v6, v6, v6, v6}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;-><init>(FFFF)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;->invoke(Ljava/nio/ByteBuffer;Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v2

    const/4 v3, 0x0

    .line 94
    invoke-virtual {v0, p1, v3, v2}, Lcom/google/android/filament/VertexBuffer;->setBufferAt(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;)V

    .line 96
    new-instance v2, Lcom/google/android/filament/IndexBuffer$Builder;

    invoke-direct {v2}, Lcom/google/android/filament/IndexBuffer$Builder;-><init>()V

    const/4 v4, 0x6

    .line 97
    invoke-virtual {v2, v4}, Lcom/google/android/filament/IndexBuffer$Builder;->indexCount(I)Lcom/google/android/filament/IndexBuffer$Builder;

    move-result-object v2

    .line 98
    sget-object v4, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->USHORT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    invoke-virtual {v2, v4}, Lcom/google/android/filament/IndexBuffer$Builder;->bufferType(Lcom/google/android/filament/IndexBuffer$Builder$IndexType;)Lcom/google/android/filament/IndexBuffer$Builder;

    move-result-object v2

    .line 99
    invoke-virtual {v2, p1}, Lcom/google/android/filament/IndexBuffer$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndexBuffer;

    move-result-object v2

    const-string v4, "IndexBuffer.Builder()\n  \u2026           .build(engine)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v4, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$2;->INSTANCE:Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$2;

    const/16 v5, 0xc

    .line 109
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 110
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    const-string v6, "ByteBuffer.allocateDirec\u2026(ByteOrder.LITTLE_ENDIAN)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v6, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v1, v3}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;-><init>(SSS)V

    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$2;->invoke(Ljava/nio/ByteBuffer;Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 112
    new-instance v6, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;

    const/4 v8, 0x3

    invoke-direct {v6, v1, v7, v8}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;-><init>(SSS)V

    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$2;->invoke(Ljava/nio/ByteBuffer;Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Triangle;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v4

    .line 115
    invoke-virtual {v2, p1, v4}, Lcom/google/android/filament/IndexBuffer;->setBuffer(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    .line 117
    new-instance v4, Lcom/google/android/filament/Box;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x460ca000    # 9000.0f

    const v10, 0x460ca000    # 9000.0f

    const v11, 0x460ca000    # 9000.0f

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    .line 118
    invoke-static {}, Lcom/google/android/filament/EntityManager;->get()Lcom/google/android/filament/EntityManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/EntityManager;->create()I

    move-result v5

    .line 120
    new-instance v6, Lcom/google/android/filament/RenderableManager$Builder;

    invoke-direct {v6, v1}, Lcom/google/android/filament/RenderableManager$Builder;-><init>(I)V

    .line 121
    invoke-virtual {v6, v4}, Lcom/google/android/filament/RenderableManager$Builder;->boundingBox(Lcom/google/android/filament/Box;)Lcom/google/android/filament/RenderableManager$Builder;

    move-result-object v1

    .line 122
    sget-object v6, Lcom/google/android/filament/RenderableManager$PrimitiveType;->TRIANGLES:Lcom/google/android/filament/RenderableManager$PrimitiveType;

    invoke-virtual {v1, v3, v6, v0, v2}, Lcom/google/android/filament/RenderableManager$Builder;->geometry(ILcom/google/android/filament/RenderableManager$PrimitiveType;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)Lcom/google/android/filament/RenderableManager$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v3, p0}, Lcom/google/android/filament/RenderableManager$Builder;->material(ILcom/google/android/filament/MaterialInstance;)Lcom/google/android/filament/RenderableManager$Builder;

    move-result-object p0

    .line 124
    invoke-virtual {p0, p1, v5}, Lcom/google/android/filament/RenderableManager$Builder;->build(Lcom/google/android/filament/Engine;I)V

    .line 125
    new-instance p0, Lcom/miui/maml/elements/filament/Mesh;

    invoke-direct {p0, v5, v2, v0, v4}, Lcom/miui/maml/elements/filament/Mesh;-><init>(ILcom/google/android/filament/IndexBuffer;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/Box;)V

    return-object p0
.end method

.method public static final loadMesh(Lcom/miui/maml/ResourceManager;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/filament/Engine;)Lcom/miui/maml/elements/filament/Mesh;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/maml/ResourceManager;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/google/android/filament/MaterialInstance;",
            ">;",
            "Lcom/google/android/filament/Engine;",
            ")",
            "Lcom/miui/maml/elements/filament/Mesh;"
        }
    .end annotation

    const-string v0, "mgr"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "materials"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    const/4 p1, 0x0

    check-cast p1, Ljava/lang/Throwable;

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/io/InputStream;

    const-string v1, "input"

    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readHeader(Ljava/io/InputStream;)Lcom/miui/maml/elements/filament/Header;

    move-result-object v1

    .line 52
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v2

    const-string v3, "channel"

    .line 53
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/maml/elements/filament/Header;->getVerticesSizeInBytes()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readSizedData(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 54
    invoke-virtual {v1}, Lcom/miui/maml/elements/filament/Header;->getIndicesSizeInBytes()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readSizedData(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 56
    invoke-static {v1, v0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readParts(Lcom/miui/maml/elements/filament/Header;Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v6

    .line 57
    invoke-static {v0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readMaterials(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v7

    .line 59
    invoke-static {p3, v1, v2}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->createIndexBuffer(Lcom/google/android/filament/Engine;Lcom/miui/maml/elements/filament/Header;Ljava/nio/ByteBuffer;)Lcom/google/android/filament/IndexBuffer;

    move-result-object v0

    .line 60
    invoke-static {p3, v1, v3}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->createVertexBuffer(Lcom/google/android/filament/Engine;Lcom/miui/maml/elements/filament/Header;Ljava/nio/ByteBuffer;)Lcom/google/android/filament/VertexBuffer;

    move-result-object v9

    move-object v2, p3

    move-object v3, v1

    move-object v4, v0

    move-object v5, v9

    move-object v8, p2

    .line 62
    invoke-static/range {v2 .. v8}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->createRenderable(Lcom/google/android/filament/Engine;Lcom/miui/maml/elements/filament/Header;Lcom/google/android/filament/IndexBuffer;Lcom/google/android/filament/VertexBuffer;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)I

    move-result p2

    .line 65
    new-instance p3, Lcom/miui/maml/elements/filament/Mesh;

    invoke-virtual {v1}, Lcom/miui/maml/elements/filament/Header;->getAabb()Lcom/google/android/filament/Box;

    move-result-object v1

    invoke-direct {p3, p2, v0, v9, v1}, Lcom/miui/maml/elements/filament/Mesh;-><init>(ILcom/google/android/filament/IndexBuffer;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/Box;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p3

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static final readFloat32LE(Ljava/io/InputStream;)F
    .locals 3

    const/4 v0, 0x4

    .line 177
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 178
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    .line 179
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const-string v0, "ByteBuffer.wrap(bytes).o\u2026(ByteOrder.LITTLE_ENDIAN)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    return p0
.end method

.method private static final readHeader(Ljava/io/InputStream;)Lcom/miui/maml/elements/filament/Header;
    .locals 10

    .line 194
    new-instance v0, Lcom/miui/maml/elements/filament/Header;

    invoke-direct {v0}, Lcom/miui/maml/elements/filament/Header;-><init>()V

    .line 196
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readMagicNumber(Ljava/io/InputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Filament"

    const-string v1, "Invalid filamesh file."

    .line 197
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 201
    :cond_0
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setVersionNumber(J)V

    .line 202
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setParts(J)V

    .line 203
    new-instance v1, Lcom/google/android/filament/Box;

    .line 204
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readFloat32LE(Ljava/io/InputStream;)F

    move-result v4

    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readFloat32LE(Ljava/io/InputStream;)F

    move-result v5

    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readFloat32LE(Ljava/io/InputStream;)F

    move-result v6

    .line 205
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readFloat32LE(Ljava/io/InputStream;)F

    move-result v7

    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readFloat32LE(Ljava/io/InputStream;)F

    move-result v8

    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readFloat32LE(Ljava/io/InputStream;)F

    move-result v9

    move-object v3, v1

    .line 203
    invoke-direct/range {v3 .. v9}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/filament/Header;->setAabb(Lcom/google/android/filament/Box;)V

    .line 206
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setFlags(J)V

    .line 207
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setPosOffset(J)V

    .line 208
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setPositionStride(J)V

    .line 209
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setTangentOffset(J)V

    .line 210
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setTangentStride(J)V

    .line 211
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setColorOffset(J)V

    .line 212
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setColorStride(J)V

    .line 213
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setUv0Offset(J)V

    .line 214
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setUv0Stride(J)V

    .line 215
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setUv1Offset(J)V

    .line 216
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setUv1Stride(J)V

    .line 217
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setTotalVertices(J)V

    .line 218
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setVerticesSizeInBytes(J)V

    .line 219
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setIndices16Bit(J)V

    .line 220
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setTotalIndices(J)V

    .line 221
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/filament/Header;->setIndicesSizeInBytes(J)V

    const/4 p0, 0x1

    .line 223
    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/filament/Header;->setValid(Z)V

    return-object v0
.end method

.method private static final readIntLE(Ljava/io/InputStream;)I
    .locals 2

    .line 170
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 171
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 172
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 173
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static final readMagicNumber(Ljava/io/InputStream;)Z
    .locals 2

    const/16 v0, 0x8

    .line 187
    new-array v0, v0, [B

    .line 188
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    const-string p0, "UTF-8"

    .line 189
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    const-string v1, "Charset.forName(\"UTF-8\")"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "FILAMESH"

    .line 190
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final readMaterials(Ljava/io/InputStream;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 251
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 252
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    .line 253
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    const-wide/16 v4, 0x1

    .line 255
    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    const-string v4, "UTF-8"

    .line 256
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const-string v5, "Charset.forName(\"UTF-8\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 251
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private static final readParts(Lcom/miui/maml/elements/filament/Header;Ljava/io/InputStream;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/maml/elements/filament/Header;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/maml/elements/filament/Part;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/Header;->getParts()J

    move-result-wide v0

    long-to-int p0, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 237
    new-instance v2, Lcom/miui/maml/elements/filament/Part;

    invoke-direct {v2}, Lcom/miui/maml/elements/filament/Part;-><init>()V

    .line 238
    invoke-static {p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/elements/filament/Part;->setOffset(J)V

    .line 239
    invoke-static {p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/elements/filament/Part;->setIndexCount(J)V

    .line 240
    invoke-static {p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/elements/filament/Part;->setMinIndex(J)V

    .line 241
    invoke-static {p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/elements/filament/Part;->setMaxIndex(J)V

    .line 242
    invoke-static {p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readUIntLE(Ljava/io/InputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/elements/filament/Part;->setMaterialID(J)V

    .line 243
    new-instance v3, Lcom/google/android/filament/Box;

    .line 244
    invoke-static {p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readFloat32LE(Ljava/io/InputStream;)F

    move-result v6

    invoke-static {p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readFloat32LE(Ljava/io/InputStream;)F

    move-result v7

    invoke-static {p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readFloat32LE(Ljava/io/InputStream;)F

    move-result v8

    .line 245
    invoke-static {p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readFloat32LE(Ljava/io/InputStream;)F

    move-result v9

    invoke-static {p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readFloat32LE(Ljava/io/InputStream;)F

    move-result v10

    invoke-static {p1}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readFloat32LE(Ljava/io/InputStream;)F

    move-result v11

    move-object v5, v3

    .line 243
    invoke-direct/range {v5 .. v11}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/filament/Part;->setAabb(Lcom/google/android/filament/Box;)V

    .line 236
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final readSizedData(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;
    .locals 0

    long-to-int p1, p1

    .line 228
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 229
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 230
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 231
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string p0, "buffer"

    .line 232
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final readUIntLE(Ljava/io/InputStream;)J
    .locals 4

    .line 183
    invoke-static {p0}, Lcom/miui/maml/elements/filament/MeshLoaderKt;->readIntLE(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static final uvNormalized(Lcom/miui/maml/elements/filament/Header;)Z
    .locals 4

    .line 274
    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/Header;->getFlags()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
