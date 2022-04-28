.class final Lcom/google/android/gms/internal/measurement/zzeo;
.super Lcom/google/android/gms/internal/measurement/zzet;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzem;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeo;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzet;-><init>(Lcom/google/android/gms/internal/measurement/zzem;Lcom/google/android/gms/internal/measurement/zzep;)V

    return-void
.end method


# virtual methods
.method final synthetic zza(I)Ljava/lang/Object;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzev;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzeo;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzev;-><init>(Lcom/google/android/gms/internal/measurement/zzem;I)V

    return-object v0
.end method
