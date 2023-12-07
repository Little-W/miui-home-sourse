.class final Lcom/google/android/gms/internal/measurement/zzkh;
.super Lcom/google/android/gms/internal/measurement/zzkn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzkn;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzkc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzkc;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkh;->zza:Lcom/google/android/gms/internal/measurement/zzkc;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzkn;-><init>(Lcom/google/android/gms/internal/measurement/zzkc;Lcom/google/android/gms/internal/measurement/zzkf;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzkc;Lcom/google/android/gms/internal/measurement/zzkf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkh;-><init>(Lcom/google/android/gms/internal/measurement/zzkc;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzke;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzkh;->zza:Lcom/google/android/gms/internal/measurement/zzkc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzke;-><init>(Lcom/google/android/gms/internal/measurement/zzkc;Lcom/google/android/gms/internal/measurement/zzkf;)V

    return-object v0
.end method
