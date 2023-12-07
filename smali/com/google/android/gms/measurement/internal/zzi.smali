.class final Lcom/google/android/gms/measurement/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzw;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Z

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/zzw;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzi;->zze:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzi;->zza:Lcom/google/android/gms/internal/measurement/zzw;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzc:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzi;->zze:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzv()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzi;->zza:Lcom/google/android/gms/internal/measurement/zzw;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzc:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzd:Z

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/gms/measurement/internal/zzir;->zza(Lcom/google/android/gms/internal/measurement/zzw;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
