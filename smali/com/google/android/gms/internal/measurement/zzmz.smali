.class public final Lcom/google/android/gms/internal/measurement/zzmz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmw;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzdh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzdh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzdh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzdh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdm;

    const-string v1, "com.google.android.gms.measurement"

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzde;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdm;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.service.audience.fix_skip_audience_with_failed_filters"

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdm;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzmz;->zza:Lcom/google/android/gms/internal/measurement/zzdh;

    const/4 v1, 0x0

    const-string v2, "measurement.audience.refresh_event_count_filters_timestamp"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzdm;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzmz;->zzb:Lcom/google/android/gms/internal/measurement/zzdh;

    const-string v2, "measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzdm;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzmz;->zzc:Lcom/google/android/gms/internal/measurement/zzdh;

    const-string v2, "measurement.audience.use_bundle_timestamp_for_event_count_filters"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzdm;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmz;->zzd:Lcom/google/android/gms/internal/measurement/zzdh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zzb()Z
    .locals 0

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzmz;->zzb:Lcom/google/android/gms/internal/measurement/zzdh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzc()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzc()Z
    .locals 0

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzmz;->zzc:Lcom/google/android/gms/internal/measurement/zzdh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzc()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zzd()Z
    .locals 0

    .line 5
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzmz;->zzd:Lcom/google/android/gms/internal/measurement/zzdh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzc()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
