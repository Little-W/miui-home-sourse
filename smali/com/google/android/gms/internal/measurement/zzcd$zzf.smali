.class public final Lcom/google/android/gms/internal/measurement/zzcd$zzf;
.super Lcom/google/android/gms/internal/measurement/zzhy;

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

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzbs()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzf;Lcom/google/android/gms/internal/measurement/zzcd$zzg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Lcom/google/android/gms/internal/measurement/zzig;)Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbm()Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    return-object v0
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    return-object p0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcf;->zza:[I

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zze:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zze:Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzhy$zza;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhy;)V

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zze:Lcom/google/android/gms/internal/measurement/zzjs;

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    return-object p0

    :pswitch_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string/jumbo p3, "zzc"

    aput-object p3, p0, p1

    const-class p1, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    aput-object p1, p0, p2

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzd:Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcf;)V

    return-object p0

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

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzc:Lcom/google/android/gms/internal/measurement/zzig;

    return-object p0
.end method
