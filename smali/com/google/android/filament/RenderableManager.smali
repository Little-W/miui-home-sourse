.class public Lcom/google/android/filament/RenderableManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/RenderableManager$Builder;,
        Lcom/google/android/filament/RenderableManager$PrimitiveType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Filament"


# instance fields
.field private mNativeObject:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    return-void
.end method

.method static synthetic access$000(I)J
    .locals 2

    invoke-static {p0}, Lcom/google/android/filament/RenderableManager;->nCreateBuilder(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(JIIJJIIII)V
    .locals 0

    invoke-static/range {p0 .. p11}, Lcom/google/android/filament/RenderableManager;->nBuilderGeometry(JIIJJIIII)V

    return-void
.end method

.method static synthetic access$1000(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderCastShadows(JZ)V

    return-void
.end method

.method static synthetic access$1100(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderReceiveShadows(JZ)V

    return-void
.end method

.method static synthetic access$1200(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderScreenSpaceContactShadows(JZ)V

    return-void
.end method

.method static synthetic access$1300(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderSkinning(JI)V

    return-void
.end method

.method static synthetic access$1400(JILjava/nio/Buffer;I)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/RenderableManager;->nBuilderSkinningBones(JILjava/nio/Buffer;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderMorphing(JZ)V

    return-void
.end method

.method static synthetic access$1600(JJI)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/RenderableManager;->nBuilderBuild(JJI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/RenderableManager;->nDestroyBuilder(J)V

    return-void
.end method

.method static synthetic access$200(JIIJJII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/google/android/filament/RenderableManager;->nBuilderGeometry(JIIJJII)V

    return-void
.end method

.method static synthetic access$300(JIIJJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/google/android/filament/RenderableManager;->nBuilderGeometry(JIIJJ)V

    return-void
.end method

.method static synthetic access$400(JIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/RenderableManager;->nBuilderMaterial(JIJ)V

    return-void
.end method

.method static synthetic access$500(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nBuilderBlendOrder(JII)V

    return-void
.end method

.method static synthetic access$600(JFFFFFF)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/google/android/filament/RenderableManager;->nBuilderBoundingBox(JFFFFFF)V

    return-void
.end method

.method static synthetic access$700(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nBuilderLayerMask(JII)V

    return-void
.end method

.method static synthetic access$800(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderPriority(JI)V

    return-void
.end method

.method static synthetic access$900(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderCulling(JZ)V

    return-void
.end method

.method private static native nBuilderBlendOrder(JII)V
.end method

.method private static native nBuilderBoundingBox(JFFFFFF)V
.end method

.method private static native nBuilderBuild(JJI)Z
.end method

.method private static native nBuilderCastShadows(JZ)V
.end method

.method private static native nBuilderCulling(JZ)V
.end method

.method private static native nBuilderGeometry(JIIJJ)V
.end method

.method private static native nBuilderGeometry(JIIJJII)V
.end method

.method private static native nBuilderGeometry(JIIJJIIII)V
.end method

.method private static native nBuilderLayerMask(JII)V
.end method

.method private static native nBuilderMaterial(JIJ)V
.end method

.method private static native nBuilderMorphing(JZ)V
.end method

.method private static native nBuilderPriority(JI)V
.end method

.method private static native nBuilderReceiveShadows(JZ)V
.end method

.method private static native nBuilderScreenSpaceContactShadows(JZ)V
.end method

.method private static native nBuilderSkinning(JI)V
.end method

.method private static native nBuilderSkinningBones(JILjava/nio/Buffer;I)I
.end method

.method private static native nCreateBuilder(I)J
.end method

.method private static native nDestroy(JI)V
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetAxisAlignedBoundingBox(JI[F[F)V
.end method

.method private static native nGetEnabledAttributesAt(JII)I
.end method

.method private static native nGetInstance(JI)I
.end method

.method private static native nGetMaterialAt(JII)J
.end method

.method private static native nGetMaterialInstanceAt(JII)J
.end method

.method private static native nGetPrimitiveCount(JI)I
.end method

.method private static native nHasComponent(JI)Z
.end method

.method private static native nIsShadowCaster(JI)Z
.end method

.method private static native nIsShadowReceiver(JI)Z
.end method

.method private static native nSetAxisAlignedBoundingBox(JIFFFFFF)V
.end method

.method private static native nSetBlendOrderAt(JIII)V
.end method

.method private static native nSetBonesAsMatrices(JILjava/nio/Buffer;III)I
.end method

.method private static native nSetBonesAsQuaternions(JILjava/nio/Buffer;III)I
.end method

.method private static native nSetCastShadows(JIZ)V
.end method

.method private static native nSetCulling(JIZ)V
.end method

.method private static native nSetGeometryAt(JIIIII)V
.end method

.method private static native nSetGeometryAt(JIIIJJII)V
.end method

.method private static native nSetLayerMask(JIII)V
.end method

.method private static native nSetMaterialInstanceAt(JIIJ)V
.end method

.method private static native nSetMorphWeights(JI[F)V
.end method

.method private static native nSetPriority(JII)V
.end method

.method private static native nSetReceiveShadows(JIZ)V
.end method

.method private static native nSetScreenSpaceContactShadows(JIZ)V
.end method


# virtual methods
.method public destroy(I)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nDestroy(JI)V

    return-void
.end method

.method public getAxisAlignedBoundingBox(ILcom/google/android/filament/Box;)Lcom/google/android/filament/Box;
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/filament/Box;

    invoke-direct {p2}, Lcom/google/android/filament/Box;-><init>()V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->getCenter()[F

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->getHalfExtent()[F

    move-result-object v2

    invoke-static {v0, v1, p1, p0, v2}, Lcom/google/android/filament/RenderableManager;->nGetAxisAlignedBoundingBox(JI[F[F)V

    return-object p2
.end method

.method public getEnabledAttributesAt(II)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Lcom/google/android/filament/VertexBuffer$VertexAttribute;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nGetEnabledAttributesAt(JII)I

    move-result p0

    const-class p1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-static {}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->values()[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getInstance(I)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nGetInstance(JI)I

    move-result p0

    return p0
.end method

.method public getMaterialInstanceAt(II)Lcom/google/android/filament/MaterialInstance;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nGetMaterialInstanceAt(JII)J

    move-result-wide p0

    new-instance p2, Lcom/google/android/filament/MaterialInstance;

    invoke-direct {p2, p0, p1}, Lcom/google/android/filament/MaterialInstance;-><init>(J)V

    return-object p2
.end method

.method public getNativeObject()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    return-wide v0
.end method

.method public getPrimitiveCount(I)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nGetPrimitiveCount(JI)I

    move-result p0

    return p0
.end method

.method public hasComponent(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nHasComponent(JI)Z

    move-result p0

    return p0
.end method

.method public isShadowCaster(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nIsShadowCaster(JI)Z

    move-result p0

    return p0
.end method

.method public isShadowReceiver(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nIsShadowReceiver(JI)Z

    move-result p0

    return p0
.end method

.method public setAxisAlignedBoundingBox(ILcom/google/android/filament/Box;)V
    .locals 9

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->getCenter()[F

    move-result-object p0

    const/4 v2, 0x0

    aget v3, p0, v2

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->getCenter()[F

    move-result-object p0

    const/4 v4, 0x1

    aget p0, p0, v4

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->getCenter()[F

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->getHalfExtent()[F

    move-result-object v7

    aget v7, v7, v2

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->getHalfExtent()[F

    move-result-object v2

    aget v8, v2, v4

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->getHalfExtent()[F

    move-result-object p2

    aget p2, p2, v6

    move v2, p1

    move v4, p0

    move v6, v7

    move v7, v8

    move v8, p2

    invoke-static/range {v0 .. v8}, Lcom/google/android/filament/RenderableManager;->nSetAxisAlignedBoundingBox(JIFFFFFF)V

    return-void
.end method

.method public setBlendOrderAt(III)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nSetBlendOrderAt(JIII)V

    return-void
.end method

.method public setBonesAsMatrices(ILjava/nio/Buffer;II)V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/RenderableManager;->nSetBonesAsMatrices(JILjava/nio/Buffer;III)I

    move-result p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/nio/BufferOverflowException;

    invoke-direct {p0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p0
.end method

.method public setBonesAsQuaternions(ILjava/nio/Buffer;II)V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/RenderableManager;->nSetBonesAsQuaternions(JILjava/nio/Buffer;III)I

    move-result p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/nio/BufferOverflowException;

    invoke-direct {p0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p0
.end method

.method public setCastShadows(IZ)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetCastShadows(JIZ)V

    return-void
.end method

.method public setCulling(IZ)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetCulling(JIZ)V

    return-void
.end method

.method public setGeometryAt(IILcom/google/android/filament/RenderableManager$PrimitiveType;II)V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-virtual {p3}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->getValue()I

    move-result v4

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/RenderableManager;->nSetGeometryAt(JIIIII)V

    return-void
.end method

.method public setGeometryAt(IILcom/google/android/filament/RenderableManager$PrimitiveType;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)V
    .locals 11

    move-object v0, p0

    iget-wide v0, v0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-virtual {p3}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->getValue()I

    move-result v4

    invoke-virtual {p4}, Lcom/google/android/filament/VertexBuffer;->getNativeObject()J

    move-result-wide v5

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/filament/IndexBuffer;->getNativeObject()J

    move-result-wide v7

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/filament/IndexBuffer;->getIndexCount()I

    move-result v10

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/filament/RenderableManager;->nSetGeometryAt(JIIIJJII)V

    return-void
.end method

.method public setGeometryAt(IILcom/google/android/filament/RenderableManager$PrimitiveType;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;II)V
    .locals 11

    move-object v0, p0

    iget-wide v0, v0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-virtual {p3}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->getValue()I

    move-result v4

    invoke-virtual {p4}, Lcom/google/android/filament/VertexBuffer;->getNativeObject()J

    move-result-wide v5

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/filament/IndexBuffer;->getNativeObject()J

    move-result-wide v7

    move v2, p1

    move v3, p2

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lcom/google/android/filament/RenderableManager;->nSetGeometryAt(JIIIJJII)V

    return-void
.end method

.method public setLayerMask(III)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nSetLayerMask(JIII)V

    return-void
.end method

.method public setMaterialInstanceAt(IILcom/google/android/filament/MaterialInstance;)V
    .locals 8

    invoke-virtual {p3}, Lcom/google/android/filament/MaterialInstance;->getMaterial()Lcom/google/android/filament/Material;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Material;->getRequiredAttributesAsInt()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v1, v2, p1, p2}, Lcom/google/android/filament/RenderableManager;->nGetEnabledAttributesAt(JII)I

    move-result v1

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/google/android/filament/Platform;->get()Lcom/google/android/filament/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaterialInstanceAt() on primitive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of Renderable at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": declared attributes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->getEnabledAttributesAt(II)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " do no satisfy required attributes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/filament/MaterialInstance;->getMaterial()Lcom/google/android/filament/Material;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/Material;->getRequiredAttributes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Platform;->warn(Ljava/lang/String;)V

    :cond_0
    iget-wide v2, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-virtual {p3}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v6

    move v4, p1

    move v5, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/filament/RenderableManager;->nSetMaterialInstanceAt(JIIJ)V

    return-void
.end method

.method public setMorphWeights(I[F)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetMorphWeights(JI[F)V

    return-void
.end method

.method public setPriority(II)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetPriority(JII)V

    return-void
.end method

.method public setReceiveShadows(IZ)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetReceiveShadows(JIZ)V

    return-void
.end method

.method public setScreenSpaceContactShadows(IZ)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetScreenSpaceContactShadows(JIZ)V

    return-void
.end method
