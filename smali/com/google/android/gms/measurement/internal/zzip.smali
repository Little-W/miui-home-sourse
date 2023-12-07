.class final Lcom/google/android/gms/measurement/internal/zzip;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzij;

.field private final synthetic zzb:J

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzii;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzii;Lcom/google/android/gms/measurement/internal/zzij;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzc:Lcom/google/android/gms/measurement/internal/zzii;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzip;->zza:Lcom/google/android/gms/measurement/internal/zzij;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzb:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzc:Lcom/google/android/gms/measurement/internal/zzii;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzip;->zza:Lcom/google/android/gms/measurement/internal/zzij;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzb:J

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Lcom/google/android/gms/measurement/internal/zzii;Lcom/google/android/gms/measurement/internal/zzij;ZJ)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzc:Lcom/google/android/gms/measurement/internal/zzii;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzii;->zza:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzir;->zza(Lcom/google/android/gms/measurement/internal/zzij;)V

    return-void
.end method
