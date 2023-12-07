.class final Lcom/google/android/gms/internal/measurement/zzkv;
.super Lcom/google/android/gms/internal/measurement/zzkt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzkt<",
        "Lcom/google/android/gms/internal/measurement/zzks;",
        "Lcom/google/android/gms/internal/measurement/zzks;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkt;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzks;)V
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhy;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhy;->zzb:Lcom/google/android/gms/internal/measurement/zzks;

    return-void
.end method


# virtual methods
.method final synthetic zza()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzks;->zzb()Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object p0

    return-object p0
.end method

.method final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzks;->zzc()V

    return-object p1
.end method

.method final synthetic zza(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    shl-int/lit8 p0, p2, 0x3

    or-int/lit8 p0, p0, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzks;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    shl-int/lit8 p0, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzks;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzgp;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    shl-int/lit8 p0, p2, 0x3

    or-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0, p3}, Lcom/google/android/gms/internal/measurement/zzks;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzks;

    shl-int/lit8 p0, p2, 0x3

    or-int/lit8 p0, p0, 0x3

    invoke-virtual {p1, p0, p3}, Lcom/google/android/gms/internal/measurement/zzks;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzks;->zzb(Lcom/google/android/gms/internal/measurement/zzlm;)V

    return-void
.end method

.method final bridge synthetic zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzks;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzjy;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method final synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzhy;->zzb:Lcom/google/android/gms/internal/measurement/zzks;

    return-object p0
.end method

.method final synthetic zzb(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    shl-int/lit8 p0, p2, 0x3

    or-int/lit8 p0, p0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzks;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzlm;)V

    return-void
.end method

.method final synthetic zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzks;)V

    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhy;->zzb:Lcom/google/android/gms/internal/measurement/zzks;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzks;->zza()Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzks;->zzb()Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzks;)V

    :cond_0
    return-object p0
.end method

.method final synthetic zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzks;->zza()Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/zzks;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzks;Lcom/google/android/gms/internal/measurement/zzks;)Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object p0

    return-object p0
.end method

.method final zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzhy;->zzb:Lcom/google/android/gms/internal/measurement/zzks;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzks;->zzc()V

    return-void
.end method

.method final synthetic zze(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzks;->zzd()I

    move-result p0

    return p0
.end method

.method final synthetic zzf(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzks;->zze()I

    move-result p0

    return p0
.end method
