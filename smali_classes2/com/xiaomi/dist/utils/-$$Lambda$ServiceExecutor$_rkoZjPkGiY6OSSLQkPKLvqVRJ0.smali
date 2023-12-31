.class public final synthetic Lcom/xiaomi/dist/utils/-$$Lambda$ServiceExecutor$_rkoZjPkGiY6OSSLQkPKLvqVRJ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/utils/ServiceExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/utils/ServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/-$$Lambda$ServiceExecutor$_rkoZjPkGiY6OSSLQkPKLvqVRJ0;->f$0:Lcom/xiaomi/dist/utils/ServiceExecutor;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/utils/-$$Lambda$ServiceExecutor$_rkoZjPkGiY6OSSLQkPKLvqVRJ0;->f$0:Lcom/xiaomi/dist/utils/ServiceExecutor;

    invoke-static {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->lambda$_rkoZjPkGiY6OSSLQkPKLvqVRJ0(Lcom/xiaomi/dist/utils/ServiceExecutor;)V

    return-void
.end method
