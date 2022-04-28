.class final Lcom/google/android/gms/measurement/internal/zzkg;
.super Lcom/google/android/gms/measurement/internal/zzai;
.source "com.google.android.gms:play-services-measurement@@18.0.0"


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzkl;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzkh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkh;Lcom/google/android/gms/measurement/internal/zzgt;Lcom/google/android/gms/measurement/internal/zzkl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Lcom/google/android/gms/measurement/internal/zzkh;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzgt;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Lcom/google/android/gms/measurement/internal/zzkh;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkh;->zze()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Lcom/google/android/gms/measurement/internal/zzkh;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzo()V

    return-void
.end method
