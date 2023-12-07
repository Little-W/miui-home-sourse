.class public final Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;
.super Lcom/google/android/gms/internal/measurement/zzhy$zzb;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzcd$zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzf;",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzcf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzu()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzf;Lcom/google/android/gms/internal/measurement/zzcd$zzg;)V

    return-object p0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    move-result-object p0

    return-object p0
.end method
