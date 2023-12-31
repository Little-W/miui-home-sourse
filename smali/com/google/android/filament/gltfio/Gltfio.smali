.class public Lcom/google/android/filament/gltfio/Gltfio;
.super Ljava/lang/Object;
.source "Gltfio.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    .line 27
    invoke-static {}, Lcom/google/android/filament/Filament;->init()V

    const-string v0, "gltfio-jni"

    .line 28
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
