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
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzem;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzem;->zzg()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzem;->size()I

    move-result p0

    return p0
.end method
