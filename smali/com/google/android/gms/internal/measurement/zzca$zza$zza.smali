.class public final Lcom/google/android/gms/internal/measurement/zzca$zza$zza;
.super Lcom/google/android/gms/internal/measurement/zzhy$zzb;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzca$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzca$zza;",
        "Lcom/google/android/gms/internal/measurement/zzca$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzf()Lcom/google/android/gms/internal/measurement/zzca$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzcc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzca$zza$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzca$zza$zza;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzu()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzca$zza;->zza(Lcom/google/android/gms/internal/measurement/zzca$zza;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zza()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzca$zza;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzb()Z

    move-result p0

    return p0
.end method

.method public final zzc()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzc()Z

    move-result p0

    return p0
.end method

.method public final zzd()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzd()Z

    move-result p0

    return p0
.end method

.method public final zze()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzca$zza;->zze()I

    move-result p0

    return p0
.end method
