.class public final Lcom/google/android/gms/internal/measurement/zzng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznh;


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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdm;

    const-string v1, "com.google.android.gms.measurement"

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzde;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdm;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.service.use_appinfo_modified"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdm;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzng;->zza:Lcom/google/android/gms/internal/measurement/zzdh;

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzng;->zza:Lcom/google/android/gms/internal/measurement/zzdh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzc()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
