.class public Lcom/google/android/filament/gltfio/ResourceLoader;
.super Ljava/lang/Object;


# instance fields
.field private final mNativeObject:J


# direct methods
.method public constructor <init>(Lcom/google/android/filament/Engine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-static {v0, v1, p1, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nCreateResourceLoader(JZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->mNativeObject:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/filament/gltfio/ResourceLoader;->nCreateResourceLoader(JZZ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->mNativeObject:J

    return-void
.end method

.method private static native nAddResourceData(JLjava/lang/String;Ljava/nio/Buffer;I)V
.end method

.method private static native nAsyncBeginLoad(JJ)Z
.end method

.method private static native nAsyncGetLoadProgress(J)F
.end method

.method private static native nAsyncUpdateLoad(J)V
.end method

.method private static native nCreateResourceLoader(JZZ)J
.end method

.method private static native nDestroyResourceLoader(J)V
.end method

.method private static native nHasResourceData(JLjava/lang/String;)Z
.end method

.method private static native nLoadResources(JJ)V
.end method


# virtual methods
.method public addResourceData(Ljava/lang/String;Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/ResourceLoader;
    .locals 3

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->mNativeObject:J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAddResourceData(JLjava/lang/String;Ljava/nio/Buffer;I)V

    return-object p0
.end method

.method public asyncBeginLoad(Lcom/google/android/filament/gltfio/FilamentAsset;)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->mNativeObject:J

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getNativeObject()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAsyncBeginLoad(JJ)Z

    move-result p0

    return p0
.end method

.method public asyncGetLoadProgress()F
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAsyncGetLoadProgress(J)F

    move-result p0

    return p0
.end method

.method public asyncUpdateLoad()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAsyncUpdateLoad(J)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nDestroyResourceLoader(J)V

    return-void
.end method

.method public hasResourceData(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nHasResourceData(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public loadResources(Lcom/google/android/filament/gltfio/FilamentAsset;)Lcom/google/android/filament/gltfio/ResourceLoader;
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->mNativeObject:J

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/gltfio/ResourceLoader;->nLoadResources(JJ)V

    return-object p0
.end method
