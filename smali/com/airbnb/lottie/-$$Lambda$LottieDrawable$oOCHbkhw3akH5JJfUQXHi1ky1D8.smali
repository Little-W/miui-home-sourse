.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$oOCHbkhw3akH5JJfUQXHi1ky1D8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field private final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$oOCHbkhw3akH5JJfUQXHi1ky1D8;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$oOCHbkhw3akH5JJfUQXHi1ky1D8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$oOCHbkhw3akH5JJfUQXHi1ky1D8;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget p0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$oOCHbkhw3akH5JJfUQXHi1ky1D8;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMaxFrame$4$LottieDrawable(ILcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
