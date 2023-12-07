.class public Lcom/google/android/gms/internal/measurement/zzhy$zzb;
.super Lcom/google/android/gms/internal/measurement/zzgi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzhy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzhy<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzhy$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzgi<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/measurement/zzhy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/measurement/zzhy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzhy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzhy;

    sget v0, Lcom/google/android/gms/internal/measurement/zzhy$zze;->zzd:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhy;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzhy;Lcom/google/android/gms/internal/measurement/zzhy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zza()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzkb;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzhb;Lcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhy$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzhb;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzu()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zza()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(Lcom/google/android/gms/internal/measurement/zzhb;)Lcom/google/android/gms/internal/measurement/zzhg;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjy;Lcom/google/android/gms/internal/measurement/zzhl;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_1
    throw p0
.end method

.method private final zzb([BIILcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhy$zzb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzij;
        }
    .end annotation

    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzu()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zza()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    const/4 v4, 0x0

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzgo;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/measurement/zzgo;-><init>(Lcom/google/android/gms/internal/measurement/zzhl;)V

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzkb;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzgo;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzij; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from byte array should not throw IOException."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    throw p0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzhy;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhy;

    sget v1, Lcom/google/android/gms/internal/measurement/zzhy$zze;->zze:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzx()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzhy;)Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    return-object v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/measurement/zzgg;)Lcom/google/android/gms/internal/measurement/zzgi;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzhy;)Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzhb;Lcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzgi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb(Lcom/google/android/gms/internal/measurement/zzhb;Lcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zza([BII)Lcom/google/android/gms/internal/measurement/zzgi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzij;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhl;->zza()Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb([BIILcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zza([BIILcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzgi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzij;
        }
    .end annotation

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb([BIILcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzhy;)Lcom/google/android/gms/internal/measurement/zzhy$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzu()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzhy;Lcom/google/android/gms/internal/measurement/zzhy;)V

    return-object p0
.end method

.method public final zzbn()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Lcom/google/android/gms/internal/measurement/zzhy;Z)Z

    move-result p0

    return p0
.end method

.method public final synthetic zzbv()Lcom/google/android/gms/internal/measurement/zzjj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzhy;

    return-object p0
.end method

.method public final synthetic zzt()Lcom/google/android/gms/internal/measurement/zzgi;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgi;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;

    return-object p0
.end method

.method protected zzu()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    sget v1, Lcom/google/android/gms/internal/measurement/zzhy$zze;->zzd:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzhy;Lcom/google/android/gms/internal/measurement/zzhy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    return-void
.end method

.method public zzv()Lcom/google/android/gms/internal/measurement/zzhy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zza()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkb;->zzc(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzb:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    return-object p0
.end method

.method public final zzw()Lcom/google/android/gms/internal/measurement/zzhy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzx()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbn()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkq;-><init>(Lcom/google/android/gms/internal/measurement/zzjj;)V

    throw v0
.end method

.method public synthetic zzx()Lcom/google/android/gms/internal/measurement/zzjj;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzv()Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object p0

    return-object p0
.end method

.method public synthetic zzy()Lcom/google/android/gms/internal/measurement/zzjj;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhy$zzb;->zzw()Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object p0

    return-object p0
.end method
