.class public final Lcom/google/firebase/analytics/connector/internal/zzc;
.super Ljava/lang/Object;


# instance fields
.field zza:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

.field private zzc:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field private zzd:Lcom/google/firebase/analytics/connector/internal/zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzc:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    new-instance p1, Lcom/google/firebase/analytics/connector/internal/zzf;

    invoke-direct {p1, p0}, Lcom/google/firebase/analytics/connector/internal/zzf;-><init>(Lcom/google/firebase/analytics/connector/internal/zzc;)V

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzd:Lcom/google/firebase/analytics/connector/internal/zzf;

    iget-object p1, p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzc:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    iget-object p2, p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzd:Lcom/google/firebase/analytics/connector/internal/zzf;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zza:Ljava/util/Set;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/analytics/connector/internal/zzc;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

    return-object p0
.end method
