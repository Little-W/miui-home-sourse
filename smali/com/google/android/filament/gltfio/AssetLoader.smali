.class public Lcom/google/android/filament/gltfio/AssetLoader;
.super Ljava/lang/Object;


# instance fields
.field private mEngine:Lcom/google/android/filament/Engine;

.field private mNativeObject:J


# direct methods
.method public constructor <init>(Lcom/google/android/filament/Engine;Lcom/google/android/filament/gltfio/MaterialProvider;Lcom/google/android/filament/EntityManager;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/filament/gltfio/MaterialProvider;->getNativeObject()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/google/android/filament/EntityManager;->getNativeObject()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/gltfio/AssetLoader;->nCreateAssetLoader(JJJ)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mNativeObject:J

    iget-wide p2, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mNativeObject:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mEngine:Lcom/google/android/filament/Engine;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to parse glTF asset."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nCreateAssetFromBinary(JLjava/nio/Buffer;I)J
.end method

.method private static native nCreateAssetFromJson(JLjava/nio/Buffer;I)J
.end method

.method private static native nCreateAssetLoader(JJJ)J
.end method

.method private static native nCreateInstancedAsset(JLjava/nio/Buffer;I[J)J
.end method

.method private static native nDestroyAsset(JJ)V
.end method

.method private static native nDestroyAssetLoader(J)V
.end method

.method private static native nEnableDiagnostics(JZ)V
.end method


# virtual methods
.method public createAssetFromBinary(Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/FilamentAsset;
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mNativeObject:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/gltfio/AssetLoader;->nCreateAssetFromBinary(JLjava/nio/Buffer;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/gltfio/FilamentAsset;

    iget-object p0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mEngine:Lcom/google/android/filament/Engine;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;-><init>(Lcom/google/android/filament/Engine;J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public createAssetFromJson(Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/FilamentAsset;
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mNativeObject:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/gltfio/AssetLoader;->nCreateAssetFromJson(JLjava/nio/Buffer;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/gltfio/FilamentAsset;

    iget-object p0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mEngine:Lcom/google/android/filament/Engine;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;-><init>(Lcom/google/android/filament/Engine;J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public createInstancedAsset(Ljava/nio/Buffer;[Lcom/google/android/filament/gltfio/FilamentInstance;)Lcom/google/android/filament/gltfio/FilamentAsset;
    .locals 6

    array-length v0, p2

    new-array v0, v0, [J

    iget-wide v1, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mNativeObject:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v1, v2, p1, v3, v0}, Lcom/google/android/filament/gltfio/AssetLoader;->nCreateInstancedAsset(JLjava/nio/Buffer;I[J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    array-length v3, v0

    if-ge p1, v3, :cond_1

    new-instance v3, Lcom/google/android/filament/gltfio/FilamentInstance;

    aget-wide v4, v0, p1

    invoke-direct {v3, v4, v5}, Lcom/google/android/filament/gltfio/FilamentInstance;-><init>(J)V

    aput-object v3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/filament/gltfio/FilamentAsset;

    iget-object p0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mEngine:Lcom/google/android/filament/Engine;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/filament/gltfio/FilamentAsset;-><init>(Lcom/google/android/filament/Engine;J)V

    return-object p1
.end method

.method public destroy()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/AssetLoader;->nDestroyAssetLoader(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mNativeObject:J

    return-void
.end method

.method public destroyAsset(Lcom/google/android/filament/gltfio/FilamentAsset;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mNativeObject:J

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/gltfio/AssetLoader;->nDestroyAsset(JJ)V

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->clearNativeObject()V

    return-void
.end method

.method public enableDiagnostics(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/gltfio/AssetLoader;->nEnableDiagnostics(JZ)V

    return-void
.end method
