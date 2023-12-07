.class public final Lcom/google/android/gms/internal/measurement/zzbv$zze;
.super Lcom/google/android/gms/internal/measurement/zzhy;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbv$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzbv$zze;",
        "Lcom/google/android/gms/internal/measurement/zzbv$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzbv$zze;

.field private static volatile zzk:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzbv$zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzbv$zzc;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbv$zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzbv$zze;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzbv$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbv$zze;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/measurement/zzbv$zze$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzbv$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbm()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbv$zze$zza;

    return-object v0
.end method

.method static synthetic zzj()Lcom/google/android/gms/internal/measurement/zzbv$zze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzbv$zze;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbw;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzk:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/measurement/zzbv$zze;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzk:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzbv$zze;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzk:Lcom/google/android/gms/internal/measurement/zzjs;

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

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzbv$zze;

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

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzbv$zze;

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzbv$zze$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbv$zze$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbw;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzbv$zze;-><init>()V

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

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzc:I

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

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzd:I

    return p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzbv$zzc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzf:Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzi()Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zze()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzg:Z

    return p0
.end method

.method public final zzf()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzh:Z

    return p0
.end method

.method public final zzg()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzc:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzh()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zze;->zzi:Z

    return p0
.end method
