.class public final Lcom/google/android/gms/internal/measurement/zzhy$zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzhy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zza:I = 0x1

.field public static final enum zzb:I = 0x2

.field public static final enum zzc:I = 0x3

.field public static final enum zzd:I = 0x4

.field public static final enum zze:I = 0x5

.field public static final enum zzf:I = 0x6

.field public static final enum zzg:I = 0x7

.field private static final synthetic zzh:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 9
    sget v1, Lcom/google/android/gms/internal/measurement/zzhy$zze;->zza:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/measurement/zzhy$zze;->zzb:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/measurement/zzhy$zze;->zzc:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/measurement/zzhy$zze;->zzd:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/measurement/zzhy$zze;->zze:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/measurement/zzhy$zze;->zzf:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/measurement/zzhy$zze;->zzg:I

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhy$zze;->zzh:[I

    return-void
.end method

.method public static zza()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhy$zze;->zzh:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
