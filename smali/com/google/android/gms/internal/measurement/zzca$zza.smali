.class public final Lcom/google/android/gms/internal/measurement/zzca$zza;
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
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzca$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzca$zza;",
        "Lcom/google/android/gms/internal/measurement/zzca$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzca$zza;

.field private static volatile zzi:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzca$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private zzf:Z

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzca$zza;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzca$zza;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzca$zza;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzca$zza;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzc:I

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/measurement/zzca$zza;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzca$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcc;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 31
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 29
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_1

    .line 22
    const-class p1, Lcom/google/android/gms/internal/measurement/zzca$zza;

    monitor-enter p1

    .line 23
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_0

    .line 25
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    .line 26
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 27
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

    .line 19
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzca$zza;

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

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzca$zza;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1004\u0003"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzca$zza;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzca$zza$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzca$zza$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcc;)V

    return-object p0

    .line 14
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzca$zza;-><init>()V

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

.method public final zza()Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb()Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zze:Z

    return p0
.end method

.method public final zzc()Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzf:Z

    return p0
.end method

.method public final zzd()Z
    .locals 0

    .line 11
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzc:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zze()I
    .locals 0

    .line 12
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzg:I

    return p0
.end method
