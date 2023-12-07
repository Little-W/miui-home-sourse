.class public Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    return-void
.end method


# virtual methods
.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzgz;)V

    return-void
.end method

.method public final zza(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Z)V

    return-void
.end method
