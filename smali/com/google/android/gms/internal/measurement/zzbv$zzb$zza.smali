.class public final Lcom/google/android/gms/internal/measurement/zzbv$zzb$zza;
.super Lcom/google/android/gms/internal/measurement/zzhy$zzb;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbv$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzbv$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzbv$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzm()Lcom/google/android/gms/internal/measurement/zzbv$zzb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzbw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzbv$zzb$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/measurement/zzbv$zzc;)Lcom/google/android/gms/internal/measurement/zzbv$zzb$zza;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzu()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbv$zzb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzbv$zzb;ILcom/google/android/gms/internal/measurement/zzbv$zzc;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbv$zzb$zza;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzu()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbv$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzbv$zzb;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzbv$zzc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzbv$zzb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zza(I)Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzbv$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zzc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzbv$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbv$zzb;->zze()I

    move-result p0

    return p0
.end method
