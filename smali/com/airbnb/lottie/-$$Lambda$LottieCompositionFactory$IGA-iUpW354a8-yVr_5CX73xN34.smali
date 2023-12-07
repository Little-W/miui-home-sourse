.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$IGA-iUpW354a8-yVr_5CX73xN34;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/airbnb/lottie/LottieComposition;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$IGA-iUpW354a8-yVr_5CX73xN34;->f$0:Lcom/airbnb/lottie/LottieComposition;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$IGA-iUpW354a8-yVr_5CX73xN34;->f$0:Lcom/airbnb/lottie/LottieComposition;

    invoke-static {p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$cache$8(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method
