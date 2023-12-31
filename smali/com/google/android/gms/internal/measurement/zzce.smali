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

    const/4 v1, 0x0

    const-string v2, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zza:Lcom/google/android/gms/internal/measurement/zzce;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzce;

    const/4 v2, 0x1

    const-string v3, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_RESTRICTED"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zzb:Lcom/google/android/gms/internal/measurement/zzce;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzce;

    const/4 v3, 0x2

    const-string v4, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_DENIED"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zzc:Lcom/google/android/gms/internal/measurement/zzce;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzce;

    const/4 v4, 0x3

    const-string v5, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_AUTHORIZED"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zzd:Lcom/google/android/gms/internal/measurement/zzce;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzce;

    const/4 v5, 0x4

    const-string v6, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_DETERMINED"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zze:Lcom/google/android/gms/internal/measurement/zzce;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzce;

    const/4 v6, 0x5

    const-string v7, "AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_CONFIGURED"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/measurement/zzce;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzce;->zzf:Lcom/google/android/gms/internal/measurement/zzce;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzce;

    .line 31
    sget-object v7, Lcom/google/android/gms/internal/measurement/zzce;->zza:Lcom/google/android/gms/internal/measurement/zzce;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzce;->zzb:Lcom/google/android/gms/internal/measurement/zzce;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzce;->zzc:Lcom/google/android/gms/internal/measurement/zzce;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzce;->zzd:Lcom/google/android/gms/internal/measurement/zzce;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzce;->zze:Lcom/google/android/gms/internal/measurement/zzce;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzce;->zzf:Lcom/google/android/gms/internal/measurement/zzce;

    aput-object v1, v0, v6

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
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzce;->zzf:Lcom/google/android/gms/internal/measurement/zzce;

    return-object p0

    .line 8
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzce;->zze:Lcom/google/android/gms/internal/measurement/zzce;

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzce;->zzd:Lcom/google/android/gms/internal/measurement/zzce;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzce;->zzc:Lcom/google/android/gms/internal/measurement/zzce;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzce;->zzb:Lcom/google/android/gms/internal/measurement/zzce;

    return-object p0

    .line 4
    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzce;->zza:Lcom/google/android/gms/internal/measurement/zzce;

    return-object p0
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

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzce;->zzh:I

    return p0
.end method
