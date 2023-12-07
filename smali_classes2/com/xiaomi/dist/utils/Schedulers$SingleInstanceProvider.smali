.class Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/dist/utils/Schedulers$ISchedulerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/utils/Schedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstanceProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaomi/dist/utils/Schedulers$ISchedulerProvider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile inst:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;->mSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public provide()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;->inst:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;->inst:Ljava/lang/Object;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;->inst:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;->mSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;->inst:Ljava/lang/Object;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;->inst:Ljava/lang/Object;

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
