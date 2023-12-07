.class final Lcom/google/android/gms/internal/measurement/zzev;
.super Lcom/google/android/gms/internal/measurement/zzei;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzei<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private zzb:I

.field private final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzem;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzei;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzem;->zzb:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:I

    return-void
.end method

.method private final zza()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzem;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzem;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzem;->zzb:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzem;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzem;->zzb(Lcom/google/android/gms/internal/measurement/zzem;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzem;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzev;->zza()V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzem;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzem;->zzc:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzem;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzev;->zza()V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzem;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzem;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzem;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzem;->zzc:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzem;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzem;->zzc:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzb:I

    aput-object p1, v1, p0

    return-object v0
.end method
