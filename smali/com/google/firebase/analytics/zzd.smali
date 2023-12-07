.class final Lcom/google/firebase/analytics/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzia;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzag;->zzf()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzag;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzag;->zzg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzag;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag;->zzd(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzag;->zzd()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzag;->zzc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zze()J
    .locals 2

    iget-object p0, p0, Lcom/google/firebase/analytics/zzd;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzag;->zze()J

    move-result-wide v0

    return-wide v0
.end method
