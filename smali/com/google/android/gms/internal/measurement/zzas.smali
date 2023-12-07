.class final Lcom/google/android/gms/internal/measurement/zzas;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private zza:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    const-string p1, "ScionFrontendApi"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p0
.end method
