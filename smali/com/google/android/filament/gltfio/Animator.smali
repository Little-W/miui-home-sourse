.class public Lcom/google/android/filament/gltfio/Animator;
.super Ljava/lang/Object;
.source "Animator.java"


# instance fields
.field private mNativeObject:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/google/android/filament/gltfio/Animator;->mNativeObject:J

    return-void
.end method

.method private static native nApplyAnimation(JIF)V
.end method

.method private static native nGetAnimationCount(J)I
.end method

.method private static native nGetAnimationDuration(JI)F
.end method

.method private static native nGetAnimationName(JI)Ljava/lang/String;
.end method

.method private static native nUpdateBoneMatrices(J)V
.end method


# virtual methods
.method public applyAnimation(IF)V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/Animator;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/gltfio/Animator;->nApplyAnimation(JIF)V

    return-void
.end method

.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 107
    iput-wide v0, p0, Lcom/google/android/filament/gltfio/Animator;->mNativeObject:J

    return-void
.end method

.method public getAnimationCount()I
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/Animator;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/Animator;->nGetAnimationCount(J)I

    move-result p0

    return p0
.end method

.method public getAnimationDuration(I)F
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/Animator;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/gltfio/Animator;->nGetAnimationDuration(JI)F

    move-result p0

    return p0
.end method

.method public getAnimationName(I)Ljava/lang/String;
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/Animator;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/gltfio/Animator;->nGetAnimationName(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getNativeObject()J
    .locals 4

    .line 100
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/Animator;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Using Animator on destroyed asset"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateBoneMatrices()V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/Animator;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/Animator;->nUpdateBoneMatrices(J)V

    return-void
.end method
