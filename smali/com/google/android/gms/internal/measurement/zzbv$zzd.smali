.class public final Lcom/google/android/gms/internal/measurement/zzbv$zzd;
.super Lcom/google/android/gms/internal/measurement/zzhy;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbv$zzd$zzb;,
        Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzbv$zzd;",
        "Lcom/google/android/gms/internal/measurement/zzbv$zzd$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzbv$zzd;

.field private static volatile zzj:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzbv$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zzk()Lcom/google/android/gms/internal/measurement/zzbv$zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    return-object v0
.end method

.method static synthetic zzl()Lcom/google/android/gms/internal/measurement/zzbv$zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzbv$zzd;

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzjs;

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzbv$zzd;

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

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p2

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string/jumbo p2, "zze"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string/jumbo p2, "zzf"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string/jumbo p2, "zzg"

    aput-object p2, p0, p1

    const/4 p1, 0x6

    const-string/jumbo p2, "zzh"

    aput-object p2, p0, p1

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zzb;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzbw;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzbv$zzd;-><init>()V

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

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzc:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzd:I

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbv$zzd$zza;

    :cond_0
    return-object p0
.end method

.method public final zzc()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzc:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zze:Z

    return p0
.end method

.method public final zze()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzc:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzc:I

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

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzi()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzc:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzd;->zzh:Ljava/lang/String;

    return-object p0
.end method
