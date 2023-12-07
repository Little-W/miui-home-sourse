.class public final enum Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbv$zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzid;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzic<",
            "Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzj:[Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_MATCH_TYPE"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    const/4 v2, 0x1

    const-string v3, "REGEXP"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    const/4 v3, 0x2

    const-string v4, "BEGINS_WITH"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    const/4 v4, 0x3

    const-string v5, "ENDS_WITH"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    const/4 v5, 0x4

    const-string v6, "PARTIAL"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    const/4 v6, 0x5

    const-string v7, "EXACT"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    const/4 v7, 0x6

    const-string v8, "IN_LIST"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    aput-object v8, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzj:[Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzic;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzi:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzj:[Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
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

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zza:Lcom/google/android/gms/internal/measurement/zzif;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->name()Ljava/lang/String;

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

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbv$zzf$zzb;->zzi:I

    return p0
.end method
