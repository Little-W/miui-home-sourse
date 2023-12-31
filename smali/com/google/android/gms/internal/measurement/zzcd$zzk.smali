.class public final Lcom/google/android/gms/internal/measurement/zzcd$zzk;
.super Lcom/google/android/gms/internal/measurement/zzhy;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzk"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzk;",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzcd$zzk;

.field private static volatile zzk:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:F

.field private zzi:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;-><init>()V

    .line 73
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    .line 74
    const-class v1, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zze:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzf:Ljava/lang/String;

    return-void
.end method

.method private final zza(D)V
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    .line 38
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzi:D

    return-void
.end method

.method private final zza(J)V
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    .line 8
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzd:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzl()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk;D)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zza(D)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk;J)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zza(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zzb(J)V
    .locals 1

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    .line 30
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzg:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzk;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzm()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzk;J)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzb(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzk;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzcd$zzk;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzn()V

    return-void
.end method

.method public static zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbm()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/measurement/zzcd$zzk;
    .locals 1

    .line 63
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    return-object v0
.end method

.method private final zzl()V
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzf:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzf:Ljava/lang/String;

    return-void
.end method

.method private final zzm()V
    .locals 2

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzg:J

    return-void
.end method

.method private final zzn()V
    .locals 2

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzi:D

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcf;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 62
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 60
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 51
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzk:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_1

    .line 53
    const-class p1, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    monitor-enter p1

    .line 54
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzk:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_0

    .line 56
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    .line 57
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzk:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 58
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 50
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    return-object p0

    :pswitch_4
    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string/jumbo p3, "zzc"

    aput-object p3, p0, p1

    const-string/jumbo p1, "zzd"

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string/jumbo p2, "zze"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string/jumbo p2, "zzf"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string/jumbo p2, "zzg"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string/jumbo p2, "zzh"

    aput-object p2, p0, p1

    const/4 p1, 0x6

    const-string/jumbo p2, "zzi"

    aput-object p2, p0, p1

    .line 49
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 46
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcf;)V

    return-object p0

    .line 45
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;-><init>()V

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

    .line 5
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzd:J

    return-wide v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Z
    .locals 0

    .line 15
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Z
    .locals 0

    .line 27
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzg()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzg:J

    return-wide v0
.end method

.method public final zzh()Z
    .locals 0

    .line 35
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzi()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzi:D

    return-wide v0
.end method
