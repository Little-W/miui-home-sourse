.class public final Lcom/google/android/gms/internal/measurement/zzck$zzb;
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
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzck$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzck$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzck$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzck$zzb;

.field private static volatile zzg:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzck$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/measurement/zzig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzig<",
            "Lcom/google/android/gms/internal/measurement/zzck$zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzck$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzck$zzb;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzck$zzb;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/measurement/zzck$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzd:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzig;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzck$zzb;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzck$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcl;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 23
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 21
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_1

    .line 14
    const-class p1, Lcom/google/android/gms/internal/measurement/zzck$zzb;

    monitor-enter p1

    .line 15
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_0

    .line 17
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzck$zzb;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    .line 18
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 19
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

    .line 11
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzck$zzb;

    return-object p0

    :pswitch_4
    const/4 p0, 0x4

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

    .line 8
    const-class p2, Lcom/google/android/gms/internal/measurement/zzck$zzd;

    aput-object p2, p0, p1

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzck$zzb;

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzck$zzb$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzck$zzb$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcl;)V

    return-object p0

    .line 6
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzck$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzck$zzb;-><init>()V

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
