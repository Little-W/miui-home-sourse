.class public final Lcom/google/android/gms/internal/measurement/zzpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzec<",
        "Lcom/google/android/gms/internal/measurement/zzpk;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzpl;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzec<",
            "Lcom/google/android/gms/internal/measurement/zzpk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpl;->zza:Lcom/google/android/gms/internal/measurement/zzpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzpn;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzpl;-><init>(Lcom/google/android/gms/internal/measurement/zzec;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzec<",
            "Lcom/google/android/gms/internal/measurement/zzpk;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpl;->zzb:Lcom/google/android/gms/internal/measurement/zzec;

    return-void
.end method

.method public static zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpl;->zza:Lcom/google/android/gms/internal/measurement/zzpl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpl;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpk;->zza()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzpl;->zzb:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzec;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzpk;

    return-object p0
.end method
