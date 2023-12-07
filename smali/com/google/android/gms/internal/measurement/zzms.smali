.class public final Lcom/google/android/gms/internal/measurement/zzms;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzec<",
        "Lcom/google/android/gms/internal/measurement/zzmv;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzms;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzec<",
            "Lcom/google/android/gms/internal/measurement/zzmv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzms;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzms;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzms;->zza:Lcom/google/android/gms/internal/measurement/zzms;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmu;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzms;-><init>(Lcom/google/android/gms/internal/measurement/zzec;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzec<",
            "Lcom/google/android/gms/internal/measurement/zzmv;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzms;->zzb:Lcom/google/android/gms/internal/measurement/zzec;

    return-void
.end method

.method public static zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzms;->zza:Lcom/google/android/gms/internal/measurement/zzms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzms;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzms;->zza:Lcom/google/android/gms/internal/measurement/zzms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzms;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzb()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzms;->zzb:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzec;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzmv;

    return-object p0
.end method
