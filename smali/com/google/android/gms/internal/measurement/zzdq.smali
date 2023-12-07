.class public final Lcom/google/android/gms/internal/measurement/zzdq;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzdt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BuildInfo must be non-null"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzdt;->zza()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zza:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "flagName must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zza:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzds;->zza:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzec;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfe;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfe;->zza(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
