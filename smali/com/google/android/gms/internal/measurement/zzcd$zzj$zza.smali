.class public final Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;
.super Lcom/google/android/gms/internal/measurement/zzhy$zzb;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzcd$zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzj;",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzj;->zzf()Lcom/google/android/gms/internal/measurement/zzcd$zzj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzcf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzu()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzj;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzj;I)V

    return-object p0
.end method

.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzu()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzj;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzj;Ljava/lang/Iterable;)V

    return-object p0
.end method
