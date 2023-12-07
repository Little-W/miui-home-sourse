.class final Lcom/google/android/gms/internal/measurement/zzgo;
.super Ljava/lang/Object;


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/measurement/zzhl;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhl;->zza()Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzd:Lcom/google/android/gms/internal/measurement/zzhl;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzd:Lcom/google/android/gms/internal/measurement/zzhl;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
