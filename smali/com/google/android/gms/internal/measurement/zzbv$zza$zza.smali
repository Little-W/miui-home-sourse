.class public final Lcom/google/android/gms/internal/measurement/zzbv$zza$zza;
.super Lcom/google/android/gms/internal/measurement/zzhy$zzb;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbv$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzbv$zza;",
        "Lcom/google/android/gms/internal/measurement/zzbv$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbv$zza;->zzg()Lcom/google/android/gms/internal/measurement/zzbv$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzbw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzbv$zza$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzbv$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbv$zza;->zzd()I

    move-result p0

    return p0
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzbv$zzb$zza;)Lcom/google/android/gms/internal/measurement/zzbv$zza$zza;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzu()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbv$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzbv$zzb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbv$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbv$zza;ILcom/google/android/gms/internal/measurement/zzbv$zzb;)V

    return-object p0
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzbv$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbv$zza$zza;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzu()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbv$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzbv$zze;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbv$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbv$zza;ILcom/google/android/gms/internal/measurement/zzbv$zze;)V

    return-object p0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzbv$zze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzbv$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbv$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbv$zze;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzbv$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbv$zza;->zzf()I

    move-result p0

    return p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzbv$zzb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzbv$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbv$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbv$zzb;

    move-result-object p0

    return-object p0
.end method
