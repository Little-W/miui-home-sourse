.class public final Lcom/google/android/gms/internal/measurement/zzcd$zzf;
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
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzf;",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

.field private static volatile zze:Lcom/google/android/gms/internal/measurement/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjs<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lcom/google/android/gms/internal/measurement/zzig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzig<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zzg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;-><init>()V

    .line 37
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    .line 38
    const-class v1, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzf;Lcom/google/android/gms/internal/measurement/zzcd$zzg;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Lcom/google/android/gms/internal/measurement/zzig;)Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbm()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzf;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    return-object v0
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    return-object p0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcf;->zza:[I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 33
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    .line 31
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zze:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_1

    .line 24
    const-class p1, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    monitor-enter p1

    .line 25
    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zze:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_0

    .line 27
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    .line 28
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zze:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 29
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

    .line 21
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    return-object p0

    :pswitch_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string/jumbo p3, "zzc"

    aput-object p3, p0, p1

    .line 18
    const-class p1, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    aput-object p1, p0, p2

    .line 20
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcf;)V

    return-object p0

    .line 16
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;-><init>()V

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

.method public final zza()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zzg;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    return-object p0
.end method
