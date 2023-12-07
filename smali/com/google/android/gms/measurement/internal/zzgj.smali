.class final Lcom/google/android/gms/measurement/internal/zzgj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzfz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfz;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgj;->zzb:Lcom/google/android/gms/measurement/internal/zzfz;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgj;->zza:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgj;->zzb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Lcom/google/android/gms/measurement/internal/zzkl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzr()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgj;->zzb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Lcom/google/android/gms/measurement/internal/zzkl;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgj;->zza:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzb()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzci:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzn()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v5, "Setting consent, package, consent"

    invoke-virtual {v3, v5, v4, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzac;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_0
    return-void
.end method
