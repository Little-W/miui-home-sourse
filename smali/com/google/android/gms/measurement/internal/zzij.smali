.class public final Lcom/google/android/gms/measurement/internal/zzij;
.super Ljava/lang/Object;


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:J

.field zzd:Z

.field public final zze:Z

.field public final zzf:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzij;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzij;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzc:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzd:Z

    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzij;->zze:Z

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzf:J

    return-void
.end method
