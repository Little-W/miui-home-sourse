.class public final Lcom/google/android/gms/internal/measurement/zzck$zza;
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
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzck$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzck$zza;",
        "Lcom/google/android/gms/internal/measurement/zzck$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzck$zza;

.field private static volatile zze:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzck$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lcom/google/android/gms/internal/measurement/zzig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzig<",
            "Lcom/google/android/gms/internal/measurement/zzck$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzck$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzck$zza;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzck$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzck$zza;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/measurement/zzck$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzck$zza;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzck$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzck$zza;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzck$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzck$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcl;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 22
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 20
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzck$zza;->zze:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_1

    .line 13
    const-class p1, Lcom/google/android/gms/internal/measurement/zzck$zza;

    monitor-enter p1

    .line 14
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzck$zza;->zze:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_0

    .line 16
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzck$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzck$zza;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    .line 17
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzck$zza;->zze:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 18
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

    .line 10
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzck$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzck$zza;

    return-object p0

    :pswitch_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string/jumbo p3, "zzc"

    aput-object p3, p0, p1

    .line 7
    const-class p1, Lcom/google/android/gms/internal/measurement/zzck$zzb;

    aput-object p1, p0, p2

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzck$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzck$zza;

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzck$zza;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzck$zza$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzck$zza$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcl;)V

    return-object p0

    .line 5
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzck$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzck$zza;-><init>()V

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
