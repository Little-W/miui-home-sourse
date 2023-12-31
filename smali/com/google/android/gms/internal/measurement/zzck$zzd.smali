.class public final Lcom/google/android/gms/internal/measurement/zzck$zzd;
.super Lcom/google/android/gms/internal/measurement/zzhy;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzck$zzd$zzb;,
        Lcom/google/android/gms/internal/measurement/zzck$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzck$zzd;",
        "Lcom/google/android/gms/internal/measurement/zzck$zzd$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzk:Lcom/google/android/gms/internal/measurement/zzck$zzd;

.field private static volatile zzl:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzck$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Z

.field private zzg:J

.field private zzh:D

.field private zzi:Lcom/google/android/gms/internal/measurement/zzig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzig<",
            "Lcom/google/android/gms/internal/measurement/zzck$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzck$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzck$zzd;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzck$zzd;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/measurement/zzck$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zze:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzig;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzck$zzd;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzck$zzd;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    const-class p0, Lcom/google/android/gms/internal/measurement/zzck$zzd;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcl;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zzl:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p1, :cond_1

    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zzl:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzck$zzd;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zzl:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzck$zzd;

    return-object p0

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzc"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzck$zzd$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string/jumbo p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string/jumbo p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string/jumbo p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    aput-object p0, p1, p2

    const/16 p0, 0x9

    const-string/jumbo p2, "zzj"

    aput-object p2, p1, p0

    .line 12
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzck$zzd;

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u1002\u0003\u0005\u1000\u0004\u0006\u001b\u0007\u1008\u0005"

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzck$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzck$zzd$zzb;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzck$zzd$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzcl;)V

    return-object p0

    .line 7
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzck$zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzck$zzd;-><init>()V

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
