.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$wpcBu7BRteoLY2pETjd3SW2MYwU;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$wpcBu7BRteoLY2pETjd3SW2MYwU;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$wpcBu7BRteoLY2pETjd3SW2MYwU;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$wpcBu7BRteoLY2pETjd3SW2MYwU;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$wpcBu7BRteoLY2pETjd3SW2MYwU;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$cache$10(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Throwable;)V

    return-void
.end method
