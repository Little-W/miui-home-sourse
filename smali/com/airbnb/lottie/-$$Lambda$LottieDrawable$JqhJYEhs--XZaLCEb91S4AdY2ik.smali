.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$JqhJYEhs--XZaLCEb91S4AdY2ik;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field private final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$JqhJYEhs--XZaLCEb91S4AdY2ik;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$JqhJYEhs--XZaLCEb91S4AdY2ik;->f$1:I

    iput p3, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$JqhJYEhs--XZaLCEb91S4AdY2ik;->f$2:I

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$JqhJYEhs--XZaLCEb91S4AdY2ik;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$JqhJYEhs--XZaLCEb91S4AdY2ik;->f$1:I

    iget p0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$JqhJYEhs--XZaLCEb91S4AdY2ik;->f$2:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinAndMaxFrame$10$LottieDrawable(IILcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
