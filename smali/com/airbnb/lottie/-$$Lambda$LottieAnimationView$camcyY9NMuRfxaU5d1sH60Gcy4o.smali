.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$camcyY9NMuRfxaU5d1sH60Gcy4o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/airbnb/lottie/LottieAnimationView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$camcyY9NMuRfxaU5d1sH60Gcy4o;->f$0:Lcom/airbnb/lottie/LottieAnimationView;

    iput p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$camcyY9NMuRfxaU5d1sH60Gcy4o;->f$1:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$camcyY9NMuRfxaU5d1sH60Gcy4o;->f$0:Lcom/airbnb/lottie/LottieAnimationView;

    iget p0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$camcyY9NMuRfxaU5d1sH60Gcy4o;->f$1:I

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->lambda$fromRawRes$1$LottieAnimationView(I)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method
