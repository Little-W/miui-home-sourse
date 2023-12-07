.class public Lcom/google/android/filament/gltfio/FilamentInstance;
.super Ljava/lang/Object;


# instance fields
.field private mAnimator:Lcom/google/android/filament/gltfio/Animator;

.field private mNativeObject:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->mNativeObject:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->mAnimator:Lcom/google/android/filament/gltfio/Animator;

    return-void
.end method

.method private static native nGetAnimator(J)J
.end method

.method private static native nGetEntities(J[I)V
.end method

.method private static native nGetEntityCount(J)I
.end method

.method private static native nGetRoot(J)I
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->mNativeObject:J

    return-void
.end method

.method public getAnimator()Lcom/google/android/filament/gltfio/Animator;
    .locals 3

    iget-object v0, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->mAnimator:Lcom/google/android/filament/gltfio/Animator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/filament/gltfio/Animator;

    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->mNativeObject:J

    invoke-static {v1, v2}, Lcom/google/android/filament/gltfio/FilamentInstance;->nGetAnimator(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/gltfio/Animator;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->mAnimator:Lcom/google/android/filament/gltfio/Animator;

    iget-object p0, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->mAnimator:Lcom/google/android/filament/gltfio/Animator;

    return-object p0
.end method

.method public getEntities()[I
    .locals 3

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentInstance;->nGetEntityCount(J)I

    move-result v0

    new-array v0, v0, [I

    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->mNativeObject:J

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/gltfio/FilamentInstance;->nGetEntities(J[I)V

    return-object v0
.end method

.method getNativeObject()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->mNativeObject:J

    return-wide v0
.end method

.method public getRoot()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentInstance;->nGetRoot(J)I

    move-result p0

    return p0
.end method
