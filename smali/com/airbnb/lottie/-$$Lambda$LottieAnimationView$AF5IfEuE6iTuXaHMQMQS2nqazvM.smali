.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$AF5IfEuE6iTuXaHMQMQS2nqazvM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/airbnb/lottie/LottieAnimationView;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$AF5IfEuE6iTuXaHMQMQS2nqazvM;->f$0:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$AF5IfEuE6iTuXaHMQMQS2nqazvM;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$AF5IfEuE6iTuXaHMQMQS2nqazvM;->f$0:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$AF5IfEuE6iTuXaHMQMQS2nqazvM;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->lambda$fromAssets$2$LottieAnimationView(Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method
