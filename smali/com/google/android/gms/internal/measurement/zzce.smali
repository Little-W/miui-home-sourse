.class public final enum Lcom/google/android/gms/internal/measurement/zzce;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzid;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzce;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzid;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/measurement/zzce;

.field private static final enum zzb:Lcom/google/android/gms/internal/measurement/zzce;

.field private static final enum zzc:Lcom/google/android/gms/internal/measurement/zzce;

.field private static final enum zzd:Lcom/google/android/gms/internal/measurement/zzce;

.field private static final enum zze:Lcom/google/android/gms/internal/measurement/zzce;

.field private static final enum zzf:Lcom/google/android/gms/internal/measurement/zzce;

.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzic<",
            "Lcom/google/android/gms/internal/measurement/zzce;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzi:[Lcom/google/android/gms/internal/measurement/zzce;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzce;

    const-string v1, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zza:Lcom/google/android/gms/internal/measurement/zzce;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzce;

    const-string v1, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_RESTRICTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zzb:Lcom/google/android/gms/internal/measurement/zzce;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzce;

    const-string v1, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_DENIED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zzc:Lcom/google/android/gms/internal/measurement/zzce;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzce;

    const-string v1, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_AUTHORIZED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zzd:Lcom/google/android/gms/internal/measurement/zzce;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzce;

    const-string v1, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_DETERMINED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zze:Lcom/google/android/gms/internal/measurement/zzce;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzce;

    const-string v1, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_CONFIGURED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zzf:Lcom/google/android/gms/internal/measurement/zzce;

    const/4 v0, 0x6

    .line 31
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzce;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzce;->zza:Lcom/google/android/gms/internal/measurement/zzce;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzce;->zzb:Lcom/google/android/gms/internal/measurement/zzce;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzce;->zzc:Lcom/google/android/gms/internal/measurement/zzce;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzce;->zzd:Lcom/google/android/gms/internal/measurement/zzce;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzce;->zze:Lcom/google/android/gms/internal/measurement/zzce;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzce;->zzf:Lcom/google/android/gms/internal/measurement/zzce;

    aput-object v1, v0, v7

    .line 32
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zzi:[Lcom/google/android/gms/internal/measurement/zzce;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzch;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzch;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zzg:Lcom/google/android/gms/internal/measurement/zzic;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzce;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzce;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zzi:[Lcom/google/android/gms/internal/measurement/zzce;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzce;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzce;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/measurement/zzce;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzce;->zzf:Lcom/google/android/gms/internal/measurement/zzce;

    return-object p0

    .line 8
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzce;->zze:Lcom/google/android/gms/internal/measurement/zzce;

    return-object p0

    .line 7
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzce;->zzd:Lcom/google/android/gms/internal/measurement/zzce;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzce;->zzc:Lcom/google/android/gms/internal/measurement/zzce;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzce;->zzb:Lcom/google/android/gms/internal/measurement/zzce;

    return-object p0

    .line 4
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzce;->zza:Lcom/google/android/gms/internal/measurement/zzce;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzif;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Lcom/google/android/gms/internal/measurement/zzif;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzce;->zzh:I

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzce;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzce;->zzh:I

    return v0
.end method
