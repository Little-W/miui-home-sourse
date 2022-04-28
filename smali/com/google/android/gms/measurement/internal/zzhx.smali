.class final Lcom/google/android/gms/measurement/internal/zzhx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzac;

.field private final synthetic zzb:J

.field private final synthetic zzc:I

.field private final synthetic zzd:J

.field private final synthetic zze:Z

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzhb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhb;Lcom/google/android/gms/measurement/internal/zzac;JIJZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzf:Lcom/google/android/gms/measurement/internal/zzhb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzb:J

    iput p5, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzc:I

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzd:J

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zze:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzf:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzac;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzf:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzb:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(JZ)V

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzf:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    iget v6, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzc:I

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzd:J

    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zze:Z

    const/4 v9, 0x1

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzhb;Lcom/google/android/gms/measurement/internal/zzac;IJZZ)V

    return-void
.end method
