.class public final Lcom/google/android/gms/internal/measurement/zzcd$zze;
.super Lcom/google/android/gms/internal/measurement/zzhy;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzcd$zze;",
        "Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzcd$zze;

.field private static volatile zzk:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:F

.field private zzh:D

.field private zzi:Lcom/google/android/gms/internal/measurement/zzig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzig<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zze;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzig;

    return-void
.end method

.method private final zza(D)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzh:D

    return-void
.end method

.method private final zza(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzo()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza(D)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;Lcom/google/android/gms/internal/measurement/zzcd$zze;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze(Lcom/google/android/gms/internal/measurement/zzcd$zze;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzcd$zze;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzr()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzgg;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcd$zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzp()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcd$zze;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzcd$zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzq()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzcd$zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzs()V

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/measurement/zzcd$zze;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzr()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbm()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    return-object v0
.end method

.method static synthetic zzn()Lcom/google/android/gms/internal/measurement/zzcd$zze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zze;

    return-object v0
.end method

.method private final zzo()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zze;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zzp()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf:J

    return-void
.end method

.method private final zzq()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzh:D

    return-void
.end method

.method private final zzr()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Lcom/google/android/gms/internal/measurement/zzig;)Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzig;

    :cond_0
    return-void
.end method

.method private final zzs()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzig;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-class p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcf;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzk:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p1, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzk:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    sput-object p1, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzk:Lcom/google/android/gms/internal/measurement/zzjs;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zze;

    return-object p0

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzc"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string/jumbo p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string/jumbo p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    aput-object p0, p1, p2

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zze;

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b"

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcf;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf:J

    return-wide v0
.end method

.method public final zzg()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzh()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzg:F

    return p0
.end method

.method public final zzi()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzj()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzh:D

    return-wide v0
.end method

.method public final zzk()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zze;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzig;

    return-object p0
.end method

.method public final zzl()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzig;->size()I

    move-result p0

    return p0
.end method
