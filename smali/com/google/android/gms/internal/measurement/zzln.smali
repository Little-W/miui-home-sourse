.class public final enum Lcom/google/android/gms/internal/measurement/zzln;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzln;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzln;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzln;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzln;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzln;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzln;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzln;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzln;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zzln;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zzln;

.field private static final synthetic zzk:[Lcom/google/android/gms/internal/measurement/zzln;


# instance fields
.field private final zzj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzln;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zza:Lcom/google/android/gms/internal/measurement/zzln;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzln;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "LONG"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zzb:Lcom/google/android/gms/internal/measurement/zzln;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzln;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x2

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v4, v2}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zzc:Lcom/google/android/gms/internal/measurement/zzln;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzln;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v5, 0x3

    const-string v6, "DOUBLE"

    invoke-direct {v0, v6, v5, v2}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzln;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x4

    const-string v7, "BOOLEAN"

    invoke-direct {v0, v7, v6, v2}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zze:Lcom/google/android/gms/internal/measurement/zzln;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzln;

    const/4 v2, 0x5

    const-string v7, "STRING"

    const-string v8, ""

    invoke-direct {v0, v7, v2, v8}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zzf:Lcom/google/android/gms/internal/measurement/zzln;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzln;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzgp;

    const/4 v8, 0x6

    const-string v9, "BYTE_STRING"

    invoke-direct {v0, v9, v8, v7}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zzg:Lcom/google/android/gms/internal/measurement/zzln;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzln;

    const/4 v7, 0x0

    const/4 v9, 0x7

    const-string v10, "ENUM"

    invoke-direct {v0, v10, v9, v7}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zzh:Lcom/google/android/gms/internal/measurement/zzln;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzln;

    const/16 v10, 0x8

    const-string v11, "MESSAGE"

    invoke-direct {v0, v11, v10, v7}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zzi:Lcom/google/android/gms/internal/measurement/zzln;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzln;

    .line 14
    sget-object v7, Lcom/google/android/gms/internal/measurement/zzln;->zza:Lcom/google/android/gms/internal/measurement/zzln;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzln;->zzb:Lcom/google/android/gms/internal/measurement/zzln;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzln;->zzc:Lcom/google/android/gms/internal/measurement/zzln;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzln;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzln;->zze:Lcom/google/android/gms/internal/measurement/zzln;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzln;->zzf:Lcom/google/android/gms/internal/measurement/zzln;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzln;->zzg:Lcom/google/android/gms/internal/measurement/zzln;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzln;->zzh:Lcom/google/android/gms/internal/measurement/zzln;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzln;->zzi:Lcom/google/android/gms/internal/measurement/zzln;

    aput-object v1, v0, v10

    .line 15
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zzk:[Lcom/google/android/gms/internal/measurement/zzln;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzj:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzln;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zzk:[Lcom/google/android/gms/internal/measurement/zzln;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzln;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzln;

    return-object v0
.end method
