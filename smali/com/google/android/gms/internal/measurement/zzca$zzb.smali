.class public final Lcom/google/android/gms/internal/measurement/zzca$zzb;
.super Lcom/google/android/gms/internal/measurement/zzhy;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzca$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzca$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzca$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzm:Lcom/google/android/gms/internal/measurement/zzca$zzb;

.field private static volatile zzn:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzca$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/measurement/zzig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzig<",
            "Lcom/google/android/gms/internal/measurement/zzca$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/measurement/zzig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzig<",
            "Lcom/google/android/gms/internal/measurement/zzca$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/measurement/zzig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzig<",
            "Lcom/google/android/gms/internal/measurement/zzbv$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Ljava/lang/String;

.field private zzk:Z

.field private zzl:Lcom/google/android/gms/internal/measurement/zzig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzig<",
            "Lcom/google/android/gms/internal/measurement/zzck$zzc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzca$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzca$zzb;-><init>()V

    .line 53
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzm:Lcom/google/android/gms/internal/measurement/zzca$zzb;

    .line 54
    const-class v1, Lcom/google/android/gms/internal/measurement/zzca$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zze:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzig;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzig;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzi:Lcom/google/android/gms/internal/measurement/zzig;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzj:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzl:Lcom/google/android/gms/internal/measurement/zzig;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/measurement/zzca$zza;)V
    .locals 2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzig;

    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Lcom/google/android/gms/internal/measurement/zzig;)Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzig;

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzca$zzb;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzl()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzca$zzb;ILcom/google/android/gms/internal/measurement/zzca$zza;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zza(ILcom/google/android/gms/internal/measurement/zzca$zza;)V

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/measurement/zzca$zzb$zza;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzm:Lcom/google/android/gms/internal/measurement/zzca$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbm()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzca$zzb$zza;

    return-object v0
.end method

.method public static zzj()Lcom/google/android/gms/internal/measurement/zzca$zzb;
    .locals 1

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzm:Lcom/google/android/gms/internal/measurement/zzca$zzb;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/measurement/zzca$zzb;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzm:Lcom/google/android/gms/internal/measurement/zzca$zzb;

    return-object v0
.end method

.method private final zzl()V
    .locals 1

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzi:Lcom/google/android/gms/internal/measurement/zzig;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzca$zza;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzca$zza;

    return-object p0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcc;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 47
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 45
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 36
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzn:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_1

    .line 38
    const-class p1, Lcom/google/android/gms/internal/measurement/zzca$zzb;

    monitor-enter p1

    .line 39
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzn:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_0

    .line 41
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzm:Lcom/google/android/gms/internal/measurement/zzca$zzb;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    .line 42
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzn:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 43
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

    .line 35
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzm:Lcom/google/android/gms/internal/measurement/zzca$zzb;

    return-object p0

    :pswitch_4
    const/16 p0, 0xe

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

    .line 32
    const-class p2, Lcom/google/android/gms/internal/measurement/zzca$zzc;

    aput-object p2, p0, p1

    const/4 p1, 0x6

    const-string/jumbo p2, "zzh"

    aput-object p2, p0, p1

    const/4 p1, 0x7

    const-class p2, Lcom/google/android/gms/internal/measurement/zzca$zza;

    aput-object p2, p0, p1

    const/16 p1, 0x8

    const-string/jumbo p2, "zzi"

    aput-object p2, p0, p1

    const/16 p1, 0x9

    const-class p2, Lcom/google/android/gms/internal/measurement/zzbv$zza;

    aput-object p2, p0, p1

    const/16 p1, 0xa

    const-string/jumbo p2, "zzj"

    aput-object p2, p0, p1

    const/16 p1, 0xb

    const-string/jumbo p2, "zzk"

    aput-object p2, p0, p1

    const/16 p1, 0xc

    const-string/jumbo p2, "zzl"

    aput-object p2, p0, p1

    const/16 p1, 0xd

    const-class p2, Lcom/google/android/gms/internal/measurement/zzck$zzc;

    aput-object p2, p0, p1

    .line 34
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzm:Lcom/google/android/gms/internal/measurement/zzca$zzb;

    const-string p2, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0004\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\u0008\u1007\u0004\t\u001b"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 31
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzca$zzb$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzca$zzb$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcc;)V

    return-object p0

    .line 30
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzca$zzb;-><init>()V

    return-object p0

    nop

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

    .line 9
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzc:I

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

    .line 10
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzd:J

    return-wide v0
.end method

.method public final zzc()Z
    .locals 0

    .line 11
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzc:I

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

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzca$zzc;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzig;

    return-object p0
.end method

.method public final zzf()I
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzig;->size()I

    move-result p0

    return p0
.end method

.method public final zzg()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbv$zza;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzi:Lcom/google/android/gms/internal/measurement/zzig;

    return-object p0
.end method

.method public final zzh()Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzk:Z

    return p0
.end method
