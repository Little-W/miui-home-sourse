.class public final Lcom/google/android/gms/internal/measurement/zzdm;
.super Ljava/lang/Object;


# instance fields
.field final zza:Landroid/net/Uri;

.field final zzb:Ljava/lang/String;

.field final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Z

.field private final zzf:Z

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/measurement/zzdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdw<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 10

    const/4 v1, 0x0

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/measurement/zzdm;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/internal/measurement/zzdw;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/internal/measurement/zzdw;)V
    .locals 0
    .param p9    # Lcom/google/android/gms/internal/measurement/zzdw;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lcom/google/android/gms/internal/measurement/zzdw<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zza:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzc:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zze:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzf:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzg:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzh:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdm;->zzi:Lcom/google/android/gms/internal/measurement/zzdw;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzdh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-wide/high16 p2, -0x3ff8000000000000L    # -3.0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;DZ)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzdh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object p0

    return-object p0
.end method
