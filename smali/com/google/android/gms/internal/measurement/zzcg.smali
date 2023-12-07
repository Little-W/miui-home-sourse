.class final Lcom/google/android/gms/internal/measurement/zzcg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzif;


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzif;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Lcom/google/android/gms/internal/measurement/zzif;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzce;->zza(I)Lcom/google/android/gms/internal/measurement/zzce;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
