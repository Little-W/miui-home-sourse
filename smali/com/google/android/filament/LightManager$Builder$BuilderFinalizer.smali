.class Lcom/google/android/filament/LightManager$Builder$BuilderFinalizer;
.super Ljava/lang/Object;
.source "LightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/LightManager$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderFinalizer"
.end annotation


# instance fields
.field private final mNativeObject:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/LightManager$Builder$BuilderFinalizer;->mNativeObject:J

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 3

    .line 780
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :catch_0
    iget-wide v0, p0, Lcom/google/android/filament/LightManager$Builder$BuilderFinalizer;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/google/android/filament/LightManager;->access$2000(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-wide v1, p0, Lcom/google/android/filament/LightManager$Builder$BuilderFinalizer;->mNativeObject:J

    invoke-static {v1, v2}, Lcom/google/android/filament/LightManager;->access$2000(J)V

    .line 784
    throw v0

    :goto_0
    return-void
.end method
