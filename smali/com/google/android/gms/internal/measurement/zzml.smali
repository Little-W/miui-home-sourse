.class public final Lcom/google/android/gms/internal/measurement/zzml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzec<",
        "Lcom/google/android/gms/internal/measurement/zzmk;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzml;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzec<",
            "Lcom/google/android/gms/internal/measurement/zzmk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzml;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzml;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmn;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzml;-><init>(Lcom/google/android/gms/internal/measurement/zzec;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzec<",
            "Lcom/google/android/gms/internal/measurement/zzmk;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzml;->zzb:Lcom/google/android/gms/internal/measurement/zzec;

    return-void
.end method

.method public static zzb()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzml;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmk;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzml;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmk;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzd()Z
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzml;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmk;->zzc()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzml;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmk;->zzd()Z

    move-result v0

    return v0
.end method

.method public static zzf()J
    .locals 2

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzml;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmk;->zze()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzml;->zzb:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzec;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmk;

    return-object v0
.end method
