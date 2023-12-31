.class public final Lcom/google/android/gms/internal/measurement/zzcd$zza;
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
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzcd$zza;",
        "Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzcd$zza;

.field private static volatile zzi:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzcd$zzi;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzcd$zzi;

.field private zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcd$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zza;-><init>()V

    .line 50
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzcd$zza;

    .line 51
    const-class v1, Lcom/google/android/gms/internal/measurement/zzcd$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    return-void
.end method

.method private final zza(I)V
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc:I

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzd:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zza;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzi;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzi;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zza;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zza(Z)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzi;)V
    .locals 0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zze:Lcom/google/android/gms/internal/measurement/zzcd$zzi;

    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc:I

    return-void
.end method

.method private final zza(Z)V
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc:I

    .line 22
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzg:Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcd$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzi;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzi;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzi;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzcd$zzi;

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc:I

    return-void
.end method

.method public static zzh()Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzcd$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbm()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/measurement/zzcd$zza;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzcd$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcf;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 43
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 41
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 32
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_1

    .line 34
    const-class p1, Lcom/google/android/gms/internal/measurement/zzcd$zza;

    monitor-enter p1

    .line 35
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_0

    .line 37
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzcd$zza;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    .line 38
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 39
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

    .line 31
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzcd$zza;

    return-object p0

    :pswitch_4
    const/4 p0, 0x5

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

    .line 30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzcd$zza;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1007\u0003"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 27
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zza$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcf;)V

    return-object p0

    .line 26
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zza;-><init>()V

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

    .line 3
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()I
    .locals 0

    .line 4
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzd:I

    return p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzi;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zze:Lcom/google/android/gms/internal/measurement/zzcd$zzi;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzi;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzd()Z
    .locals 0

    .line 13
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzcd$zzi;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzcd$zzi;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzi;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzi;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzf()Z
    .locals 0

    .line 19
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzc:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzg()Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zza;->zzg:Z

    return p0
.end method
