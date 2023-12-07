.class public abstract Lcom/google/android/gms/internal/measurement/zzdh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static volatile zzb:Lcom/google/android/gms/internal/measurement/zzdp;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzc:Z

.field private static final zzd:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static zze:Lcom/google/android/gms/internal/measurement/zzdq;

.field private static final zzi:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final zzf:Lcom/google/android/gms/internal/measurement/zzdm;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile zzj:I

.field private volatile zzk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdh;->zza:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdh;->zzb:Lcom/google/android/gms/internal/measurement/zzdp;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzdh;->zzc:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdh;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdq;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzdj;->zza:Lcom/google/android/gms/internal/measurement/zzdt;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>(Lcom/google/android/gms/internal/measurement/zzdt;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdh;->zze:Lcom/google/android/gms/internal/measurement/zzdq;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdh;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdm;",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzj:I

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdm;->zza:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzf:Lcom/google/android/gms/internal/measurement/zzdm;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzh:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzl:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/zzdi;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzdh;-><init>(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;DZ)Lcom/google/android/gms/internal/measurement/zzdh;
    .locals 0

    const-wide/high16 p2, -0x3ff8000000000000L    # -3.0

    const/4 p4, 0x1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzdh;->zzb(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;DZ)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/measurement/zzdh;
    .locals 0

    const/4 p4, 0x1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzdh;->zzb(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;
    .locals 0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzdh;->zzb(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/zzdh;
    .locals 0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzdh;->zzb(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzg:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzg:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method static zza()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdh;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static zza(Landroid/content/Context;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdh;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzdh;->zzb:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdp;->zza()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzct;->zzc()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdo;->zza()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcy;->zza()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzdg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzdg;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzcq;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/zzcq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzec;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzdh;->zzb:Lcom/google/android/gms/internal/measurement/zzdp;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;DZ)Lcom/google/android/gms/internal/measurement/zzdh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdm;",
            "Ljava/lang/String;",
            "DZ)",
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzdk;

    const-wide/high16 p3, -0x3ff8000000000000L    # -3.0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/google/android/gms/internal/measurement/zzdk;-><init>(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;Ljava/lang/Double;Z)V

    return-object p2
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/measurement/zzdh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdm;",
            "Ljava/lang/String;",
            "JZ)",
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance p4, Lcom/google/android/gms/internal/measurement/zzdi;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzdi;-><init>(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;Ljava/lang/Long;Z)V

    return-object p4
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzdh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdm;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p3, Lcom/google/android/gms/internal/measurement/zzdn;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzdn;-><init>(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/zzdh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdm;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/measurement/zzdh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance p3, Lcom/google/android/gms/internal/measurement/zzdl;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzdl;-><init>(Lcom/google/android/gms/internal/measurement/zzdm;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    return-object p3
.end method

.method static final synthetic zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzdy;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzdc;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzdc;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzdy;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic zzd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzf:Lcom/google/android/gms/internal/measurement/zzdm;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzdm;->zzc:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzl:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdh;->zze:Lcom/google/android/gms/internal/measurement/zzdq;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zza(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzb(ZLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdh;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzj:I

    if-ge v1, v0, :cond_e

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzj:I

    if-ge v1, v0, :cond_d

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzdh;->zzb:Lcom/google/android/gms/internal/measurement/zzdp;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    const-string v5, "Must call PhenotypeFlag.init() first"

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdp;->zza()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzcy;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzcy;

    move-result-object v4

    const-string v5, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcy;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzcp;->zzb:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    const/4 v3, 0x0

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzf:Lcom/google/android/gms/internal/measurement/zzdm;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzdm;->zza:Landroid/net/Uri;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdp;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzf:Lcom/google/android/gms/internal/measurement/zzdm;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzdm;->zza:Landroid/net/Uri;

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdp;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzf:Lcom/google/android/gms/internal/measurement/zzdm;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzdm;->zza:Landroid/net/Uri;

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzct;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zzct;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdp;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzdo;->zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdo;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/zzcx;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_5
    const-string v2, "PhenotypeFlag"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "PhenotypeFlag"

    const-string v4, "Bypass reading Phenotype values for flag: "

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_3
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdp;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzcy;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzcy;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzf:Lcom/google/android/gms/internal/measurement/zzdm;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzdm;->zzb:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/zzcx;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    :cond_9
    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzh:Ljava/lang/Object;

    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdp;->zzb()Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzec;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdy;->zza()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdy;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdd;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzf:Lcom/google/android/gms/internal/measurement/zzdm;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzdm;->zza:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzf:Lcom/google/android/gms/internal/measurement/zzdm;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzdm;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzdd;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzh:Ljava/lang/Object;

    goto :goto_7

    :cond_b
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_c
    :goto_7
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzk:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzj:I

    :cond_d
    monitor-exit p0

    goto :goto_8

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_e
    :goto_8
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzk:Ljava/lang/Object;

    return-object p0
.end method
