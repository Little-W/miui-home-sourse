.class Lcom/google/android/gms/measurement/internal/zzkj;
.super Lcom/google/android/gms/measurement/internal/zzgr;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgt;


# instance fields
.field protected final zza:Lcom/google/android/gms/measurement/internal/zzkl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zzu()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzgr;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    return-void
.end method


# virtual methods
.method public f_()Lcom/google/android/gms/measurement/internal/zzkr;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzh()Lcom/google/android/gms/measurement/internal/zzkr;

    move-result-object v0

    return-object v0
.end method

.method public zzf()Lcom/google/android/gms/measurement/internal/zzjr;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzi()Lcom/google/android/gms/measurement/internal/zzjr;

    move-result-object v0

    return-object v0
.end method

.method public zzh()Lcom/google/android/gms/measurement/internal/zzr;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzf()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    return-object v0
.end method

.method public zzi()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    return-object v0
.end method

.method public zzj()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzc()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    return-object v0
.end method
