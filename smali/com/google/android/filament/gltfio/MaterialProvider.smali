.class public Lcom/google/android/filament/gltfio/MaterialProvider;
.super Ljava/lang/Object;
.source "MaterialProvider.java"


# instance fields
.field private mNativeObject:J


# direct methods
.method public constructor <init>(Lcom/google/android/filament/Engine;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    .line 39
    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/MaterialProvider;->nCreateMaterialProvider(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/gltfio/MaterialProvider;->mNativeObject:J

    return-void
.end method

.method private static native nCreateMaterialProvider(J)J
.end method

.method private static native nDestroyMaterialProvider(J)V
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/MaterialProvider;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/MaterialProvider;->nDestroyMaterialProvider(J)V

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/google/android/filament/gltfio/MaterialProvider;->mNativeObject:J

    return-void
.end method

.method getNativeObject()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/MaterialProvider;->mNativeObject:J

    return-wide v0
.end method
