.class final Lcom/google/android/gms/measurement/internal/zzhz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzac;

.field private final synthetic zzb:I

.field private final synthetic zzc:J

.field private final synthetic zzd:Z

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzhb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhb;Lcom/google/android/gms/measurement/internal/zzac;IJZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhz;->zze:Lcom/google/android/gms/measurement/internal/zzhb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzhz;->zzb:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzhz;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzhz;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhz;->zze:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzac;)V

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhz;->zze:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/zzhz;->zzb:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzhz;->zzc:J

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/zzhz;->zzd:Z

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzhb;Lcom/google/android/gms/measurement/internal/zzac;IJZZ)V

    return-void
.end method
