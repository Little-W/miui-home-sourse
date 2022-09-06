.class public final Lcom/google/android/gms/internal/measurement/zzck$zzc;
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
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzck$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzck$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzck$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzck$zzc;

.field private static volatile zzg:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzck$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/measurement/zzig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzig<",
            "Lcom/google/android/gms/internal/measurement/zzck$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/measurement/zzck$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzck$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzck$zzc;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzck$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzck$zzc;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/measurement/zzck$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzck$zzc;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzck$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzig;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzck$zzc;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzck$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzck$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcl;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzck$zzc;->zzg:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/measurement/zzck$zzc;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzck$zzc;->zzg:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzck$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzck$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzck$zzc;->zzg:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 18
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzck$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzck$zzc;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzc"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-class p3, Lcom/google/android/gms/internal/measurement/zzck$zzd;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1009\u0000"

    .line 9
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzck$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzck$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzck$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzck$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzck$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcl;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzck$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzck$zzc;-><init>()V

    return-object p1

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
