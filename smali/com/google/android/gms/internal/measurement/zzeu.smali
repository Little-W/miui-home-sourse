.class final Lcom/google/android/gms/internal/measurement/zzeu;
.super Ljava/util/AbstractCollection;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzem;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzem;->zzg()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzem;->size()I

    move-result v0

    return v0
.end method
