.class public Lcom/google/android/filament/gltfio/FilamentAsset;
.super Ljava/lang/Object;
.source "FilamentAsset.java"


# instance fields
.field private mAnimator:Lcom/google/android/filament/gltfio/Animator;

.field private mEngine:Lcom/google/android/filament/Engine;

.field private mNativeObject:J


# direct methods
.method constructor <init>(Lcom/google/android/filament/Engine;J)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mEngine:Lcom/google/android/filament/Engine;

    .line 54
    iput-wide p2, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mAnimator:Lcom/google/android/filament/gltfio/Animator;

    return-void
.end method

.method private static native nGetAnimator(J)J
.end method

.method private static native nGetBoundingBox(J[F)V
.end method

.method private static native nGetCameraEntities(J[I)V
.end method

.method private static native nGetCameraEntityCount(J)I
.end method

.method private static native nGetEntities(J[I)V
.end method

.method private static native nGetEntitiesByName(JLjava/lang/String;[I)I
.end method

.method private static native nGetEntitiesByPrefix(JLjava/lang/String;[I)I
.end method

.method private static native nGetEntityCount(J)I
.end method

.method private static native nGetFirstEntityByName(JLjava/lang/String;)I
.end method

.method private static native nGetLightEntities(J[I)V
.end method

.method private static native nGetLightEntityCount(J)I
.end method

.method private static native nGetMaterialInstanceCount(J)I
.end method

.method private static native nGetMaterialInstances(J[J)V
.end method

.method private static native nGetName(JI)Ljava/lang/String;
.end method

.method private static native nGetResourceUriCount(J)I
.end method

.method private static native nGetResourceUris(J[Ljava/lang/String;)V
.end method

.method private static native nGetRoot(J)I
.end method

.method private static native nPopRenderable(J)I
.end method

.method private static native nPopRenderables(J[I)I
.end method

.method private static native nReleaseSourceData(J)V
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mAnimator:Lcom/google/android/filament/gltfio/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/Animator;->clearNativeObject()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 225
    iput-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    return-void
.end method

.method public getAnimator()Lcom/google/android/filament/gltfio/Animator;
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mAnimator:Lcom/google/android/filament/gltfio/Animator;

    if-eqz v0, :cond_0

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Lcom/google/android/filament/gltfio/Animator;

    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/FilamentAsset;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetAnimator(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/gltfio/Animator;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mAnimator:Lcom/google/android/filament/gltfio/Animator;

    .line 201
    iget-object v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mAnimator:Lcom/google/android/filament/gltfio/Animator;

    return-object v0
.end method

.method public getBoundingBox()Lcom/google/android/filament/Box;
    .locals 10

    const/4 v0, 0x6

    .line 177
    new-array v0, v0, [F

    .line 178
    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetBoundingBox(J[F)V

    .line 179
    new-instance v1, Lcom/google/android/filament/Box;

    const/4 v2, 0x0

    aget v4, v0, v2

    const/4 v2, 0x1

    aget v5, v0, v2

    const/4 v2, 0x2

    aget v6, v0, v2

    const/4 v2, 0x3

    aget v7, v0, v2

    const/4 v2, 0x4

    aget v8, v0, v2

    const/4 v2, 0x5

    aget v9, v0, v2

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    return-object v1
.end method

.method public getCameraEntities()[I
    .locals 3
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation

    .line 132
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetCameraEntityCount(J)I

    move-result v0

    new-array v0, v0, [I

    .line 133
    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetCameraEntities(J[I)V

    return-object v0
.end method

.method public getEntities()[I
    .locals 3
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation

    .line 101
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetEntityCount(J)I

    move-result v0

    new-array v0, v0, [I

    .line 102
    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetEntities(J[I)V

    return-object v0
.end method

.method public getEntitiesByName(Ljava/lang/String;)[I
    .locals 3
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation

    .line 148
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetEntitiesByName(JLjava/lang/String;[I)I

    move-result v0

    new-array v0, v0, [I

    .line 149
    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v1, v2, p1, v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetEntitiesByName(JLjava/lang/String;[I)I

    return-object v0
.end method

.method public getEntitiesByPrefix(Ljava/lang/String;)[I
    .locals 3
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation

    .line 157
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetEntitiesByPrefix(JLjava/lang/String;[I)I

    move-result v0

    new-array v0, v0, [I

    .line 158
    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v1, v2, p1, v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetEntitiesByPrefix(JLjava/lang/String;[I)I

    return-object v0
.end method

.method public getFirstEntityByName(Ljava/lang/String;)I
    .locals 2
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation

    .line 141
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetFirstEntityByName(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLightEntities()[I
    .locals 3
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation

    .line 110
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetLightEntityCount(J)I

    move-result v0

    new-array v0, v0, [I

    .line 111
    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetLightEntities(J[I)V

    return-object v0
.end method

.method public getMaterialInstances()[Lcom/google/android/filament/MaterialInstance;
    .locals 8

    .line 163
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetMaterialInstanceCount(J)I

    move-result v0

    .line 164
    new-array v1, v0, [Lcom/google/android/filament/MaterialInstance;

    .line 165
    new-array v2, v0, [J

    .line 166
    iget-wide v3, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v3, v4, v2}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetMaterialInstances(J[J)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 168
    new-instance v4, Lcom/google/android/filament/MaterialInstance;

    iget-object v5, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mEngine:Lcom/google/android/filament/Engine;

    aget-wide v6, v2, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/filament/MaterialInstance;-><init>(Lcom/google/android/filament/Engine;J)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getName(I)Ljava/lang/String;
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param

    .line 186
    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/FilamentAsset;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetName(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNativeObject()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    return-wide v0
.end method

.method public getResourceUris()[Ljava/lang/String;
    .locals 3

    .line 208
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetResourceUriCount(J)I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 209
    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetResourceUris(J[Ljava/lang/String;)V

    return-object v0
.end method

.method public getRoot()I
    .locals 2
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation

    .line 66
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetRoot(J)I

    move-result v0

    return v0
.end method

.method public popRenderable()I
    .locals 2
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation

    .line 81
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nPopRenderable(J)I

    move-result v0

    return v0
.end method

.method public popRenderables([I)I
    .locals 2
    .param p1    # [I
        .annotation build Lcom/google/android/filament/Entity;
        .end annotation
    .end param

    .line 91
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nPopRenderables(J[I)I

    move-result p1

    return p1
.end method

.method public releaseSourceData()V
    .locals 2

    .line 220
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nReleaseSourceData(J)V

    return-void
.end method
