.class final Lcom/google/android/gms/internal/measurement/zzkz$zzb;
.super Lcom/google/android/gms/internal/measurement/zzkz$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzkz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzb"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkz$zzc;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;J)B
    .locals 0

    sget-boolean p0, Lcom/google/android/gms/internal/measurement/zzkz;->zza:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzg(Ljava/lang/Object;J)B

    move-result p0

    return p0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzh(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public final zza(Ljava/lang/Object;JB)V
    .locals 0

    sget-boolean p0, Lcom/google/android/gms/internal/measurement/zzkz;->zza:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JB)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JD)V
    .locals 6

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkz$zzc;->zza(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JF)V
    .locals 0

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzkz$zzc;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JZ)V
    .locals 0

    sget-boolean p0, Lcom/google/android/gms/internal/measurement/zzkz;->zza:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;JZ)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzkz;->zzc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;J)Z
    .locals 0

    sget-boolean p0, Lcom/google/android/gms/internal/measurement/zzkz;->zza:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzi(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzj(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public final zzc(Ljava/lang/Object;J)F
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkz$zzc;->zze(Ljava/lang/Object;J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final zzd(Ljava/lang/Object;J)D
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkz$zzc;->zzf(Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method
