.class public final Lcom/google/android/gms/internal/measurement/zzod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzoa;


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

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzdh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdm;

    const-string v1, "com.google.android.gms.measurement"

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzde;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdm;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.sdk.collection.enable_extend_user_property_size"

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdm;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzod;->zza:Lcom/google/android/gms/internal/measurement/zzdh;

    const-string v1, "measurement.sdk.collection.last_deep_link_referrer2"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdm;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzod;->zzb:Lcom/google/android/gms/internal/measurement/zzdh;

    const-string v1, "measurement.sdk.collection.last_deep_link_referrer_campaign2"

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdm;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzod;->zzc:Lcom/google/android/gms/internal/measurement/zzdh;

    const-string v1, "measurement.sdk.collection.last_gclid_from_referrer2"

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdm;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzod;->zzd:Lcom/google/android/gms/internal/measurement/zzdh;

    const-string v1, "measurement.id.sdk.collection.last_deep_link_referrer2"

    const-wide/16 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdm;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzod;->zze:Lcom/google/android/gms/internal/measurement/zzdh;

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
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzod;->zza:Lcom/google/android/gms/internal/measurement/zzdh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzod;->zzb:Lcom/google/android/gms/internal/measurement/zzdh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzod;->zzc:Lcom/google/android/gms/internal/measurement/zzdh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzd()Z
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzod;->zzd:Lcom/google/android/gms/internal/measurement/zzdh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
