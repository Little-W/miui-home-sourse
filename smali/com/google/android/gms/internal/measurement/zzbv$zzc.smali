.class public final Lcom/google/android/gms/internal/measurement/zzbv$zzc;
.super Lcom/google/android/gms/internal/measurement/zzhy;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbv$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzbv$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzbv$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzbv$zzc;

.field private static volatile zzi:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzbv$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/measurement/zzbv$zzf;

.field private zze:Lcom/google/android/gms/internal/measurement/zzbv$zzd;

.field private zzf:Z

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzh:Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbv$zzc;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzc:I

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/measurement/zzbv$zzc;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzh:Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    return-object v0
.end method

.method static synthetic zzj()Lcom/google/android/gms/internal/measurement/zzbv$zzc;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzh:Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbw;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 34
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 32
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_1

    .line 25
    const-class p1, Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    monitor-enter p1

    .line 26
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_0

    .line 28
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzh:Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    .line 29
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 30
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

    .line 22
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzh:Lcom/google/android/gms/internal/measurement/zzbv$zzc;

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

    .line 21
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzh:Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 18
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbw;)V

    return-object p0

    .line 17
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzbv$zzc;-><init>()V

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

    .line 4
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzc:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzbv$zzf;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzbv$zzf;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbv$zzf;->zzi()Lcom/google/android/gms/internal/measurement/zzbv$zzf;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzc()Z
    .locals 0

    .line 6
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzc:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzbv$zzd;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zze:Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzk()Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zze()Z
    .locals 0

    .line 8
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzc:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzf()Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzf:Z

    return p0
.end method

.method public final zzg()Z
    .locals 0

    .line 10
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzc:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzc;->zzg:Ljava/lang/String;

    return-object p0
.end method
