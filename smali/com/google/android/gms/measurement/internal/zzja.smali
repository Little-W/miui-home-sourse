.class final Lcom/google/android/gms/measurement/internal/zzja;
.super Lcom/google/android/gms/measurement/internal/zzai;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzir;Lcom/google/android/gms/measurement/internal/zzgt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzgt;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v0, "Tasks have been queued for a long time"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void
.end method
