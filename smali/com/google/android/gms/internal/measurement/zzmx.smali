.class public final Lcom/google/android/gms/internal/measurement/zzmx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzec<",
        "Lcom/google/android/gms/internal/measurement/zzmw;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzmx;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzec<",
            "Lcom/google/android/gms/internal/measurement/zzmw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmx;->zza:Lcom/google/android/gms/internal/measurement/zzmx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmz;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmx;-><init>(Lcom/google/android/gms/internal/measurement/zzec;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzec<",
            "Lcom/google/android/gms/internal/measurement/zzmw;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmx;->zzb:Lcom/google/android/gms/internal/measurement/zzec;

    return-void
.end method

.method public static zzb()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmx;->zza:Lcom/google/android/gms/internal/measurement/zzmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmx;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmw;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmx;->zza:Lcom/google/android/gms/internal/measurement/zzmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmx;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmw;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzd()Z
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmx;->zza:Lcom/google/android/gms/internal/measurement/zzmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmx;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmw;->zzc()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmx;->zza:Lcom/google/android/gms/internal/measurement/zzmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmx;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmw;->zzd()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmx;->zzb:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzec;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmw;

    return-object v0
.end method
