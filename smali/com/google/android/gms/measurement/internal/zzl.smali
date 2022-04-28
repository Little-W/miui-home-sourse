.class final Lcom/google/android/gms/measurement/internal/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$zza;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$zza;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzl;->zzb:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzl;->zza:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzl;->zzb:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzl;->zza:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzgw;)V

    return-void
.end method
