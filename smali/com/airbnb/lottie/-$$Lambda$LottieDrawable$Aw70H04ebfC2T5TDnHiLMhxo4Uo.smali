.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$Aw70H04ebfC2T5TDnHiLMhxo4Uo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field private final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$Aw70H04ebfC2T5TDnHiLMhxo4Uo;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$Aw70H04ebfC2T5TDnHiLMhxo4Uo;->f$1:F

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$Aw70H04ebfC2T5TDnHiLMhxo4Uo;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget p0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$Aw70H04ebfC2T5TDnHiLMhxo4Uo;->f$1:F

    invoke-virtual {v0, p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinProgress$3$LottieDrawable(FLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
