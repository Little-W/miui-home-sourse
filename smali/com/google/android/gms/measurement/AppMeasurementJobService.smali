.class public final Lcom/google/android/gms/measurement/AppMeasurementJobService;
.super Landroid/app/job/JobService;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzju;


# instance fields
.field private zza:Lcom/google/android/gms/measurement/internal/zzjq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/zzjq<",
            "Lcom/google/android/gms/measurement/AppMeasurementJobService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private final zza()Lcom/google/android/gms/measurement/internal/zzjq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/measurement/internal/zzjq<",
            "Lcom/google/android/gms/measurement/AppMeasurementJobService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzjq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    return-object p0
.end method


# virtual methods
.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()V

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Landroid/app/job/JobParameters;)Z

    move-result p0

    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public final zza(Landroid/app/job/JobParameters;Z)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final zza(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final zza(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
